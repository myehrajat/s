<?php
/**
	ashkhas.save_id AS asave_id,
 * Plugin Name: sst_add_asli_shakhs
 * Plugin URI: http://ehrajat.com
 * Description:update asli witch is empty with sherkat no
 
 * Version: 1.3
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
 add_action('wp-footer', 'sst_add_asli_shakhs');
function sst_add_asli_shakhs(){
	set_time_limit( 0 );
	$enale=true;
	$verbose=false;//give information what have be done!
	$limit_per_once=100;
	if($enale){
		global $wpdb;
		$query_soorathesab="SELECT DISTINCT save_id FROM wp_rent_soorathesab WHERE soorathesab_asli_ashkhas_id='' LIMIT ".$limit_per_once;
		//dbg($query_soorathesab);
		//
		$soorathesabs = $wpdb->get_results($query_soorathesab);
		//dbg($soorathesabs);
		//die();
		if(count($soorathesabs)>0){
			foreach($soorathesabs as $soorathesab){
				if($verbose){
					echo sst_update_single_col_by_save_id($soorathesab->save_id,'wp_rent_soorathesab','soorathesab_asli_ashkhas_id',11).'<br>';

					echo sst_add_array_element_to_vals_table($soorathesab->save_id,'soorathesab_asli_ashkhas_id',11,'soorathesab_ashkhas_id').'<br>';
				}else{
					 sst_update_single_col_by_save_id($soorathesab->save_id,'wp_rent_soorathesab','soorathesab_asli_ashkhas_id',11).'<br>';

					 sst_add_array_element_to_vals_table($soorathesab->save_id,'soorathesab_asli_ashkhas_id',11,'soorathesab_ashkhas_id').'<br>';
				}

			}
			echo 'we have done sth for sst_add_asli_shakhs to set it nulls to 11';
		}else{
			//echo 'no more thing to do... sst_add_asli_shakhs';
		}
		//dbg();
	}
}









function sst_get_array_vals_table($save_id){
	global $wpdb;
	$sqlget_vals="SELECT * FROM wp_sst_vals WHERE `key`='".$save_id."'";
	$vals = $wpdb->get_results($sqlget_vals);
	$array_vals = unserialize($vals[0]->value);
	return $array_vals;
}
function  sst_put_array_vals_table($save_id,$vals){
	global $wpdb;
	$vals = serialize($vals);
	$sqlupdatevals="UPDATE wp_sst_vals SET `value` = '".$vals."' WHERE `key`='".$save_id."';";
	$result = $wpdb->query($sqlupdatevals);
	if($result===false){
		return 'error has occured in sst_put_array_vals()'.$save_id;
	}elseif($result===0){
		return 'no rows affected in sst_put_array_vals() may be you save_id is incorrect'.$save_id;
	}else{
		return 'success: '.$result.' rows affected in sst_put_array_vals() affected key is '.$save_id;
	}
	
}
function sst_add_array_element_to_vals_table($save_id,$element_val_key,$element_val_value,$check_existace_key=false){
	global $wpdb;
	$vals = sst_get_array_vals_table($save_id);
	//this is for checking the existance of one element is vals for example you want to change only soorathesab added to val by soorathesab form not gharardad
	//dbg($vals);
	if(isset($vals[$check_existace_key])){
		$vals[$element_val_key]=$element_val_value;
		return sst_put_array_vals_table($save_id,$vals);
	}else{
		return 'check_existace_key for "'.$check_existace_key.'" in vals table exist and tell us dont change vals_table value'.$save_id;
	}

}

function sst_update_single_col_by_save_id($save_id,$table,$col_name,$col_val){
	global $wpdb;
	$sql_update="UPDATE ".$table." SET `".$col_name."`='".$col_val."' WHERE `save_id`='".$save_id."';";
	$result = $wpdb->query($sql_update);
	//dbg($sql_update);
	if($result===false){
		return 'error has occured in sst_update_single_col_by_save_id()'.$save_id;
	}elseif($result===0){
		return 'no rows affected in sst_update_single_col_by_save_id() may be you save_id is incorrect'.$save_id;
	}else{
		return 'success: '.$result.' rows affected in sst_update_single_col_by_save_id() affected key is '.$save_id;
	}
}
