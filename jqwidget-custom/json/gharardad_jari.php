<?php

/*
ALTER TABLE `wp_rent_gharardad`
ADD COLUMN `gharardad_takhfif`  varchar(255) NULL AFTER `gharardad_hazineye_ayab_zahab`;
*/

function sst_json_gharardad_jari( ) {
	global $wpdb, $dbprefix, $psw;
	
$query = "SELECT
	gharardad.id AS gid,
	gharardad.gharardad_shomare_gharardad AS ggharardad_shomare_gharardad,
	gharardad.gharardad_mostajer_id AS ggharardad_mostajer_id,
	gharardad.gharardad_mojer_id AS ggharardad_mojer_id,
	gharardad.gharardad_khodro_id AS ggharardad_khodro_id,
	gharardad.gharardad_tarikhe_tahvil AS ggharardad_tarikhe_tahvil,
	gharardad.gharardad_tarikhe_odat AS ggharardad_tarikhe_odat,
	gharardad.gharardad_vadeye_tarikhe_odat AS ggharardad_vadeye_tarikhe_odat,
	gharardad.gharardad_doreye_zamani_ejareh AS ggharardad_doreye_zamani_ejareh,
	gharardad.gharardad_gheymate AS ggharardad_gheymate,
	gharardad.gharardad_odo_mojaz AS ggharardad_odo_mojaz,
	gharardad.gharardad_odo_avaliye AS ggharardad_odo_avaliye,
	gharardad.gharardad_odo_sanaviye AS ggharardad_odo_sanaviye,
	gharardad.gharardad_odo_hazine AS ggharardad_odo_hazine,
	gharardad.gharardad_benzin_avaliye AS ggharardad_benzin_avaliye,
	gharardad.gharardad_benzin_sanaviye AS ggharardad_benzin_sanaviye,
	gharardad.gharardad_tahvil_dahande AS ggharardad_tahvil_dahande,
	gharardad.gharardad_sharhe_khesarat AS ggharardad_sharhe_khesarat,
	gharardad.gharardad_baravorde_khesarat AS ggharardad_baravorde_khesarat,
	gharardad.gharardad_baravorde_khabe_khesarat AS ggharardad_baravorde_khabe_khesarat,
	gharardad.gharardad_hazineye_karvash AS ggharardad_hazineye_karvash,
	gharardad.gharardad_hazineye_ayab_zahab AS ggharardad_hazineye_ayab_zahab,
	gharardad.gharardad_tozihat AS ggharardad_tozihat,
	gharardad.save_id AS gsave_id,
	khodro.khodro_khodro AS kkhodro_khodro,
	khodro.khodro_model AS kkhodro_model,
	khodro.khodro_rang AS kkhodro_rang,
	khodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani,
	khodro.save_id AS ksave_id,
	khodro.khodro_malek_id,
	khodro.khodro_saheb_emtiyaz_id,
	khodro.id,
	mojer_ashkhas.ashkhas_nam AS mojerashkhas_nam,
	mojer_ashkhas.ashkhas_name_khanevadegi AS mojerashkhas_name_khanevadegi,
	mostajer_ashkhas.ashkhas_nam AS mostajerashkhas_nam,
	mostajer_ashkhas.ashkhas_name_khanevadegi AS mostajerashkhas_name_khanevadegi,
	gharardad_tahvil_dahande.id AS gharardad_tahvil_dahandeid,
	gharardad_tahvil_dahande.ashkhas_nam AS gharardad_tahvil_dahandeashkhas_nam,
	gharardad_tahvil_dahande.ashkhas_name_khanevadegi AS gharardad_tahvil_dahandeashkhas_name_khanevadegi,
	gharardad_tahvil_girande.id AS gharardad_tahvil_girandeid,
	gharardad_tahvil_girande.ashkhas_nam AS gharardad_tahvil_girandeashkhas_nam,
	gharardad_tahvil_girande.ashkhas_name_khanevadegi AS gharardad_tahvil_girandeashkhas_name_khanevadegi
FROM
	wp_rent_gharardad AS gharardad
LEFT JOIN wp_rent_khodro AS khodro ON gharardad.gharardad_khodro_id = khodro.id
LEFT JOIN wp_rent_ashkhas AS mojer_ashkhas ON mojer_ashkhas.id = gharardad.gharardad_mojer_id
LEFT JOIN wp_rent_ashkhas AS mostajer_ashkhas ON mostajer_ashkhas.id = gharardad.gharardad_mostajer_id
LEFT JOIN wp_rent_ashkhas AS gharardad_tahvil_dahande ON gharardad_tahvil_dahande.id = gharardad.gharardad_tahvil_dahande
LEFT JOIN wp_rent_ashkhas AS gharardad_tahvil_girande ON gharardad_tahvil_girande.id = gharardad.gharardad_tahvil_girande
WHERE
	gharardad.gharardad_tarikhe_odat = ''
ORDER BY
	khodro_khodro ASC";
$rows = $wpdb->get_results( $query, 'ARRAY_A' );
	$calculed_before = array();
	$value_calculed_before = array();
	//dbg(count($rows));
	//die;
	foreach ( $rows as $key => $gharardad ) {
		$mojer_mostajer_indentifier = $gharardad[ 'ggharardad_mojer_id' ] . '-' . $gharardad[ 'ggharardad_mostajer_id' ];
		if ( !in_array( $mojer_mostajer_indentifier, $calculed_before ) ) { //find tha nahayii
			$psw = 'ehrajat1363';
			//this part is for getting soorathesab nahayyii
			$soorathesab_query = sst_get_option( 'json_file' ) . '?list=soorathesab&asli_shakhs=' . urlencode( $gharardad[ 'ggharardad_mojer_id' ] ) . '&shakhs=' . urlencode( $gharardad[ 'ggharardad_mostajer_id' ] ) . '&psw=' . $psw . '&rawdata=raw';
			//dbg($soorathesab_query);
			$soorathesab_json = file_get_contents( $soorathesab_query, true );
			$soorathesab_arr = json_decode( $soorathesab_json );
			
			$rows[ $key ][ 'ssoorathesab_nahayi' ] = $soorathesab_arr[ 0 ]->ssoorathesab_nahayi;
			$calculed_before[] = $mojer_mostajer_indentifier;
			$value_calculed_before[ $mojer_mostajer_indentifier ] = $soorathesab_arr[ 0 ]->ssoorathesab_nahayi;
		} else { //before we find nahayii now only set it
			$rows[ $key ][ 'ssoorathesab_nahayi' ] = $value_calculed_before[ $mojer_mostajer_indentifier ];
		}
	}
	foreach ( $rows as $rk => $rv ) {
		$rows[ $rk ] = json_encode( $rv );
	}
	return $rows;
}
$rows = sst_json_gharardad_jari( );