<?php

function sst_month_term_rooz($start,$end,$gharardad_gheymate,$status){
	$d31=31;
	$d30=30;
	$d29=29;
	//dbg($start);
	//dbg($end);
	$all_days = sst_date_diff($start,$end,'int_days',false);
	$calculated_days=0;
	$tarikh = $start;
	//dbg($all_days);
	//dbg($end);
	while($calculated_days<$all_days){
		//dbg($calculated_days);
		$month = sst_get_month_jalali($tarikh);
		$remained_days = $all_days-$calculated_days;
		//echo $month.'<br>';
		if($month<=6 and $remained_days>=31){//31 rooz
			//dbg('31 rooz');
			$calculated_days=$calculated_days+31;
			$tarikh = sst_step_date($tarikh,31);
			if($calculated_days>=$all_days){
				return 31*$gharardad_gheymate;
			}
		}elseif(($month==12 and !sst_is_leap_year(sst_get_year_jalali($tarikh))) and  $remained_days>=29){//برج 12 غیر کبیسه 29 روزه
			//dbg('29 rooz');
			
			$calculated_days=$calculated_days+29;
			$tarikh = sst_step_date($tarikh,29);
			if($calculated_days>=$all_days){
				return 29*$gharardad_gheymate;
			}				

		}elseif((($month>=7 or $month<=11) OR ($month==12 and !sst_is_leap_year(sst_get_year_jalali($tarikh)))) and  $remained_days>=30){//برج 7 تا 11  , برج 12 کبیسه
			//dbg('30 rooz');
			//dbg(($month>=7 or $month<=11));
			//dbg($remained_days>=30);
			$calculated_days=$calculated_days+30;
			$tarikh = sst_step_date($tarikh,30);
			if($calculated_days>=$all_days){
				return 30*$gharardad_gheymate;
			}				
		}else{//روز مانده کمتر از ماه
			
			//dbg($remained_days);
			if(strtolower(sst_get_option( 'mohasebe_doreye_kamel' ) ) == 'yes'){
			//dbg(sst_get_option('mohasebe_doreye_kamel'));
				if($month<=6){//31 rooz
					//31 rooz
					$calculated_days=$calculated_days+31;
					$tarikh = sst_step_date($tarikh,31);
					if($calculated_days>=$all_days){
						return 31*$gharardad_gheymate;
					}				
				}elseif(($month==12 and !sst_is_leap_year(sst_get_year_jalali($tarikh)))){//برج 12 غیر کبیسه 29 روزه
					$calculated_days=$calculated_days+29;
					$tarikh = sst_step_date($tarikh,29);
					if($calculated_days>=$all_days){
						return 29*$gharardad_gheymate;
					}				
				}elseif((($month>=7 or $month<=11) OR ($month==12 and !sst_is_leap_year(sst_get_year_jalali($tarikh))))){//برج 7 تا 11  , برج 12 کبیسه 30روزه
					$calculated_days=$calculated_days+30;
					$tarikh = sst_step_date($tarikh,30);
					if($calculated_days>=$all_days){
						return 30*$gharardad_gheymate;
					}				
				}else{
					//echo 'erorr wrong date';	
				}
			}else{
				//dbg($remained_days);
				$calculated_days=$calculated_days+$remained_days;
				if($calculated_days>=$all_days){
					return $remained_days*$gharardad_gheymate;
				}
			}
		}
	}
}