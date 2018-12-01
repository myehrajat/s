<?php


	function sst_gharardad_insert_odat_ashkhas( $gharardad_tahvil_girande, $gharardad_mahale_odat ) {
		if ( $gharardad_mahale_odat != 'شرکت' ) {
			return $gharardad_tahvil_girande;
		} else {
			return sst_get_option( 'sherkat_id' );
		}
	}



?>