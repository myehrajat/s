<?php
/**
	ashkhas.save_id AS asave_id,
 * Plugin Name:  ehrajat form custom 
 * Plugin URI: http://ehrajat.com
 * Description:support delete by save id
 
 * Version: 1.3
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */

/**
 * Detect plugin. For use on Front End and Back End.
 */
// check for plugin using plugin name


if ( in_array( 'ehrajat-form-plugin/index.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) ) {
	//plugin is activated

	require_once( 'setup/' . 'sst_include_form' . '.php' );
	require_once( 'setup/' . 'custom_db' . '.php' );
	require_once( 'setup/' . 'sst_add_ehrajat_custom_options' . '.php' );

	
	require_once( 'custom_func/datetime/' . 'general' . '.php' );

	require_once( 'custom_func/rooz/' . 'rooz_general' . '.php' );
	require_once( 'custom_func/rooz/' . 'sst_mohasebe_hazine_rooz' . '.php' );
	require_once( 'custom_func/rooz/' . 'sst_text_sabt_rooz' . '.php' );
	require_once( 'custom_func/rooz/' . 'sst_insert_rooz_by_query' . '.php' );
	
	require_once( 'custom_func/benzin/' . 'sst_mohasebe_hazine_benzin' . '.php' );
	require_once( 'custom_func/benzin/' . 'sst_text_sabt_benzin' . '.php' );

	require_once( 'custom_func/odo/' . 'sst_mohasebe_hazine_odo' . '.php' );
	require_once( 'custom_func/odo/' . 'sst_text_sabt_odo' . '.php' );
	
	require_once( 'custom_func/takhir/' . 'sst_get_time_diff_zarib' . '.php' );
	require_once( 'custom_func/takhir/' . 'sst_mohasebe_hazine_takhir' . '.php' );
	require_once( 'custom_func/takhir/' . 'sst_text_sabt_takhir' . '.php' );
	
	require_once( 'custom_func/ayab_zahab/' . 'sst_text_sabt_ayab_zahab' . '.php' );
	
	require_once( 'custom_func/takhfif/' . 'sst_text_sabt_takhfif' . '.php' );

	require_once( 'custom_func/karvash/' . 'sst_text_sabt_karvash' . '.php' );

	require_once( 'custom_func/baravorde_khabe_khesarat/' . 'sst_text_sabt_baravorde_khabe_khesarat' . '.php' );
	
	require_once( 'custom_func/baravorde_khesarat/' . 'sst_text_sabt_baravorde_khesarat' . '.php' );
	
	require_once( 'soorathesab/' . 'sst_decide_shakhs_id_to_sabt_in_soorathesab' . '.php' );
	require_once( 'soorathesab/' . 'sst_text_in_soorathesab_insert' . '.php' );
	require_once( 'soorathesab/' . 'sst_delete_null_soorat_hesab' . '.php' );
	require_once( 'soorathesab/' . 'sst_gharardad_insert_hesab' . '.php' );
	require_once( 'soorathesab/' . 'sst_update_soorathesab_temp_save_id' . '.php' );
	require_once( 'soorathesab/' . 'sst_sabt_tozihat_for_soorathesab_bein_ashkhas_ba_vaseteh' . '.php' );

	require_once( 'mojoodi/' . 'sst_change_khodro_mojoodi' . '.php' );
	
	require_once( 'tahvil_odat/' . 'sst_gharardad_insert_odat_ashkhas' . '.php' );
	require_once( 'tahvil_odat/' . 'sst_gharardad_insert_tahvil_ashkhas' . '.php' );
} else {
	echo '<script>alert("activate ehrajat-form-plugin/index.php!");</script>';

}