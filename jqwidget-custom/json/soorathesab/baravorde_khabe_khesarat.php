<?php


function sst_temp_soorathesab_baravorde_khabe_khesarat( $gharardad, $rows, $now_date, $khodro_obj ) {
	global $dbprefix;


	if ( $gharardad[ 'gharardad_baravorde_khabe_khesarat' ] > 0 ) {

		$shakhs_id = sst_find_shakhs( $gharardad[ 'gharardad_mostajer_id' ], $gharardad[ 'gharardad_mojer_id' ] );
		$asli_shakhs_id = sst_find_asli_shakhs();

		$ashkhas_obj = sst_get_by_id( $shakhs_id, $dbprefix . 'ashkhas' );
		$asli_ashkhas_obj = sst_get_by_id( $asli_shakhs_id, $dbprefix . 'ashkhas' );

		$variz_bedehi = sst_find_variz_bedehi_jari( $gharardad[ 'gharardad_mostajer_id' ], $gharardad[ 'gharardad_mojer_id' ], $asli_shakhs_id, $shakhs_id, $gharardad[ 'gharardad_baravorde_khabe_khesarat' ] );


		$new_temp_soorathesab_baravorde_khabe_khesarat = array(
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
			"ssoorathesab_tarikh" => $now_date,
			"ssoorathesab_khodro_id" => $gharardad[ 'gharardad_khodro_id' ],
			"ssoorathesab_variz" => $variz_bedehi[ 'variz' ],
			"ssoorathesab_bedehi" => $variz_bedehi[ 'bedehi' ],
			"ssoorathesab_babat" => 'خسارت خواب جاری-' . $gharardad[ 'gharardad_sharhe_khesarat' ],
			"ssoorathesab_tozihat" => 'ثبت موقت',

			"kid" => $khodro_obj->id,
			"kkhodro_khodro" => $khodro_obj->khodro_khodro,
			"kkhodro_model" => $khodro_obj->khodro_model,
			"kkhodro_rang" => $khodro_obj->khodro_rang,
		);

		//dbg($new_temp_soorathesab_baravorde_khabe_khesarat);
		//$rows[]=$new_temp_soorathesab_ayab_zahab;
		array_unshift( $rows, $new_temp_soorathesab_baravorde_khabe_khesarat );
		//echo '11111111111111';
	}
	return $rows;

}