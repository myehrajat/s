<?php

function sst_text_in_soorathesab_insert( $soorathesab_ashkhas_id, $soorathesab_babat ) {
	global $wpdb, $dbprefix;
	$ashkhas_table = $dbprefix . 'ashkhas';
	$value = explode( '-', $soorathesab_ashkhas_id );
	$shakhs = $value[ 0 ];
	$moaref = $value[ 1 ];
	//dbg($soorathesab_ashkhas_id);
	//dbg($shakhs);
	//dbg($moaref);
	//dbg($ashkhas_table);
	//if($ba_sherkat){
	if ( $moaref == sst_get_option( 'sherkat_id' ) ) {
		$soorathesab_babat_affix = $soorathesab_babat;
	} else {
		//sabt in moaref id soorathesab but affix the name of shakhs
		$obj_shakhs = sst_get_by_id( $shakhs, $ashkhas_table );
		//dbg
		//dbg($obj_shakhs);
		$soorathesab_babat_affix = $soorathesab_babat . '-' . $obj_shakhs->ashkhas_nam . ' ' . $obj_shakhs->ashkhas_name_khanevadegi;
		//dbg($soorathesab_babat_affix);
	}

	return $soorathesab_babat_affix;
}

/*
$vals['soorathesab_tarikh']
$vals['soorathesab_variz']
$vals['soorathesab_bedehi']
$vals['soorathesab_babat']
$vals['soorathesab_tozihat']
$vals['soorathesab_khodro_id']
	
$vals['soorathesab_ashkhas_id']
?>