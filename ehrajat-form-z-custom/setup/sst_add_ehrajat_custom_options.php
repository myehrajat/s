<?php

function sst_add_ehrajat_custom_options() {
	if(plugins_url( '', __FILE__ ) . '/' == sst_get_option( 'ehrajat_url' )
		and 
		plugin_dir_path( __FILE__ ) == sst_get_option( 'ehrajat_path' )
	){
	$reset_ehrajat_options = false;
	}else{
	$reset_ehrajat_options = true;
	}
	$ehrajat_url = plugins_url( '', __FILE__ ) . '/';
	$ehrajat_path = plugin_dir_path( __FILE__ );
	$form_post_page_file = 'post-page.php';
	$list_page_id = 2;
	$form_page_url = get_page_link( $list_page_id );
	define( 'SHERKAT_ID', 11 );
	$mohasebe_doreye_kamel = 'no';
	if ( $reset_ehrajat_options ) {
		sst_delete_option( 'ehrajat_path' );
		sst_delete_option( 'ehrajat_url' );
		sst_delete_option( 'form_page_url' );
		sst_delete_option( 'form_post_page_file' );
		sst_delete_option( 'sherkat_id' );
		sst_delete_option( 'mohasebe_doreye_kamel' );
		sst_update_db_to_on_off_count_bedehkari_be_digaran();
	}
	if ( sst_get_option( 'ehrajat_path' )===false ) {
		sst_save_option( 'ehrajat_path', $ehrajat_path );
		//echo '<script>alert("plugin is ehrajat-form-plugin/index.php activated");</script>';
	}
	if ( sst_get_option( 'ehrajat_url' )===false ) {
		sst_save_option( 'ehrajat_url', $ehrajat_url );
	}
	if ( sst_get_option( 'form_page_url' )===false ) {
		sst_save_option( 'form_page_url', $form_page_url );
	}
	if ( sst_get_option( 'form_post_page_file' )===false ) {
		sst_save_option( 'form_post_page_file', $form_post_page_file );
	}

	if ( sst_get_option( 'sherkat_id' ) ===false) {
		sst_save_option( 'sherkat_id', SHERKAT_ID );
	}
	if ( sst_get_option( 'mohasebe_doreye_kamel' )===false ) {
		sst_save_option( 'mohasebe_doreye_kamel', strtolower($mohasebe_doreye_kamel) );
	}

}
add_action( 'wp', 'sst_add_ehrajat_custom_options' );

function sst_update_db_to_on_off_count_bedehkari_be_digaran(){
	global $wpdb;
	/**********************************/
	//صورتحساب بین افراد با واسطه
	if(!sst_get_option('count_bedehkari_be_digaran')){
		$query="UPDATE ".$wpdb->prefix."sst_form SET `data_action_ids`='121-122' , `description`='this row data action will change by sst_update_db_to_on_off_count_bedehkari_be_digaran() to activate and deactivate bedehkari be digaran it now will not in count bedehkari be digaran to activate it you must activate it by sst_get_option(count_bedehkari_be_digaran) set to one and automatically actvite and change data action ids to 121-123' WHERE id=32";
		$result = $wpdb->query($query);
		if($result){
			echo 'successfully deactivate count_bedehkari_be_digaran!<br>';
		}else{
			echo 'unfortunately can not deactivate count_bedehkari_be_digaran! please check sst_update_db_to_on_off_count_bedehkari_be_digaran() function or previously has been deactivated<br>';
		}
	}else{
		$query="UPDATE ".$wpdb->prefix."sst_form SET `data_action_ids`='121-123' , `description`='this row data action will change by sst_update_db_to_on_off_count_bedehkari_be_digaran() to activate and deactivate bedehkari be digaran it now will  in count bedehkari be digaran to deactivate it you must deactivate it by sst_get_option(count_bedehkari_be_digaran) set to zero and automatically deactvite and change data action ids to 121-122' WHERE id=32";
		$result = $wpdb->query($query);
		if(!$result){
			echo 'successfully deactivate count_bedehkari_be_digaran!<br>';
		}else{
			echo 'unfortunately can not activate count_bedehkari_be_digaran! please check sst_update_db_to_on_off_count_bedehkari_be_digaran() function or previously has been activated<br>';
		}

	}
		/**********************************/

}
?>