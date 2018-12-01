<?php
function sst_get_time_diff_zarib($start,$end){
	//dbg('start:'.$start);
	//dbg('end:'.$end);
	
	$remain_hours=sst_date_diff($start,$end,'remain_hours',false);
	$int_days=sst_date_diff($start,$end,'int_days',false);
	//dbg($s);
	if($int_days>=1){
		if(3>$remain_hours && $remain_hours>0){
			return 0;
		}elseif(6> $remain_hours && $remain_hours >=3){
			return 0.25;
		}elseif(9>$remain_hours && $remain_hours>=6){
			return 0.5;
		}elseif(12>$remain_hours && $remain_hours>=9){
			return 0.75;
		}elseif($remain_hours>=12){
			return 1;
		}
	}else{
		//return 0;
	}
}
