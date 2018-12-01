<?php
//date edit: 1396/10/03
function sst_is_leap_year( $year ) {
	$a = 0.025;
	$b = 266;
	if ( $year > 0 ) {
		$leapDays0 = ( ( $year + 38 ) % 2820 ) * 0.24219 + $a; # 0.24219 ~ extra days of one year
		$leapDays1 = ( ( $year + 39 ) % 2820 ) * 0.24219 + $a; # 38 days is the difference of epoch to 2820-year cycle
	} elseif ( $year < 0 ) {
		$leapDays0 = ( ( $year + 39 ) % 2820 ) * 0.24219 + $a;
		$leapDays1 = ( ( $year + 40 ) % 2820 ) * 0.24219 + $a;
	} else {
		return False;
	}
	$frac0 = ( int )( ( $leapDays0 - ( int )$leapDays0 ) * 1000 );
	$frac1 = ( int )( ( $leapDays1 - ( int )$leapDays1 ) * 1000 );

	if ( $frac0 <= $b and $frac1 > $b ) {
		return True;
	} else {
		return False;
	}
}

function sst_tr_num( $str, $mod = 'en', $mf = '٫' ) {
	$num_a = array( '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.' );
	$key_a = array( '۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹', $mf );
	return ( $mod == 'fa' ) ? str_replace( $num_a, $key_a, $str ) : str_replace( $key_a, $num_a, $str );
}

function sst_gregorian_to_jalali( $gy, $gm, $gd, $mod = '' ) {
	//$gy=sst_tr_num($gy); $gm=sst_tr_num($gm); $gd=sst_tr_num($gd);/* <= Extra :اين سطر ، جزء تابع اصلي نيست */
	$g_d_m = array( 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334 );
	$jy = ( $gy <= 1600 ) ? 0 : 979;
	$gy -= ( $gy <= 1600 ) ? 621 : 1600;
	$gy2 = ( $gm > 2 ) ? ( $gy + 1 ) : $gy;
	$days = ( 365 * $gy ) + ( ( int )( ( $gy2 + 3 ) / 4 ) ) - ( ( int )( ( $gy2 + 99 ) / 100 ) ) +
		( ( int )( ( $gy2 + 399 ) / 400 ) ) - 80 + $gd + $g_d_m[ $gm - 1 ];
	$jy += 33 * ( ( int )( $days / 12053 ) );
	$days %= 12053;
	$jy += 4 * ( ( int )( $days / 1461 ) );
	$days %= 1461;
	$jy += ( int )( ( $days - 1 ) / 365 );
	if ( $days > 365 )$days = ( $days - 1 ) % 365;
	$jm = ( $days < 186 ) ? 1 + ( int )( $days / 31 ) : 7 + ( int )( ( $days - 186 ) / 30 );
	$jd = 1 + ( ( $days < 186 ) ? ( $days % 31 ) : ( ( $days - 186 ) % 30 ) );
	if ( strlen( $jm ) == 1 ) {
		$jm = '0' . $jm;
	}
	if ( strlen( $jd ) == 1 ) {
		$jd = '0' . $jd;
	}
	return ( $mod == '' ) ? array( $jy, $jm, $jd ) : $jy . $mod . $jm . $mod . $jd;
}

function sst_jalali_to_gregorian( $jy, $jm, $jd, $mod = '' ) {
	( int )$jy = ( int )sst_tr_num( $jy );
	( int )$jm = ( int )sst_tr_num( $jm );
	( int )$jd = ( int )sst_tr_num( $jd ); /* <= Extra :اين سطر ، جزء تابع اصلي نيست */
	$gy = ( ( int )$jy <= 979 ) ? 621 : 1600;



	$jy -= ( int )( ( int )$jy <= 979 ) ? 0 : 979;


	$days = ( 365 * ( int )$jy ) + ( ( ( int )( ( int )$jy / 33 ) ) * 8 ) + ( ( int )( ( ( ( int )$jy % 33 ) + 3 ) / 4 ) ) + 78 + ( int )$jd + ( ( ( int )$jm < 7 ) ? ( ( int )$jm - 1 ) * 31 : ( ( ( int )$jm - 7 ) * 30 ) + 186 );


	$gy += 400 * ( ( int )( $days / 146097 ) );
	$days %= 146097;
	if ( $days > 36524 ) {
		$gy += 100 * ( ( int )( --$days / 36524 ) );
		$days %= 36524;
		if ( $days >= 365 )$days++;
	}
	$gy += 4 * ( ( int )( ( $days ) / 1461 ) );
	$days %= 1461;
	$gy += ( int )( ( $days - 1 ) / 365 );
	if ( $days > 365 )$days = ( $days - 1 ) % 365;
	$gd = $days + 1;
	foreach ( array( 0, 31, ( ( $gy % 4 == 0 and $gy % 100 != 0 )or( $gy % 400 == 0 ) ) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ) as $gm => $v ) {
		if ( $gd <= $v ) break;
		$gd -= $v;
	}
	return ( $mod == '' ) ? array( $gy, $gm, $gd ) : $gy . $mod . $gm . $mod . $gd;
}

function sst_simple_gregorian_to_jalali( $date_time, $date_joiner = '/' ) {
	$date_time = explode( ' ', $date_time );
	$date = explode( '/', $date_time[ 0 ] );
	//dbg($date);

	$jdate = sst_gregorian_to_jalali( $date[ 0 ], $date[ 1 ], $date[ 2 ] );
	//dbg($jdate);
	if ( $date_time[ 1 ] ) {
		return implode( $date_joiner, $jdate ) . ' ' . $date_time[ 1 ];
	} else {
		return implode( $date_joiner, $jdate );
	}
}

function sst_simple_jalali_to_gregorian( $date_time, $date_joiner = '/' ) {
	$date_time = explode( ' ', $date_time );
	$date = explode( '/', $date_time[ 0 ] );
	//dbg($date);

	$gdate = sst_jalali_to_gregorian( $date[ 0 ], $date[ 1 ], $date[ 2 ] );
	//dbg($jdate);
	if ( $date_time[ 1 ] ) {
		return implode( $date_joiner, $gdate ) . ' ' . $date_time[ 1 ];
	} else {
		return implode( $date_joiner, $gdate );
	}
}


function sst_is_first_season_for_time_change($month,$day){
if(
		(//for start check
			(( int )$month <= 5 and( int )$month >= 2 )or // may be month btwn 2 - 5 months
			(( int )$month == 6 and ( int )$day<>31) or //must NOT be NOT be 06/31 but other 06 m days ar ok
			(( int )$month == 1 and (( int )$day<>1 and ( int )$day<>2 ))) //must NOT be 01/01 or 01/02 but other 01 m is ok
		){
		return true;
	}else{
		return false;
	}
}
//no need to this function and not used
function sst_is_second_season_for_time_change($month,$day){
	return !sst_is_first_season_for_time_change($month,$day);
	/*if(
	(
			($month >=7 and  $month <=12)or // must be month btwn 7 - 12 months
			(( int )$month == 6 and ( int )$day==31) or  //must NOT be only 06/31 but other 06 m days are NOT
			(( int )$month == 1 and (( int )$day==1 or ( int )$day==2 ))//must NOT be only 01/01 or 01/02 but other 01 m days are NOT
		)){
		return true;
	}else{
		return false;
	}*/
}
function sst_date_diff( $start, $end, $return_value_type, $date_only = false ) { //jalali
	//dbg($date_only);
	//dbg($start);
	//dbg($end);
	$start = explode( ' ', $start );
	$start_date = explode( '/', $start[ 0 ] );
	$start_year = $start_date[ 0 ];
	$start_month = $start_date[ 1 ];
	$start_day = $start_date[ 2 ];
	if ( $date_only !== true ) {
		$start_time = explode( ':', $start[ 1 ] );
		$start_hours = $start_time[ 0 ];
		$start_minutes = $start_time[ 1 ];
	}
	$end = explode( ' ', $end );
	$end_date = explode( '/', $end[ 0 ] );
	$end_year = $end_date[ 0 ];
	$end_month = $end_date[ 1 ];
	$end_day = $end_date[ 2 ];

	if ( $date_only !== true ) {
		//dbg(222222222222222222);
		$end_time = explode( ':', $end[ 1 ] );
		$end_hours = $end_time[ 0 ];
		$end_minutes = $end_time[ 1 ];
	}
/************************************************************/
	//note: in spring and fall seasons the time will change in iran so it affect to time calcuation difference for example 1397/06/24 18:00 to 1397/07/01 18:00 return one hour delay
//1397/1/3 AND 1397/06/31
	//this is dalay corrector for fall season
	if ( sst_is_first_season_for_time_change($start_month,$start_day) and !sst_is_first_season_for_time_change($end_month,$end_day)) {
		//dbg( '<h2>fall</h2>' );
		if ( $end_hours > 0 ) {
			//dbg('case1');
			$end_hours = ( int )$end_hours - 1;
		} elseif ( $end_hours == 0 and $start_hours > 0 ) {
			//dbg('case2');
			$start_hours = ( int )$start_hours - 1;
		} elseif ( $end_hours == 0 and $start_hours == 0 ) {
			if ( ( int )$start_day == 1 ) {
				$start_day = 31;
				$start_month = ( int )$start_month - 1;
				$start_hours = '01';
				//dbg( 'case3' );
			} else {
				$start_day = ( int )$start_day - 1;
				$start_hours = '01';
				//dbg( 'case4' );

			}

		}
	}
	if ( !sst_is_first_season_for_time_change($start_month,$start_day) and sst_is_first_season_for_time_change($end_month,$end_day)) {
		//dbg( '<h2>spring</h2>' );
		//increase one houre
		if ( $end_hours < 23 ) { //اگر امکان تغییر زمان ذر عودت وجود دارد بدون نیاز به تغییر تاریخ
			//dbg('case1');
			$end_hours = ( int )$end_hours + 1;
		} elseif ( $end_hours == 23 and $start_hours < 23 ) { //اگر امکان تغییر زمان ذر رفت وجود دارد بدون نیاز به تغییر تاریخ
			//dbg('case2');
			$start_hours = ( int )$start_hours - 1;
		} elseif ( $end_hours == 23 and $start_hours == 23 ) {
			if ( ( int )$end_day == 31 ) {
				$end_day = 1;
				$end_month = ( int )$end_month + 1;
				$end_hours = '00';
				//dbg( 'case3' );
			} else {
				$end_day = ( int )$end_day + 1;
				$end_hours = '00';
				//dbg( 'case4' );

			}

		}		
	}
/************************************************************/
	//echo $start_year . '/' . $start_month . '/' . $start_day . ' ' . $start_hours . ':' . $start_minutes . '<br />';
	//echo $end_year . '/' . $end_month . '/' . $end_day . ' ' . $end_hours . ':' . $end_minutes . '<br />';



	$start_arr_gregorian = sst_jalali_to_gregorian( $start_year, $start_month, $start_day );

	$end_arr_gregorian = sst_jalali_to_gregorian( $end_year, $end_month, $end_day );






	$end_g = $end_arr_gregorian[ 0 ] . '-' . $end_arr_gregorian[ 1 ] . '-' . $end_arr_gregorian[ 2 ];
	if ( $date_only !== true ) {
		$end_g .= ' ' . $end_hours . ':' . $end_minutes;
	}
	$start_g = $start_arr_gregorian[ 0 ] . '-' . $start_arr_gregorian[ 1 ] . '-' . $start_arr_gregorian[ 2 ];
	if ( $date_only !== true ) {
		$start_g .= ' ' . $start_hours . ':' . $start_minutes;
	}
/************************************************************/

	//echo '</pre>';
	//$enddatetime = new DateTime($end_g);
	//$startdatetime = new DateTime($start_g);
	//return $enddatetime->diff($startdatetime);
	/***********************************/
	/***********************************/
	$total_seconds_difference = strtotime( $end_g ) - strtotime( $start_g );
	//this is because it first date time is after the last date time
	if ( $total_seconds_difference < 0 ) {
		$total_seconds_difference = -1 * $total_seconds_difference;
		echo '<div style="color:#FF0000;"><strong>تاریخ اولیه بعد از تاریخ ثانویه می باشد.</strong></div>';
	}
	$total_minutes_difference = $total_seconds_difference / 60;
	$total_hours_difference = $total_minutes_difference / 60;
	$total_days_difference = $total_hours_difference / 24;
	$total_weeks_difference = $total_days_difference / 7;

	switch ( $return_value_type ) {
		case "total_seconds":
			return $total_seconds_difference;
			break;
		case "total_minutes": //means all full minutes
			return $total_minutes_difference;
			break;
		case "total_hours":
			return $total_hours_difference;
			break;
		case "total_days":
			return $total_days_difference;
			break;
		case "total_weeks":
			return $total_weeks_difference;
			break;
		case "remain_minutes":
			$remain_minutes_difference = $total_minutes_difference % 60;
			return $remain_minutes_difference;
			break;
		case "remain_hours":
			$remain_hours_difference = $total_hours_difference % 24;
			return $remain_hours_difference;
			break;
		case "remain_days_base_week":
			$remain_days_difference = $total_days_difference % 7;
			return $remain_days_difference;
			break;
		case "int_minutes":
			$int_minutes_difference = floor( $total_minutes_difference );
			return $int_minutes_difference;
			break;
		case "int_hours":
			$int_hours_difference = floor( $total_hours_difference );
			return $int_minutes_difference;
			break;
		case "int_days":
			$int_days_difference = floor( $total_days_difference );
			return $int_days_difference;
			break;
		case "int_weeks":
			$int_weeks_difference = floor( $total_weeks_difference );
			return $int_weeks_difference;
			break;

	}
/************************************************************/
}
/*function getDatetimeNow() {
    $tz_object = new DateTimeZone('Asia/Tehran');
    //date_default_timezone_set('Brazil/East');

    $datetime = new DateTime();
    $datetime->setTimezone($tz_object);
    return $datetime->format('Y/m/d H:i:s');
}
*/
//echo getDatetimeNow();
function sst_current_jalali( $date_only = false ) {
	date_default_timezone_set( 'Asia/Tehran' );
	if ( $date_only ) {
		$gnow = date( "Y/m/d" );
	} else {
		$gnow = date( "Y/m/d H:i" );
	}
	$now = sst_simple_gregorian_to_jalali( $gnow );
	return $now;
}



function sst_get_day_diff_min_one( $start, $end ) {

	$int_days = sst_date_diff( $start, $end, 'int_days', false );
	//dbg($s);
	//even bug
	//before we use $s->days but time 1397/06/24 to 1397/07/01 calculated 7 which is incorrect
	//now $s->d calculate true
	if ( $int_days >= 1 ) {
		//echo $s->days;
		return $int_days;

	} else {
		return 1;
	}


}





function sst_remove_time( $date_time ) {
	$date_time_arr = explode( ' ', $date_time );
	return $date_time_arr[ 0 ];
}

function sst_jnow( $type = 'date_time' ) { //type:date_time/date/time
	date_default_timezone_set( 'Asia/Tehran' );
	$gnow = date( "Y/m/d H:i" );

	//$gnow = current_time( "Y/m/d H:i" );
	//die;
	//echo 'eeeeeeeeeeee';die;
	$now = sst_simple_gregorian_to_jalali( $gnow );
	//echo 'dddddddd';die;
	$now_date_time = explode( ' ', $now );
	if ( $type == 'date_time' ) {
		$result = $now;
	} elseif ( $type == 'date' ) {
		$result = $now_date_time[ 0 ];
	} elseif ( $type == 'time' ) {
		$result = $now_date_time[ 1 ];
	} else {
		echo 'no correct $type defined for sst_jnow function';
		$result = false;
	}
	return $result;
}

function sst_gnow( $type = 'date_time' ) { //type:date_time/date/time
	date_default_timezone_set( 'Asia/Tehran' );
	$gnow = date( "Y/m/d H:i" );

	//$gnow = current_time( "Y/m/d H:i" );
	//die;
	//echo 'eeeeeeeeeeee';die;
	//$now =sst_simple_gregorian_to_jalali($gnow);
	//echo 'dddddddd';die;
	$now_date_time = explode( ' ', $gnow );
	if ( $type == 'date_time' ) {
		$result = $now;
	} elseif ( $type == 'date' ) {
		$result = $now_date_time[ 0 ];
	} elseif ( $type == 'time' ) {
		$result = $now_date_time[ 1 ];
	} else {
		echo 'no correct $type defined for sst_gnow function';
		$result = false;
	}
	return $result;
}

function sst_step_date( $date_time, $step ) {
	//dbg($date_time);
	$gdate = sst_simple_jalali_to_gregorian( sst_remove_time( $date_time ), '-' );
	//dbg($gdate);
	$gdate_obj = new DateTime( $gdate );
	//dbg($gdate_obj);
	$gdate_obj->add( new DateInterval( 'P' . $step . 'D' ) );
	//dbg($gdate_obj);
	$gdate_steped = $gdate_obj->format( 'Y/m/d' );
	//dbg($gdate_steped);
	$tarikh = sst_simple_gregorian_to_jalali( $gdate_steped );
	//dbg($tarikh);
	return $tarikh;
}

function sst_get_month_jalali( $tarikh ) {
	$d = explode( '/', $tarikh );
	return ( int )$d[ 1 ];
}

function sst_get_year_jalali( $tarikh ) {
	$d = explode( '/', $tarikh );
	return ( int )$d[ 0 ];
}