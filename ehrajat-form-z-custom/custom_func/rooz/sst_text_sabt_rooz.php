<?php
//return sst_text_sabt_rooz($vals['gharardad_tarikhe_tahvil'],$vals['gharardad_tarikhe_odat'],$vals['gharardad_gheymate']);
function sst_text_sabt_rooz($start,$end,$gharardad_gheymate,$doreye_zamani,$gharardad_mostajer_id,$gharardad_mojer_id,$khodro_id,$save_id) {
	if(!empty($start) and !empty($end)){
		return sst_by_term_text_sabt_rooz( $start, $end, $gharardad_gheymate, $doreye_zamani,'اجاره', $gharardad_mostajer_id, $gharardad_mojer_id, $khodro_id, $save_id );
	}elseif(empty($end)){
		return sst_by_term_text_sabt_rooz($start,sst_current_jalali(),$gharardad_gheymate,$doreye_zamani,'اجاره جاری',$gharardad_mostajer_id,$gharardad_mojer_id,$khodro_id,$save_id);
	}elseif(empty($start)){
		return 'اجاره-تاریخ تحویل ندارد';
	}elseif(empty($start) and empty($end)){
		return 'اجاره-تاریخ تحویل و عودت ندارد';
	}
	
}