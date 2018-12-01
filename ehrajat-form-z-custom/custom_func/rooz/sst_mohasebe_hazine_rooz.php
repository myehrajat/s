<?php
function sst_mohasebe_hazine_rooz($start,$end,$gharardad_gheymate,$doreye_zamani){
	//dbg('ssssssssssss');

	if(empty($end)){
		$end =sst_current_jalali();
		$status='اجاره جاری';
	}else{
		$status='اجاره';
	}
	if(empty($start)){
		echo 'اجاره-تاریخ تحویل ندارد جاری یا غیر جاری';
		return NULL;
	}
	switch($doreye_zamani){										
		case '':
			//dbg(44444444);
			$last_mablagh = sst_whole_term_rooz($start,$end,$gharardad_gheymate,$status);
		break;
		case 'md':
			//dbg('sssssssssssss');
			$last_mablagh = sst_month_term_rooz($start,$end,$gharardad_gheymate,$status);
			//dbg($last_mablagh);
		break;
		case 'mm':
			//dbg('aaaaaaaaa');
			$last_mablagh = sst_month_term_mah($start,$end,$gharardad_gheymate,$status);
			//dbg($last_mablagh);
		break;
		default:
			$last_mablagh = sst_long_term_rooz($start,$end,$doreye_zamani,$gharardad_gheymate,$status);
		break;
	}
	//
	//dbg($last_mablagh);
	return $last_mablagh;
	/*
	if(!empty($start) and !empty($end)){
		sst_by_term_rooz($start,$end,$gharardad_gheymate,$doreye_zamani);
	}elseif(empty($end)){
		sst_by_term_rooz($start,sst_current_jalali(),$gharardad_gheymate,$doreye_zamani);
	}elseif(empty($start)){
		//'اجاره-تاریخ تحویل ندارد'; جاری یا غیر جاری
		return NULL;
	}*/
}