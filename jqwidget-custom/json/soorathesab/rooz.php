<?php



//////////////////////////////
//            ROOZ
//////////////////////////////
function sst_temp_soorathesab_rooz( $gharardad, $rows, $now ) {

	$new_temp_soorathesab_rooz = array();
	$new_temp_soorathesab_takhir = array();
	if ( !empty( $gharardad[ 'gharardad_tarikhe_tahvil' ] ) ) {
		//dbg($gharardad['gharardad_doreye_zamani_ejareh']);
		switch ( $gharardad[ 'gharardad_doreye_zamani_ejareh' ] ) {
			case "md":
				//dbg('44444444444');
				$rooz_array = sst_month_term_text_sabt_rooz( $gharardad[ 'gharardad_tarikhe_tahvil' ], $now, $gharardad[ 'gharardad_gheymate' ], 'اجاره جاری', $gharardad[ 'gharardad_mostajer_id' ], $gharardad[ 'gharardad_mojer_id' ], $gharardad[ 'gharardad_khodro_id' ], $gharardad[ 'save_id' ] );
				break;
			case "mm":
				//echo '2wesdcfgdagarfsdgasdfgasdfg';		
				///dbg('333333333333333');
				$rooz_array = sst_month_term_text_sabt_mah( $gharardad[ 'gharardad_tarikhe_tahvil' ], $now, $gharardad[ 'gharardad_gheymate' ], 'اجاره جاری', $gharardad[ 'gharardad_mostajer_id' ], $gharardad[ 'gharardad_mojer_id' ], $gharardad[ 'gharardad_khodro_id' ], $gharardad[ 'save_id' ] );
				//dbg($rooz_array);
				break;

			case '':
				$rooz_array = sst_whole_term_text_sabt_rooz( $gharardad[ 'gharardad_tarikhe_tahvil' ], $now, $gharardad[ 'gharardad_gheymate' ], 'اجاره جاری', $gharardad[ 'gharardad_mostajer_id' ], $gharardad[ 'gharardad_mojer_id' ], $gharardad[ 'gharardad_khodro_id' ], $gharardad[ 'save_id' ], $gharardad[ 'gharardad_doreye_zamani_ejareh' ] );
				//dbg( $rooz_array );
				break;
			default:
				$rooz_array = sst_long_term_text_sabt_rooz( $gharardad[ 'gharardad_tarikhe_tahvil' ], $now, $gharardad[ 'gharardad_gheymate' ], 'اجاره جاری', $gharardad[ 'gharardad_mostajer_id' ], $gharardad[ 'gharardad_mojer_id' ], $gharardad[ 'gharardad_khodro_id' ], $gharardad[ 'save_id' ], $gharardad[ 'gharardad_doreye_zamani_ejareh' ] );
				//dbg('111111111111111111');
				break;

		}
	}

	//dbg($rooz_array);
	if ( $rooz_array != NULL ) {
		foreach ( $rooz_array as $new_temp_soorathesab_rooz ) {
			array_unshift( $rows, $new_temp_soorathesab_rooz );
		}
	} else {
		//		dbg(55555555555555555555555555);
	}

	return $rows;

}