<?php



/*
return sst_gharardad_insert_hesab (
false,
'softeh',  
$vals['gharardad_mostajer_id'],
$vals['gharardad_mojer_id'],
$vals['gharardad_khodro_id'], 
$vals['gharardad_tarikhe_tahvil'], 
$vals['gharardad_tarikhe_odat'], 
$vals['gharardad_gheymate'], 
$vals['gharardad_odo_mojaz'], 
$vals['gharardad_odo_avaliye'], 
$vals['gharardad_odo_sanaviye'], 
$vals['gharardad_odo_hazine'], 
$vals['gharardad_benzin_avaliye'], 
$vals['gharardad_benzin_sanaviye'], 
$vals['gharardad_sharhe_khesarat'], 
$vals['gharardad_baravorde_khesarat'], 
$vals['gharardad_baravorde_khabe_khesarat'], 
$vals['gharardad_hazineye_karvash'], 
$vals['gharardad_hazineye_ayab_zahab'], 
$vals['gharardad_takhfif'] , 
$vals['gharardad_softeh'] , 
$vals['gharardad_mohasebe_benzin'],
$vals['gharardad_mohasebe_odo'] , 
$vals['gharardad_mohasebe_takhir'], 
$vals['gharardad_doreye_zamani_ejareh']
);
	*/
function sst_gharardad_insert_hesab(
	$current,
	$soorthesab_type,
	$gharardad_mostajer_id,
	$gharardad_mojer_id,
	$gharardad_khodro_id,
	$gharardad_tarikhe_tahvil,
	$gharardad_tarikhe_odat,
	$gharardad_gheymate,
	$gharardad_odo_mojaz,
	$gharardad_odo_avaliye,
	$gharardad_odo_sanaviye,
	$gharardad_odo_hazine,
	$gharardad_benzin_avaliye,
	$gharardad_benzin_sanaviye,
	$gharardad_sharhe_khesarat,
	$gharardad_baravorde_khesarat,
	$gharardad_baravorde_khabe_khesarat,
	$gharardad_hazineye_karvash,
	$gharardad_hazineye_ayab_zahab,
	$gharardad_takhfif,
	$gharardad_softeh,
	$gharardad_mohasebe_benzin,
	$gharardad_mohasebe_odo,
	$gharardad_mohasebe_takhir,
	$gharardad_hazineye_softeh,
	$doreye_zamani = NULL ) {


	global $wpdb;
	//dbg($GLOBALS);
	//sst_delete_null_soorat_hesab();
	if ( $gharardad_tarikhe_odat == '' && $current == true ) {
		$gharardad_tarikhe_odat = sst_current_jalali();
	}
	$sherkat_id = sst_get_option( 'sherkat_id' );
	if ( $gharardad_tarikhe_odat ) {
		/*
		if($gharardad_benzin_sanaviye<$gharardad_benzin_avaliye){
			$gharardad_khodro = sst_get_by_id($gharardad_khodro_id,'rent_khodro');
			$bedhi_benzin_mostajer = floor(($gharardad_benzin_avaliye-$gharardad_benzin_sanaviye)*$gharardad_khodro->khodro_hajme_bak/8);
		}else{
			$bedhi_benzin_mostajer =NULL;
		}
		$talab_rooz_moaref_mostajer = floor($rooz*$gharardad_komision_moaref_mostajer);
		if($takhir_zarib>0){
			$talab_takhir_moaref_mostajer = floor($takhir_zarib*$gharardad_komision_moaref_mostajer);
		}else{$talab_takhir_moaref_mostajer =NULL;}*/
		//count_bedehkari_be_digaran needed to count count_ghardad_between_others-> in this case will save others gharardad hesab
		//-> in this case will save only sherkat gharardad hesab
		if ( ( sst_get_option( 'count_ghardad_between_others' ) == 1 or sst_get_option( 'count_bedehkari_be_digaran' ) or 			
			  ( $gharardad_mostajer_id == $sherkat_id or $gharardad_mojer_id == $sherkat_id ) ) == 1 ) {
			switch ( $soorthesab_type ) {
				case 'rooz':
					$mablagh = $soorat_hesab_rooz = sst_mohasebe_hazine_rooz( $gharardad_tarikhe_tahvil, $gharardad_tarikhe_odat, $gharardad_gheymate, $doreye_zamani );
					break;
				case 'takhir':
					$mablagh = $soorat_hesab_takhir = sst_mohasebe_hazine_takhir( $gharardad_tarikhe_tahvil, $gharardad_tarikhe_odat, $gharardad_gheymate, $gharardad_mohasebe_takhir );
					break;
				case 'odo':
					$mablagh = $soorat_hesab_odo = sst_mohasebe_hazine_odo( $gharardad_tarikhe_tahvil, $gharardad_tarikhe_odat, $gharardad_odo_avaliye, $gharardad_odo_sanaviye, $gharardad_odo_mojaz, $gharardad_odo_hazine, $gharardad_mohasebe_odo, $gharardad_gheymate, $gharardad_mohasebe_takhir );
					break;
				case 'benzin':
					$mablagh = $soorat_hesab_benzin = sst_mohasebe_hazine_benzin( $gharardad_benzin_avaliye, $gharardad_benzin_sanaviye, $gharardad_khodro_id, $gharardad_mohasebe_benzin );
					break;
				case 'karvash':
					$mablagh = $gharardad_hazineye_karvash;
					break;
				case 'ayab_zahab':
					$mablagh = $gharardad_hazineye_ayab_zahab;
					break;
				case 'takhfif':
					$mablagh = $gharardad_takhfif;
					break;
				case 'baravorde_khesarat':
					$mablagh = $gharardad_baravorde_khesarat;
					break;
				case 'baravorde_khabe_khesarat':
					$mablagh = $gharardad_baravorde_khabe_khesarat;
					break;
				case 'softeh':
					$mablagh = $gharardad_hazineye_softeh;
					break;
			}
			//dbg($mablagh);
			return $mablagh;
		} else {
			return;
		}
	}

}



?>