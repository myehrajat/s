<?php

function sst_month_term_text_sabt_rooz($start,$end,$gharardad_gheymate,$status,$gharardad_mostajer_id,$gharardad_mojer_id,$khodro_id,$save_id){
	$d31=31;
	$d30=30;
	$d29=29;
	
	$all_days = sst_date_diff($start,$end,'int_days',false);
	$calculated_days=0;
	$tarikh = $start;
	$counter = 1;
	while($calculated_days<$all_days){
		$month = sst_get_month_jalali($tarikh);
		$remained_days = $all_days-$calculated_days;
		//echo $month.'<br>';
		if($month<=6 and $remained_days>=31){//31 rooz
			//dbg('31 rooz');
			$calculated_days=$calculated_days+31;
			$tarikh = sst_step_date($tarikh,31);
			if($status=='اجاره جاری'){
				$jari = sst_jari_rooz(
					$gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,
					ceil($gharardad_gheymate*31),
					$khodro_id,
					($counter).'-'.$status.'-ماهیانه روزشمار'.'-31روز'.'*'.$gharardad_gheymate,
					$save_id);
				if($jari!=NULL){
					$jari_array[] = $jari;
				}
			}elseif($status=='اجاره'){
				echo ($counter).'-'.$status.'-ماهیانه روزشمار'.'-31روز='.ceil($gharardad_gheymate*31).'تومان<br>';
				if($calculated_days<$all_days){
					$insert_rooz[] = array($gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,#$tarikh
					ceil($gharardad_gheymate*31),#$mablagh
					$khodro_id,
					($counter).'-'.$status.'-'.'ماهیانه روزشمار'.'-'.'31روز'.'*'.$gharardad_gheymate,#$text
					$status,#$status
					$save_id);
				}else{//this is last output 
					register_shutdown_function ('sst_register_long_term_rooz',$insert_rooz);
					return ($counter).'-'.$status.'-ماهیانه روزشمار'.'-31روز'.'*'.$gharardad_gheymate;
				}
			}
		}elseif(($month==12 and !sst_is_leap_year(sst_get_year_jalali($tarikh))) and  $remained_days>=29){//برج 12 غیر کبیسه 29 روزه
			//dbg('29 rooz');
			$calculated_days=$calculated_days+29;
			$tarikh = sst_step_date($tarikh,29);
			if($status=='اجاره جاری'){
				$jari = sst_jari_rooz(
					$gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,
					ceil($gharardad_gheymate*29),
					$khodro_id,
					($counter).'-'.$status.'-ماهیانه روزشمار'.'-29روز'.'*'.$gharardad_gheymate,
					$save_id);
				if($jari!=NULL){
					$jari_array[] = $jari;
				}
			}elseif($status=='اجاره'){
				echo ($counter).'-'.$status.'-ماهیانه روزشمار'.'-29روز='.ceil($gharardad_gheymate*29).'تومان<br>';
				if($calculated_days<$all_days){
					$insert_rooz[] = array($gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,#$tarikh
					ceil($gharardad_gheymate*29),#$mablagh
					$khodro_id,
					($counter).'-'.$status.'-'.'ماهیانه روزشمار'.'-'.'29روز'.'*'.$gharardad_gheymate,#$text
					$status,#$status
					$save_id);
				}else{//this is last output 
					register_shutdown_function ('sst_register_long_term_rooz',$insert_rooz);
					return ($counter).'-'.$status.'-ماهیانه روزشمار'.'-29روز'.'*'.$gharardad_gheymate;
				}
			}
		}elseif((($month>=7 or $month<=11) OR ($month==12 and !sst_is_leap_year(sst_get_year_jalali($tarikh)))) and  $remained_days>=30){//برج 7 تا 11  , برج 12 کبیسه
			//dbg('30 rooz');

			$calculated_days=$calculated_days+30;
			$tarikh = sst_step_date($tarikh,30);
			if($status=='اجاره جاری'){
				$jari = sst_jari_rooz(
					$gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,
					ceil($gharardad_gheymate*30),
					$khodro_id,
					($counter).'-'.$status.'-ماهیانه روزشمار'.'-30روز'.'*'.$gharardad_gheymate,
					$save_id);
				if($jari!=NULL){
					$jari_array[] = $jari;
				}
			}elseif($status=='اجاره'){
				echo ($counter).'-'.$status.'-ماهیانه روزشمار'.'-30روز='.ceil($gharardad_gheymate*30).'تومان<br>';
				if($calculated_days<$all_days){
					$insert_rooz[] = array($gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,#$tarikh
					ceil($gharardad_gheymate*30),#$mablagh
					$khodro_id,
					($counter).'-'.$status.'-'.'ماهیانه روزشمار'.'-'.'30'.'روز'.'*'.$gharardad_gheymate,#$text
					$status,#$status
					$save_id);
				}else{//this is last output 
					register_shutdown_function ('sst_register_long_term_rooz',$insert_rooz);
					return ($counter).'-'.$status.'-ماهیانه روزشمار'.'-30روز'.'*'.$gharardad_gheymate;
				}
			}
		}else{//روز مانده کمتر از ماه
			//dbg('some rooz');

			//dbg($remained_days);
			if(strtolower(sst_get_option( 'mohasebe_doreye_kamel' ) ) == 'yes'){
				if($month<=6){//31 rooz
					//31 rooz
					$calculated_days=$calculated_days+31;
					$tarikh = sst_step_date($tarikh,31);
					if($status=='اجاره جاری'){
						$jari = sst_jari_rooz(
							$gharardad_mostajer_id,
							$gharardad_mojer_id,
							$tarikh,
							ceil($gharardad_gheymate*31),
							$khodro_id,
							($counter).'-'.$status.'-ماهیانه روزشمار'.'-31روز'.'*'.$gharardad_gheymate,
							$save_id);
						if($jari!=NULL){
							$jari_array[] = $jari;
						}
					}elseif($status=='اجاره'){
						echo ($counter).'-'.$status.'-ماهیانه روزشمار'.'-31روز='.ceil($gharardad_gheymate*31).'تومان<br>';
						if($calculated_days<$all_days){
							$insert_rooz[] = array($gharardad_mostajer_id,
							$gharardad_mojer_id,
							$tarikh,#$tarikh
							ceil($gharardad_gheymate*31),#$mablagh
							$khodro_id,
							($counter).'-'.$status.'-'.'ماهیانه روزشمار'.'-'.'31روز'.'*'.$gharardad_gheymate,#$text
							$status,#$status
							$save_id);
						}else{//this is last output 
							register_shutdown_function ('sst_register_long_term_rooz',$insert_rooz);
							return ($counter).'-'.$status.'-ماهیانه روزشمار'.'-31روز'.'*'.$gharardad_gheymate;
						}
					}
				}elseif(($month==12 and !sst_is_leap_year(sst_get_year_jalali($tarikh)))){//برج 12 غیر کبیسه 29 روزه
					$calculated_days=$calculated_days+29;
					$tarikh = sst_step_date($tarikh,29);
					if($status=='اجاره جاری'){
						$jari = sst_jari_rooz(
							$gharardad_mostajer_id,
							$gharardad_mojer_id,
							$tarikh,
							ceil($gharardad_gheymate*29),
							$khodro_id,
							($counter).'-'.$status.'-ماهیانه روزشمار'.'-29روز'.'*'.$gharardad_gheymate,
							$save_id);
						if($jari!=NULL){
							$jari_array[] = $jari;
						}
					}elseif($status=='اجاره'){
						echo ($counter).'-'.$status.'-ماهیانه روزشمار'.'-29روز='.ceil($gharardad_gheymate*29).'تومان<br>';
						if($calculated_days<$all_days){
							$insert_rooz[] = array($gharardad_mostajer_id,
							$gharardad_mojer_id,
							$tarikh,#$tarikh
							ceil($gharardad_gheymate*29),#$mablagh
							$khodro_id,
							($counter).'-'.$status.'-'.'ماهیانه روزشمار'.'-'.'29روز'.'*'.$gharardad_gheymate,#$text
							$status,#$status
							$save_id);
						}else{//this is last output 
							register_shutdown_function ('sst_register_long_term_rooz',$insert_rooz);
							return ($counter).'-'.$status.'-ماهیانه روزشمار'.'-29روز'.'*'.$gharardad_gheymate;
						}
					}
				}elseif((($month>=7 or $month<=11) OR ($month==12 and !sst_is_leap_year(sst_get_year_jalali($tarikh))))){//برج 7 تا 11  , برج 12 کبیسه 30روزه
					$calculated_days=$calculated_days+30;
					$tarikh = sst_step_date($tarikh,30);
					if($status=='اجاره جاری'){
						$jari = sst_jari_rooz(
							$gharardad_mostajer_id,
							$gharardad_mojer_id,
							$tarikh,
							ceil($gharardad_gheymate*30),
							$khodro_id,
							($counter).'-'.$status.'-ماهیانه روزشمار'.'-30روز'.'*'.$gharardad_gheymate,
							$save_id);
						if($jari!=NULL){
							$jari_array[] = $jari;
						}
					}elseif($status=='اجاره'){
						echo ($counter).'-'.$status.'-ماهیانه روزشمار'.'-30روز='.ceil($gharardad_gheymate*30).'تومان<br>';
						if($calculated_days<$all_days){
							$insert_rooz[] = array($gharardad_mostajer_id,
							$gharardad_mojer_id,
							$tarikh,#$tarikh
							ceil($gharardad_gheymate*30),#$mablagh
							$khodro_id,
							($counter).'-'.$status.'-'.'ماهیانه روزشمار'.'-'.'30'.'روز'.'*'.$gharardad_gheymate,#$text
							$status,#$status
							$save_id);
						}else{//this is last output 
							register_shutdown_function ('sst_register_long_term_rooz',$insert_rooz);
							return ($counter).'-'.$status.'-ماهیانه روزشمار'.'-30روز'.'*'.$gharardad_gheymate;
						}
					}
				}else{
					echo 'erorr wrong date';	
				}
			}else{
				$calculated_days=$calculated_days+$remained_days;
				if($status=='اجاره جاری'){
					$jari = sst_jari_rooz(
						$gharardad_mostajer_id,
						$gharardad_mojer_id,
						sst_remove_time($end),
						ceil($gharardad_gheymate*$remained_days),
						$khodro_id,
						($counter).'-'.$status.'-ماهیانه روزشمار'.'-'.$remained_days.'روز'.'*'.$gharardad_gheymate,
						$save_id);
					if($jari!=NULL){
						$jari_array[] = $jari;
					}
				}elseif($status=='اجاره'){
					echo ($counter).'-'.$status.'-ماهیانه روزشمار'.'-'.$remained_days.'روز='.ceil($gharardad_gheymate*$remained_days).'تومان';
					register_shutdown_function ('sst_register_long_term_rooz',$insert_rooz);
					return ($counter).'-'.$status.'-ماهیانه روزشمار'.'-'.$remained_days.'روز'.'*'.$gharardad_gheymate;
				}
			}
		}
		$counter++;
	}
//dbg($jari_array);
	return $jari_array;
}
