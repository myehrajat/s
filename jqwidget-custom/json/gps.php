<?php
$query="SELECT gps.id  AS gid ,gps.gps_khodro_id AS ggps_khodro_id,gps.gps_noe_gps  AS ggps_noe_gps ,gps.gps_shomareh_sim  AS ggps_shomareh_sim ,gps.gps_shomareh_serial  AS ggps_shomareh_serial ,gps.gps_mahale_nasb  AS ggps_mahale_nasb ,gps.gps_ghatkon  AS ggps_ghatkon ,gps.gps_barghe_mostaghim  AS ggps_barghe_mostaghim ,gps.gps_shenood  AS ggps_shenood ,gps.gps_tozihat  AS ggps_tozihat, gps.save_id  AS gsave_id ,khodro.id AS kid,khodro.khodro_khodro AS kkhodro_khodro,khodro.khodro_model AS kkhodro_model,khodro.khodro_rang AS kkhodro_rang,khodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani,khodro.save_id AS ksave_id FROM wp_rent_gps AS gps LEFT JOIN wp_rent_khodro AS khodro ON gps.gps_khodro_id=khodro.id ORDER BY gps.id ASC";
$rows = $wpdb->get_results($query,'ARRAY_A');
function sst_json_gps($rows){
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
	}
	return $rows;
}
dbg($rows);
$rows = sst_json_gps($rows);