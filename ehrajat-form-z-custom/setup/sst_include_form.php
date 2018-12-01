<?php

	function sst_include_form() {
		if ( file_exists( sst_get_option( 'ehrajat_path' ) . sst_get_option( 'form_post_page_file' ) ) ) {
			include_once( sst_get_option( 'ehrajat_path' ) . sst_get_option( 'form_post_page_file' ) );
		} else {
			echo 'check the config of plugin sst_add_ehrajat_custom_options & sst_include_form function.<br>we cant file that show the content';
		}
	}

add_shortcode('include_form', 'sst_include_form');


?>