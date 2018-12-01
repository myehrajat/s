<?php
/**
	ashkhas.save_id AS asave_id,
 * Plugin Name:add taeeed gharardad
 * Plugin URI: http://ehrajat.com
 * Description:support delete by save id
 
 * Version: 1.3
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
set_time_limit(0);
/*
ALTER TABLE `wp_rent_gharardad`
ADD COLUMN `gharardad_check`  varchar(255) NULL AFTER `gharardad_mohasebe_odo`;

*/
global $wpdb;
$query="SELECT * FROM wp_sst_vals";
$results = $wpdb->get_results($query);
$i=0;
foreach($results as $result){
	$vals = unserialize($result->value);
	switch ($vals['form']){
		case "20"://gharardad add تایید شد
			if($vals['gharardad_check']<>'تایید شد'){
				$vals['gharardad_check']='تایید شد';
				$sql = "UPDATE wp_sst_vals SET `value`='".addslashes(serialize($vals))."' WHERE `key`='".$result->key."' ";
				dbg($wpdb->query($sql));
				$sql = "UPDATE wp_rent_gharardad SET `gharardad_check`='تایید شد' WHERE `save_id`='".$result->key."' ";
				dbg($wpdb->query($sql));
				echo $i++.'<br>';
			}
		break;
	}
}
//dbg($results);