<?php
/**************************
$_GET[ 'shakhs' ]=>for getting only one person soorathesab
$_GET[ 'khodro' ]=>for getting only one khodro
$_GET[ 'nosoorat' ]=>for getting not soorathesab to make speedy
>>>>>>>>$_GET[ 'tarikh' ]=>for getting only one date soorathesab
>>>>>>>>$_GET[ 'totarikh' ]=>for getting only one date soorathesab
>>>>>>>>$_GET[ 'onlygharardad' ]=>for NOT getting  all gharardad
>>>>>>>>$_GET[ 'nojari' ]=>for NOT getting all jari gharardad
>>>>>>>>$_GET[ 'onlyjari' ]=>for NOT getting all jari gharardad
ALTER TABLE `wp_rent_gharardad`
MODIFY COLUMN `gharardad_tahvil_dahande`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL AFTER `gharardad_benzin_sanaviye`,
MODIFY COLUMN `gharardad_mahale_tahvil`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL AFTER `gharardad_tahvil_dahande`;


*******************************/




//todo:less data for soorathesb




function sst_json_gharardad() {
	global $wpdb, $dbprefix;
	$query = "SELECT gharardad.id AS gid ,gharardad.gharardad_shomare_gharardad AS ggharardad_shomare_gharardad ,gharardad.gharardad_mostajer_id AS ggharardad_mostajer_id ,gharardad.gharardad_mojer_id AS ggharardad_mojer_id ,gharardad.gharardad_khodro_id AS ggharardad_khodro_id ,gharardad.gharardad_tarikhe_tahvil AS ggharardad_tarikhe_tahvil ,gharardad.gharardad_tarikhe_odat AS ggharardad_tarikhe_odat ,gharardad.gharardad_vadeye_tarikhe_odat AS ggharardad_vadeye_tarikhe_odat ,gharardad.gharardad_doreye_zamani_ejareh AS ggharardad_doreye_zamani_ejareh ,gharardad.gharardad_gheymate AS ggharardad_gheymate ,gharardad.gharardad_odo_mojaz AS ggharardad_odo_mojaz ,gharardad.gharardad_odo_avaliye AS ggharardad_odo_avaliye ,gharardad.gharardad_odo_sanaviye AS ggharardad_odo_sanaviye ,gharardad.gharardad_odo_hazine AS ggharardad_odo_hazine ,gharardad.gharardad_benzin_avaliye AS ggharardad_benzin_avaliye ,gharardad.gharardad_benzin_sanaviye AS ggharardad_benzin_sanaviye ,gharardad.gharardad_tahvil_dahande AS ggharardad_tahvil_dahande ,gharardad.gharardad_sharhe_khesarat AS ggharardad_sharhe_khesarat ,gharardad.gharardad_baravorde_khesarat AS ggharardad_baravorde_khesarat ,gharardad.gharardad_baravorde_khabe_khesarat AS ggharardad_baravorde_khabe_khesarat ,gharardad.gharardad_hazineye_karvash AS ggharardad_hazineye_karvash ,gharardad.gharardad_hazineye_ayab_zahab AS ggharardad_hazineye_ayab_zahab ,gharardad.gharardad_tozihat AS ggharardad_tozihat ,gharardad.gharardad_check AS ggharardad_check,gharardad.save_id AS gsave_id ,khodro.khodro_khodro AS kkhodro_khodro ,khodro.khodro_model AS kkhodro_model ,khodro.khodro_rang AS kkhodro_rang ,khodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani ,khodro.save_id AS ksave_id ,khodro.khodro_malek_id ,khodro.khodro_saheb_emtiyaz_id ,khodro.id ,mojer_ashkhas.ashkhas_nam AS mojerashkhas_nam ,mojer_ashkhas.ashkhas_name_khanevadegi AS mojerashkhas_name_khanevadegi ,mostajer_ashkhas.ashkhas_nam AS mostajerashkhas_nam ,mostajer_ashkhas.ashkhas_name_khanevadegi AS mostajerashkhas_name_khanevadegi ,gharardad_tahvil_dahande.id AS gharardad_tahvil_dahandeid ,gharardad_tahvil_dahande.ashkhas_nam AS gharardad_tahvil_dahandeashkhas_nam ,gharardad_tahvil_dahande.ashkhas_name_khanevadegi AS gharardad_tahvil_dahandeashkhas_name_khanevadegi ,gharardad_tahvil_girande.id AS gharardad_tahvil_girandeid ,gharardad_tahvil_girande.ashkhas_nam AS gharardad_tahvil_girandeashkhas_nam ,gharardad_tahvil_girande.ashkhas_name_khanevadegi AS gharardad_tahvil_girandeashkhas_name_khanevadegi FROM wp_rent_gharardad AS gharardad LEFT JOIN wp_rent_khodro AS khodro ON gharardad.gharardad_khodro_id=khodro.id LEFT JOIN wp_rent_ashkhas AS mojer_ashkhas ON mojer_ashkhas.id=gharardad.gharardad_mojer_id LEFT JOIN wp_rent_ashkhas AS mostajer_ashkhas ON mostajer_ashkhas.id=gharardad.gharardad_mostajer_id LEFT JOIN wp_rent_ashkhas AS gharardad_tahvil_dahande ON gharardad_tahvil_dahande.id=gharardad.gharardad_tahvil_dahande LEFT JOIN wp_rent_ashkhas AS gharardad_tahvil_girande ON gharardad_tahvil_girande.id=gharardad.gharardad_tahvil_girande WHERE 1=1 "; //
	if ( $_GET[ 'asli_shakhs' ] ) {
		$query .= " AND (gharardad.gharardad_mostajer_id = " . $_GET[ 'asli_shakhs' ] . " OR  gharardad.gharardad_mojer_id = " . $_GET[ 'asli_shakhs' ] . ") ";
	}
	if ( $_GET[ 'shakhs' ] ) {
		$query .= " AND (gharardad.gharardad_mostajer_id = " . $_GET[ 'shakhs' ] . " OR  gharardad.gharardad_mojer_id = " . $_GET[ 'shakhs' ] . ") ";
	}
	if ( $_GET[ 'khodro' ] ) {
		$query .= " AND gharardad.gharardad_khodro_id = " . $_GET[ 'khodro' ] . " ";
	}
	if ( $_GET[ 'nochecked' ] ) {
		$query .= " AND gharardad.gharardad_check != " . "'تایید شد'" . " ";
	}
	if ( $_GET[ 'nojari' ] ) {
		$query .= " AND gharardad.gharardad_tarikhe_odat != '' ";
	}
	if ( $_GET[ 'nobaygani' ] ) {
		$query .= " AND gharardad.gharardad_tarikhe_odat = '' ";
	}
	if ( $_GET[ 'tarikh' ] ) {
		if(!$_GET[ 'totarikh' ]){$_GET[ 'totarikh' ]=$_GET[ 'tarikh' ];}
		$query .= " AND ((gharardad.gharardad_tarikhe_tahvil <= '". $_GET[ 'tarikh' ]." 24:00' OR gharardad.gharardad_tarikhe_tahvil <= '". $_GET[ 'totarikh' ]." 24:00' ) AND  (gharardad.gharardad_tarikhe_odat >= '". $_GET[ 'totarikh' ]." 24:00' OR gharardad.gharardad_tarikhe_odat ='' ) ) " ;
	}
	$query .= " ORDER BY if(ggharardad_tarikhe_odat = '' OR ggharardad_tarikhe_odat is null,0,1) ASC ,ggharardad_tarikhe_tahvil DESC ";

	dbg($query);
	$rows = $wpdb->get_results( $query, 'ARRAY_A' );








	if ( !isset( $_GET[ 'nosoorat' ] ) ) {
		$query_soorathesab = 'SELECT * FROM ' . $wpdb->prefix . $dbprefix . "soorathesab WHERE `soorathesab_tozihat`='ثبت اتوماتیک سیستم'" . " AND (soorathesab_variz<>'' OR soorathesab_bedehi<>'') ORDER BY `save_id`";
		//dbg($query_soorathesab);
		$gharardad_soorathesabs = $wpdb->get_results( $query_soorathesab, ARRAY_A );
		
		//group soorthesab for each gharardad by the key ad save_id which is the same in rows gsave_id and json it
		foreach ( $gharardad_soorathesabs as $gharardad_soorathesab ) {
			$gharardad_soorathesab_grouped_by_save_id[$gharardad_soorathesab['save_id']][]= json_encode($gharardad_soorathesab);

		}
		//dbg($gharardad_soorathesab_grouped_by_save_id);
		//assign its soorathesab its own soorathesb if no result [] return in soorathesab and @ precede implode is for this case to prevent warning error then json it
		foreach($rows as $key=>$row){
			$rows[$key]=json_encode( $rows[ $key ] );
			//@ is used because checking has soorathesab one gharardad make it much slower
			$s[$key]['soorathesab']='[' . @ implode( ',', $gharardad_soorathesab_grouped_by_save_id[$row['gsave_id']] ) . ']';
			$rows[ $key ] = substr( $rows[ $key ], 0, -1 ) . ',"soorathesab":' . $s[$key]['soorathesab'] . "}";
			//dbg($rows[$key]);
		}

	} else {
		foreach($rows as $key=>$row){
		$rows[ $key ]['soorathesab']='';
		$rows[ $key ] = json_encode( $rows[ $key ] );
		}
	}

	return $rows;
}
//$time_start = microtime_float();
$rows = sst_json_gharardad();
//$time_end = microtime_float();
//$execution_time = ( $time_end - $time_start );
//dbg( '$execution_time:' . $execution_time );

?>