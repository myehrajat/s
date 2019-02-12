<?php
/*
modified:1396/10/21

ALTER TABLE `wp_rent_gharardad`
ADD COLUMN `gharardad_check`  varchar(255) NULL AFTER `gharardad_takhfif`,

*/
$dbprefix='rent_';
global $wpdb;
	$sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "ashkhas" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`ashkhas_nam` VARCHAR(255) NOT NULL,".
        "`ashkhas_name_khanevadegi` VARCHAR(255) NOT NULL,".
        "`ashkhas_name_pedar` VARCHAR(255) NOT NULL,".
        "`ashkhas_shomare_shenasname` VARCHAR(255) NOT NULL,".
        "`ashkhas_kode_meli` VARCHAR(255) NOT NULL,".
        "`ashkhas_tarikhe_tavalod` VARCHAR(255) NOT NULL,".
        "`ashkhas_sadere_az` VARCHAR(255) NOT NULL,".
        "`ashkhas_tasvire_fard` VARCHAR(255) NOT NULL,".
        "`ashkhas_moaref` VARCHAR(255) NOT NULL,".
        "`ashkhas_tozihat` LONGTEXT DEFAULT NULL,".
		"`ashkhas_vaziyat_hesab` VARCHAR(255) NOT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "PRIMARY KEY id  (`id`)) $collate;";
		
	$wpdb->query($sql);
	
	

    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "address_phone" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`address_phone_ashkhas_id` VARCHAR(255) NOT NULL,".
        "`address_phone_nam` VARCHAR(255) NOT NULL,".
        "`address_phone_nesbat` VARCHAR(255) NOT NULL,".
        "`address_phone_address` VARCHAR(255) NOT NULL,".
        "`address_phone_phone` VARCHAR(255) NOT NULL,".
        "`address_phone_tozihat` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);

    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "taamol_ba_sherkat" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`taamol_ba_sherkat_ashkhas_id` VARCHAR(255) NOT NULL,".
        "`taamol_ba_sherkat_noe_taamol` VARCHAR(255) NOT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
	
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "taamol" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`taamol_taamol` VARCHAR(255) NOT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "mogheiyat_gps" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`mogheiyat_gps_ashkhas_id` VARCHAR(255) NOT NULL,".
        "`mogheiyat_gps_long` VARCHAR(255) NOT NULL,".
        "`mogheiyat_gps_lat` VARCHAR(255) NOT NULL,".
        "`mogheiyat_gps_tarikh_saat` VARCHAR(255) NOT NULL,".
        "`mogheiyat_gps_tozihat` VARCHAR(255) NOT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
	//needed because wpdb object is not natively included
	$sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "khodro" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`khodro_brand` VARCHAR(255) NOT NULL,".
        "`khodro_nam` VARCHAR(255) NOT NULL,".
        "`khodro_khodro` VARCHAR(255) NOT NULL,".
        "`khodro_model` VARCHAR(255) NOT NULL,".
        "`khodro_rang` VARCHAR(255) NOT NULL,".
        "`khodro_class` VARCHAR(255) NOT NULL,".
        "`khodro_hajme_bak` VARCHAR(255) NOT NULL,".
        "`khodro_hajme_motor` VARCHAR(255) NOT NULL,".
        "`khodro_dande` VARCHAR(255) NOT NULL,".
        "`khodro_masraf` VARCHAR(255) NOT NULL,".
        "`khodro_sarneshin` VARCHAR(255) NOT NULL,".
        "`khodro_tedad_dar` VARCHAR(255) NOT NULL,".
        "`khodro_option` VARCHAR(255) NOT NULL,".
        "`khodro_odo_mojaz` VARCHAR(255) NOT NULL,".
        "`khodro_shomare_shahrbani` VARCHAR(255) NOT NULL,".
        "`khodro_shomare_vin` VARCHAR(255) NOT NULL,".
        "`khodro_shomare_shasi` VARCHAR(255) NOT NULL,".
        "`khodro_shomare_motor` VARCHAR(255) NOT NULL,".
        "`khodro_shomare_barkode_kart` VARCHAR(255) NOT NULL,".
        "`khodro_malek_id` VARCHAR(255) NOT NULL,".
        "`khodro_saheb_emtiyaz_id` VARCHAR(255) NOT NULL,".
        "`khodro_tozihat` LONGTEXT DEFAULT NULL,".
        "`khodro_vaziyat` VARCHAR(255) NOT NULL,".
        "`khodro_daily_price` VARCHAR(255) NOT NULL,".
        "`khodro_weekly_price` VARCHAR(255) NOT NULL,".
        "`khodro_half_monthly_price` VARCHAR(255) NOT NULL,".
        "`khodro_monthly_price` VARCHAR(255) NOT NULL,".
        "`khodro_takhfif` VARCHAR(255) NOT NULL,".
        "`khodro_img_front` LONGTEXT DEFAULT NULL,".
        "`khodro_img_back` LONGTEXT DEFAULT NULL,".
        "`khodro_img_side` LONGTEXT DEFAULT NULL,".
        "`khodro_img_front_prespective` LONGTEXT DEFAULT NULL,".
        "`khodro_img_back_prespective` LONGTEXT DEFAULT NULL,".
        "`khodro_img_interior` LONGTEXT DEFAULT NULL,".
        "`khodro_img_1` LONGTEXT DEFAULT NULL,".
        "`khodro_img_2` LONGTEXT DEFAULT NULL,".
        "`khodro_img_3` LONGTEXT DEFAULT NULL,".
        "`khodro_img_4` LONGTEXT DEFAULT NULL,".
        "`khodro_img_5` LONGTEXT DEFAULT NULL,".
        "`khodro_img_6` LONGTEXT DEFAULT NULL,".
        "`khodro_img_7` LONGTEXT DEFAULT NULL,".
        "`khodro_img_8` LONGTEXT DEFAULT NULL,".
        "`khodro_img_9` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);

	$sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "bime" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`bime_khodro_id` VARCHAR(255) NOT NULL,".
        "`bime_noe_bime` VARCHAR(255) NOT NULL,".
        "`bime_sherkate_bime` VARCHAR(255) NOT NULL,".
        "`bime_kode_namyandegi` VARCHAR(255) NOT NULL,".
        "`bime_shomareh_bime` VARCHAR(255) NOT NULL,".
        "`bime_tarikhe_engheza` VARCHAR(255) NOT NULL,".
        "`bime_tasvire_bime` LONGTEXT DEFAULT NULL,".
        "`bime_tasvire_govahi_sodoor` LONGTEXT DEFAULT NULL,".
        "`bime_tozihat` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
	$sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "gps" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`gps_khodro_id` VARCHAR(255) NOT NULL,".
        "`gps_noe_gps` VARCHAR(255) NOT NULL,".
        "`gps_shomareh_sim` VARCHAR(255) NOT NULL,".
		"`gps_malek_sim` VARCHAR (255) NULL,".
        "`gps_shomareh_serial` VARCHAR(255) NOT NULL,".
        "`gps_mahale_nasb` VARCHAR(255) NOT NULL,".
        "`gps_ghatkon` VARCHAR(255) NOT NULL,".
        "`gps_barghe_mostaghim` VARCHAR(255) NOT NULL,".
        "`gps_shenood` VARCHAR(255) NOT NULL,".
        "`gps_direct_link_1` LONGTEXT DEFAULT NULL,".
        "`gps_direct_link_2` LONGTEXT DEFAULT NULL,".
        "`gps_direct_link_3` LONGTEXT DEFAULT NULL,".
        "`gps_direct_link_4` LONGTEXT DEFAULT NULL,".
        "`gps_direct_link_5` LONGTEXT DEFAULT NULL,".
        "`gps_tozihat` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";
    $wpdb->query($sql);
	$sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "gps_charge" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`gps_charge_gps_id` VARCHAR(255) NOT NULL,".
        "`gps_charge_mablaghe_charge` VARCHAR(255) NOT NULL,".
        "`gps_charge_tarikhe_charge` VARCHAR(255) NOT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
	$sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "servis" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`servis_khodro_id` VARCHAR(255) NOT NULL,".
        "`servis_noe_servis` VARCHAR(255) NOT NULL,".
        "`servis_sharh` LONGTEXT DEFAULT NULL,".
        "`servis_kilometer` VARCHAR(255) NOT NULL,".
        "`servis_tarikh` VARCHAR(255) NOT NULL,".
        "`servis_mahale_servis` VARCHAR(255) NOT NULL,".
        "`servis_servis_konnadeh_id` VARCHAR(255) NOT NULL,".
        "`servis_hazine` VARCHAR(255) NOT NULL,".
        "`servis_tasvire_faktor` VARCHAR(255) NOT NULL,".
        "`servis_tozihat` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
	$sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "servis_tamirat_morede_niyaz" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`servis_tamirat_morede_niyaz_tarikh_elam` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_tarikh_shoroe_tamir` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_tarikh_payane_tamir` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_khodro_id` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_sharhe_servis` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_vaziyat` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_kilometer_anjam` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_anjam_dahandeh` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_mechanic` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_hazineh` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_tasvire_faktor` VARCHAR(255) NOT NULL,".
        "`servis_tamirat_morede_niyaz_tozihat` LONGTEXT DEFAULT NULL,".
		"`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";

    $wpdb->query($sql);
/*
ALTER TABLE `wp_rent_gharardad`
DROP COLUMN `gharardad_hazineye_softeh`,
DROP COLUMN `gharardad_vadieh`,
ADD COLUMN `gharardad_hazineye_softeh`  int(255) NULL AFTER `gharardad_takhfif`,
ADD COLUMN `gharardad_vadieh`  int(255) NULL AFTER `gharardad_hazineye_softeh`;
*/

    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "gharardad" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`gharardad_shomare_gharardad` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_mostajer_id` int(255) DEFAULT NULL,".
        "`gharardad_mojer_id` int(255) DEFAULT NULL,".
        "`gharardad_khodro_id` int(255) DEFAULT NULL,".
        "`gharardad_tarikhe_tahvil` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_tarikhe_odat` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_vadeye_tarikhe_odat` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_doreye_zamani_ejareh` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_gheymate` int(255) DEFAULT NULL,".
        "`gharardad_odo_mojaz` int(255) DEFAULT NULL,".
        "`gharardad_odo_avaliye` int(255) DEFAULT NULL,".
        "`gharardad_odo_sanaviye` int(255) DEFAULT NULL,".
        "`gharardad_odo_hazine` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_benzin_avaliye` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_benzin_sanaviye` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_tahvil_dahande` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_mahale_tahvil` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_tahvil_girande` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_mahale_odat` VARCHAR(255) DEFAULT NULL,".
        "`gharardad_sharhe_khesarat` LONGTEXT DEFAULT NULL,".
        "`gharardad_baravorde_khesarat` int(255) DEFAULT NULL,".
        "`gharardad_baravorde_khabe_khesarat` int(255) DEFAULT NULL,".
        "`gharardad_hazineye_karvash` int(255) DEFAULT NULL,".
        "`gharardad_hazineye_ayab_zahab` int(255) DEFAULT NULL,".
        "`gharardad_hazineye_softeh` int(255) DEFAULT NULL,".
        "`gharardad_vadieh` int(255) DEFAULT NULL,".
        "`gharardad_takhfif` int(255) DEFAULT NULL,".
		"`gharardad_check` VARCHAR(255) DEFAULT NULL,".		
        "`gharardad_tozihat` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";
    $wpdb->query($sql);
	/*ALTER TABLE `wp_rent_gharardad`
ADD COLUMN `gharardad_takhfif`  varchar(255) NULL AFTER `gharardad_hazineye_ayab_zahab`;
*/

    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "vasayegh" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`vasayegh_gharardad_id` VARCHAR(255) DEFAULT NULL,".
        "`vasayegh_noe_vasighe_id` VARCHAR(255) DEFAULT NULL,".
        "`vasayegh_tasvire_vasighe` VARCHAR(255) DEFAULT NULL,".
        "`vasayegh_mablaghe_vasighe` VARCHAR(255) DEFAULT NULL,".
        "`vasayegh_tozihat` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";
    $wpdb->query($sql);
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "noe_vasayegh" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`noe_vasayegh_noe_vasighe` VARCHAR(255) DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";
    $wpdb->query($sql);
	
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "soorathesab" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`soorathesab_ashkhas_id` VARCHAR(255) NOT NULL,".
        "`soorathesab_tarikh` VARCHAR(255) NOT NULL,".
		"`soorathesab_variz` VARCHAR(255) NOT NULL,".
        "`soorathesab_bedehi` VARCHAR(255) NOT NULL,".
        "`soorathesab_khodro_id` VARCHAR(255) DEFAULT NULL,".
        "`soorathesab_babat` LONGTEXT DEFAULT NULL,".
        "`soorathesab_sanad` LONGTEXT DEFAULT NULL,".
        "`soorathesab_tozihat` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";
    $wpdb->query($sql);
	
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "tahvil_odat" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`tahvil_odat_ashkhas_id` VARCHAR(255) NOT NULL,".
        "`tahvil_odat_khodro_id` VARCHAR(255) DEFAULT NULL,".
        "`tahvil_odat_tarikh` VARCHAR(255) DEFAULT NULL,".
        "`tahvil_odat_tozihat` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";
    $wpdb->query($sql);
	
    $sql = "CREATE TABLE IF NOT EXISTS ". $wpdb->prefix . $dbprefix . "daavi" ." (".
        "`id` INT(10) NOT NULL auto_increment,".
        "`daavi_vaziyat` VARCHAR(255) NOT NULL,".
        "`daavi_ashkhas_id` VARCHAR(255) NOT NULL,".
        "`daavi_shaki` VARCHAR(255) NOT NULL,".
        "`daavi_moteshaki` VARCHAR(255) NOT NULL,".
        "`daavi_mozoo` VARCHAR(255) NOT NULL,".
        "`daavi_khodro_id` VARCHAR(255) NOT NULL,".
        "`daavi_noe_dava` VARCHAR(255) NOT NULL,".
        "`daavi_marhaleye_residegi` VARCHAR(255) NOT NULL,".
        "`daavi_mahale_residegi` VARCHAR(255) NOT NULL,".
        "`daavi_shobe` VARCHAR(255) NOT NULL,".
        "`daavi_kalantri` VARCHAR(255) NOT NULL,".
        "`daavi_shomareh_parvandeh_kalantri` VARCHAR(255) NOT NULL,".
        "`daavi_shomareh_parvandeh` VARCHAR(255) NOT NULL,".
        "`daavi_shomareh_baygani` VARCHAR(255) NOT NULL,".
        "`daavi_tarikh_morajeh_badi` VARCHAR(255) NOT NULL,".
        "`daavi_eghdamate_lazem` LONGTEXT DEFAULT NULL,".
        "`daavi_raye_nahayi` LONGTEXT DEFAULT NULL,".
        "`daavi_tasvir_raye_nahayi` LONGTEXT DEFAULT NULL,".
        "`daavi_marhaleye_ghabl_id` VARCHAR(255) NOT NULL,".
        "`daavi_tozihat` LONGTEXT DEFAULT NULL,".
        "`save_id` VARCHAR(255) DEFAULT NULL,".
        "`sabt_konande_id` VARCHAR(255) NOT NULL,".
        "`virayesh_konnade_id` VARCHAR(255) NOT NULL,".
        "`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',".
        "`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
        PRIMARY KEY id  (`id`)) $collate;";
//echo  $sql;
    $wpdb->query($sql);
/*
*/
