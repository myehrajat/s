<?php
function sst_whole_term_text_sabt_rooz($start,$end,$gharardad_gheymate,$status,$gharardad_mostajer_id,$gharardad_mojer_id,$khodro_id,$save_id){
	
	$counter = 1;
	if($counter==1){
		$d = sst_get_day_diff_min_one($start,$end);
		if($status!='اجاره جاری'){
			echo ($counter).'-'.$status.'-'. $d.'روز*'.$gharardad_gheymate.'='.ceil($d*$gharardad_gheymate).'تومان<br>';
		}
		//dbg($gharardad_mostajer_id);
		//dbg($gharardad_mojer_id);
		if($status=='اجاره جاری'){
			return $jari_array = array(sst_jari_rooz(
				$gharardad_mostajer_id,
				$gharardad_mojer_id,
				sst_remove_time($end),
				ceil($gharardad_gheymate*$d),
				$khodro_id,
				($counter).'-'.$status.'-'. $d.'روز*'.$gharardad_gheymate,
				$save_id));
		}elseif($status=='اجاره'){
			return ($counter).'-'.$status.'-'. $d.'روز*'.$gharardad_gheymate;
		}
	}else{
		//nothing to do
	}
}

function sst_whole_term_rooz($start,$end,$gharardad_gheymate){
	$counter = 1;
	if($counter==1){
		$d = sst_get_day_diff_min_one($start,$end);
		return ceil($d*$gharardad_gheymate);
	}else{
		//nothing to do
	}
}
