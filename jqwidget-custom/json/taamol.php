<?php
$query="SELECT id , taamol_taamol ,save_id FROM wp_rent_taamol ORDER BY taamol_taamol ASC";
$rows = $wpdb->get_results($query,'ARRAY_A');
function sst_json_taamol($rows){
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
	}
	return $rows;
}
$rows = sst_json_taamol($rows);