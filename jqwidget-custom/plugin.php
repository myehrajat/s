<?php
/**
 * @package NEW--EHRAJAT.IR jqwidget datagrid table
 * @version 0.1
 */
/*
Plugin Name: custom json jqwidget datagrid table
Plugin URI: http://wordpress.org/plugins/hello-dolly/
Description: custom json goes here

Author: Seyyed Shahab Tabatabaee
Version: 0.1
Author URI: http://ehrajat.ir/
*/

if ( in_array( 'jqwidget/plugin.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) ) {

	function sst_add_jqwidget_custom_options() {
		if(plugins_url( '', __FILE__ ) . '/' == sst_get_option( 'json_url' ) 
		   and 
		   plugin_dir_path( __FILE__ ) == sst_get_option( 'json_path' )
		  ){
			$reset_jqwidget_options = false;//true means reset all option accoring to settings. Note: to change the host must reset it.
		}else{
			$reset_jqwidget_options = true;//true means reset all option accoring to settings. Note: to change the host must reset it.
		}

		/***************SETTING>>******************/

		$count_bedehkari_be_digaran=0;//0 means don't caculate and one means calculate;
		$count_ghardad_between_others=0;//0 means don't caculate and one means calculate;


		/***************<<SETTING******************/
		$json_file = 'json.php';
		$json_url = plugins_url( '', __FILE__ ) . '/';
		$json_path = plugin_dir_path( __FILE__ );
		$list_page_id = 7;
		$list_page_url = get_page_link( $list_page_id );
		
		$list_post_page_file = 'post-page.php';
		if ( $reset_jqwidget_options ) {
			sst_delete_option( 'json_path' );
			sst_delete_option( 'json_url' );
			sst_delete_option( 'json_file_name' );
			sst_delete_option( 'json_file' );
			sst_delete_option( 'list_page' );
			sst_delete_option( 'list_post_page_file' );
			sst_delete_option( 'count_bedehkari_be_digaran' );
			sst_delete_option( 'count_ghardad_between_others' );
		}
		if ( sst_get_option( 'json_path' )===false  ) {
			sst_save_option( 'json_path', $json_path );
		}
		if ( sst_get_option( 'json_url' )===false  ) {
			sst_save_option( 'json_url', $json_url );
		}
		if ( sst_get_option( 'json_file_name' )===false  ) {
			sst_save_option( 'json_file_name', $json_file );
		}
		if ( sst_get_option( 'json_file' )===false  ) {
			sst_save_option( 'json_file', $json_url . $json_file );
		}
		if ( sst_get_option( 'list_page' )===false  ) {
			sst_save_option( 'list_page', $list_page_url );
		}
		if ( sst_get_option( 'list_post_page_file' )===false  ) {
			sst_save_option( 'list_post_page_file', $list_post_page_file );
		}
		if ( sst_get_option( 'count_bedehkari_be_digaran' )===false ) {
			sst_save_option( 'count_bedehkari_be_digaran', $count_bedehkari_be_digaran );
		}
		if ( sst_get_option( 'count_ghardad_between_others' )===false) {
			sst_save_option( 'count_ghardad_between_others', $count_ghardad_between_others );
		}


	}
	//$json = sst_get_option( 'json_url' ) . sst_get_option( 'json_file' );

	add_action( 'wp_loaded', 'sst_add_jqwidget_custom_options' );
	function sst_include_list() {
		if ( file_exists( sst_get_option( 'json_path' ) . sst_get_option( 'list_post_page_file' ) ) ) {
			include_once( sst_get_option( 'json_path' ) . sst_get_option( 'list_post_page_file' ) );
		} else {
			echo 'check the config of plugin sst_add_jqwidget_custom_options & sst_include_list function.<br>we cant file that show the contetn';
		}
	}
add_shortcode('include_list', 'sst_include_list');
	require_once( 'json-func/json_authorize.php' );

	function sst_load_jsxcompressor() {
		wp_register_script( 'jsxcompressor', plugins_url( 'jsxcompressor/jsxcompressor.min.js', __FILE__ ), array( 'jquery' ) );
		wp_enqueue_script( 'jsxcompressor' );
	}

	//enqueue styles and js files
	add_action( 'wp', 'sst_load_jsxcompressor' );
} else {

	echo '<script>alert("activate jqwidget/plugin.php!");</script>';

}