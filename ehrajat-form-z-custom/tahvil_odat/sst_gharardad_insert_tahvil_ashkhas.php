<?php

	/*
	$vals['gharardad_tahvil_dahande']
	$vals['gharardad_tahvil_girande']
	$vals['gharardad_mahale_tahvil']
	$vals['gharardad_mahale_odat']
	*/
	function sst_gharardad_insert_tahvil_ashkhas( $gharardad_tahvil_dahande, $gharardad_mahale_tahvil ) {
		if ( $gharardad_mahale_tahvil != 'شرکت' ) {
			return $gharardad_tahvil_dahande;
		} else {
			return sst_get_option( 'sherkat_id' );
		}
	}
?>