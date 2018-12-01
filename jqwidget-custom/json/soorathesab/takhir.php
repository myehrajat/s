<?php
//$gharardad, $rows, $now_date, $khodro_obj
function sst_temp_soorathesab_takhir( $gharardad, $rows, $now, $now_dat, $khodro_obj ) {
	global $dbprefix;
	
	$variz_bedehi = sst_gharardad_insert_hesab(
		true,
		'takhir',
		$gharardad[ 'gharardad_mostajer_id' ],
		$gharardad[ 'gharardad_mojer_id' ],
		$gharardad[ 'gharardad_khodro_id' ],
		$gharardad[ 'gharardad_tarikhe_tahvil' ],
		$now,
		$gharardad[ 'gharardad_gheymate' ],
		$gharardad[ 'gharardad_odo_mojaz' ],
		$gharardad[ 'gharardad_odo_avaliye' ],
		$gharardad[ 'gharardad_odo_sanaviye' ],
		$gharardad[ 'gharardad_odo_hazine' ],
		$gharardad[ 'gharardad_benzin_avaliye' ],
		$gharardad[ 'gharardad_benzin_sanaviye' ],
		$gharardad[ 'gharardad_sharhe_khesarat' ],
		$gharardad[ 'gharardad_baravorde_khesarat' ],
		$gharardad[ 'gharardad_baravorde_khabe_khesarat' ],
		$gharardad[ 'gharardad_hazineye_karvash' ],
		$gharardad[ 'gharardad_hazineye_ayab_zahab' ],
		$gharardad[ 'gharardad_takhfif' ],
		$gharardad[ 'gharardad_softeh' ],
		$gharardad[ 'gharardad_mohasebe_benzin' ],
		$gharardad[ 'gharardad_mohasebe_odo' ],
		$gharardad[ 'gharardad_hazineye_softeh' ],
		$gharardad[ 'gharardad_mohasebe_takhir' ]
	);


	if ( $variz_bedehi > 0 ) {
	
		
		$shakhs_id = sst_find_shakhs( $gharardad[ 'gharardad_mostajer_id' ], $gharardad[ 'gharardad_mojer_id' ] );
		$asli_shakhs_id = sst_find_asli_shakhs();
		$ashkhas_obj = sst_get_by_id($shakhs_id,$dbprefix.'ashkhas');
		$asli_ashkhas_obj = sst_get_by_id($asli_shakhs_id,$dbprefix.'ashkhas');
		$variz_bedehi = sst_find_variz_bedehi_jari( $gharardad[ 'gharardad_mostajer_id' ], $gharardad[ 'gharardad_mojer_id' ],$asli_shakhs_id,$shakhs_id,$variz_bedehi);
			//dbg($variz_bedehi);
			$new_temp_soorathesab_takhir = array(
			"aid" => $ashkhas_obj->id,
			"aashkhas_name_khanevadegi" => $ashkhas_obj->ashkhas_name_khanevadegi,
			"aashkhas_nam" => $ashkhas_obj->ashkhas_nam,

			"aaid" => $asli_ashkhas_obj->id,
			"aaashkhas_name_khanevadegi" => $asli_ashkhas_obj->ashkhas_name_khanevadegi,
			"aaashkhas_nam" => $asli_ashkhas_obj->ashkhas_nam,
			
			"ssave_id" => $gharardad[ 'save_id' ],
			"sid" => '',
			"ssoorathesab_ashkhas_id" => $gharardad[ 'gharardad_mostajer_id' ],
			"ssoorathesab_asli_ashkhas_id" => $gharardad[ 'gharardad_mojer_id' ],
			"ssoorathesab_tarikh" => $now_dat,
			"ssoorathesab_khodro_id" => $gharardad[ 'gharardad_khodro_id' ],
			"ssoorathesab_variz" => $variz_bedehi['variz'],
			"ssoorathesab_bedehi" => $variz_bedehi['bedehi'],
			"ssoorathesab_babat" => sst_text_sabt_takhir( $gharardad[ 'gharardad_tarikhe_tahvil' ], NULL, 
									$gharardad[ 'gharardad_gheymate' ], $gharardad[ 'gharardad_mohasebe_takhir' ] ),
			"ssoorathesab_tozihat" => 'ثبت موقت',
			
			"kid" => $khodro_obj->id,
			"kkhodro_khodro" => $khodro_obj->khodro_khodro,
			"kkhodro_model" => $khodro_obj->khodro_model,
			"kkhodro_rang" => $khodro_obj->khodro_rang,
		);

		if ( !empty( $new_temp_soorathesab_takhir ) ) {
			array_unshift( $rows, $new_temp_soorathesab_takhir );
		}
	}
	return $rows;
}