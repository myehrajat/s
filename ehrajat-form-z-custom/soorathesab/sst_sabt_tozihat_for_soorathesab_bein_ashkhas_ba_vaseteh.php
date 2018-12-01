<?php
function sst_sabt_tozihat_for_soorathesab_bein_ashkhas_ba_vaseteh($variz_bedehi_col,$soorathesab_babat,$shakhs_id,$second_shakhs_id=NULL){
	//first $shakhs_id means other one if bedehi or variz 
	//but $second_shakhs_id is needed if $variz_bedehi_col is set to 'bein_ashkhas' and $shakhs_id is variz konnande and second variz konnde be hesab bein ashkhas
	//asli_shakhs will be bedehkar be sherkat
	//shakhs will be bestankar az sherkat
	global $dbprefix;
	if($variz_bedehi_col=='bedehi'){
		$soorathesab_babat .= ' - واریز به ';
	}elseif($variz_bedehi_col=='variz'){
		$soorathesab_babat .= ' - وصول از ';
	}elseif($variz_bedehi_col=='bein_ashkhas'){
		$soorathesab_babat .= ' - وصول از ';
	}
	$shakhs = sst_get_by_id( $shakhs_id, $dbprefix . 'ashkhas' );
	$soorathesab_babat .= $shakhs->ashkhas_nam.' '.$shakhs->ashkhas_name_khanevadegi;
	if($variz_bedehi_col=='bein_ashkhas'){
		$second_shakhs = sst_get_by_id( $second_shakhs_id, $dbprefix . 'ashkhas' );
		$soorathesab_babat .= ' و واریز به ';
		$soorathesab_babat .= $second_shakhs->ashkhas_nam.' '.$second_shakhs->ashkhas_name_khanevadegi;
	}
	return $soorathesab_babat;
}
?>