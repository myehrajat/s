<?php


function sst_insert_rooz_by_query($gharardad_mostajer_id,$gharardad_mojer_id,$tarikh,$mablagh,$khodro_id,$text,$status,$save_id){
	global $wpdb,$dbprefix;
		//static $query;
		//dbg($mablagh);
		//dbg($gharardad_mostajer_id);
		//dbg($gharardad_mojer_id);
	//dbg(1);
		//dbg(5567890);

		if($status=='اجاره جاری'){
			$soorathesab_tozihat = 'ثبت موقت';
		}elseif($status=='اجاره'){
			$soorathesab_tozihat = 'ثبت اتوماتیک سیستم';
		}else{
			$soorathesab_tozihat = 'ثبت سیستم نامعلوم';
		}
		$user_id = user_ID;
		//dbg(1);
		$query .= "INSERT INTO ".$wpdb->prefix . $dbprefix . "soorathesab"." 
		(
		`soorathesab_ashkhas_id`,
		`soorathesab_asli_ashkhas_id`,
		`soorathesab_tarikh`,
		`soorathesab_variz`, 
		`soorathesab_bedehi`,
		`soorathesab_khodro_id`,
		`soorathesab_babat`,
		`soorathesab_tozihat`,
		`save_id`, 
		`sabt_konande_id`, 
		`virayesh_konnade_id`, 
		`created`, 
		`modified`) 
		VALUES ". "('".
		$gharardad_mostajer_id."','".
		$gharardad_mojer_id."','".
		$tarikh."','".
		""."','".//$soorathesab_variz
		$mablagh."','".
		$khodro_id."','".
		$text."','".
		$soorathesab_tozihat."','".			
		$save_id."','".
		$user_id."','".
		$user_id."','".
		date('Y-m-d H:i:s')."','".
		date('Y-m-d H:i:s')."');"; 
		
		//dbg($query);
			//$query;
		//dbg($soorathesab_variz);
		//dbg($soorathesab_bedehi);
		//dbg($query);
		$wpdb->query($query);
		

	
}?>