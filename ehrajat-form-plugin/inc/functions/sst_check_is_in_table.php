<?php
function sst_check_is_in_table($arr,$table,$exclude_to_check_arr=NULL){
	global $wpdb;
	if($exclude_to_check_arr){
		foreach($exclude_to_check_arr as $exclude_to_check){
			unset($arr[$exclude_to_check]);
		}
	}
	foreach($arr as $k=>$v){
		$arr_keys[]=$k;
	}
	$i=0;
		$sql.="SELECT * FROM ".$wpdb->prefix.$table." WHERE ";
		foreach($arr as $one_var){
			$sql.= "`".$arr_keys[$i]."`=";
			$sql.= "'".$one_var."' AND ";
			$i++;
		}
		$sql.= "1=1 LIMIT 1";
		$result=$wpdb->get_results($sql);
		//dbg($result);
		if(!empty($result)){
			//$insert_id = $wpdb->insert_id;
			return true;
		}else{
			return false;	
		}
}