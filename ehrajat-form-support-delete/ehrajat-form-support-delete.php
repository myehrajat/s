<?php
/**
 * Plugin Name: Ehrajat Form support delete
 * Plugin URI: http://ehrajat.com
 * Description:support delete by save id
 
 * Version: 1.0.0
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
 add_action('wp_head', 'sst_delete_record');
function sst_delete_record(){
	global $wpdb;
	if(isset($_GET["delete-record"]) AND get_current_user_id()==1){
		$vals = sst_load_temporary_data($_GET["delete-record"]);
		$form_id=$vals['form'];
		$obj_form = sst_get_by_id($form_id,'sst_form');
		$data_action_ids = get_ids($obj_form->data_action_ids);
		foreach($data_action_ids as $data_action_id){
			$obj_data_action = sst_get_by_id($data_action_id,'sst_data_action');
			$tables[] = $obj_data_action->table;
		}
		$tables = array_unique($tables);
		foreach($tables as $table){
			$sql_query_delete_in_table="DELETE FROM ".$wpdb->prefix.$table." WHERE `save_id`='".$_GET["delete-record"]."'";
			if($wpdb->query($sql_query_delete_in_table)){
				echo '<div  style="font-size:18px; color:#0C0">اطلاعات از جدول '.$table.' حذف گردید.</div>';
			}else{
					echo '<div  style="font-size:18px; color:#F00">به دلیل بروز خطا اطلاعات از جدول '.$table.' حذف نگردید..</div>';
			}
		}
		$sql_query_delete_in_vals="DELETE FROM ".$wpdb->prefix."sst_vals"." WHERE `key`='".$_GET["delete-record"]."'";
		if($wpdb->query($sql_query_delete_in_vals)){
			echo '<div  style="font-size:18px; color:#0C0">اطلاعات از جدول vals حذف گردید.</div>';
		}else{
			echo '<div  style="font-size:18px; color:#F00">به دلیل بروز خطا اطلاعات از جدول vals حذف نگردید..</div>';
		}
		
	}
}