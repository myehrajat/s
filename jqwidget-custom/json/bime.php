<?php
$query="SELECT bime.id AS bid,bime.bime_khodro_id AS bbime_khodro_id,bime.bime_noe_bime AS bbime_noe_bime,bime.bime_sherkate_bime AS bbime_sherkate_bime,bime.bime_kode_namyandegi AS bbime_kode_namyandegi,bime.bime_shomareh_bime AS bbime_shomareh_bime,bime.bime_tarikhe_engheza AS bbime_tarikhe_engheza,bime.bime_tasvire_bime AS bbime_tasvire_bime,bime.bime_tasvire_govahi_sodoor AS bbime_tasvire_govahi_sodoor,bime.bime_tozihat AS bbime_tozihat,bime.save_id AS bsave_id,khodro.id AS kid,khodro.khodro_khodro AS kkhodro_khodro,khodro.khodro_model AS kkhodro_model,khodro.khodro_rang AS kkhodro_rang,khodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani,khodro.save_id AS ksave_id FROM wp_rent_bime AS bime LEFT JOIN wp_rent_khodro AS khodro ON bime.bime_khodro_id=khodro.id ORDER BY bime.bime_tarikhe_engheza ASC";
$rows = $wpdb->get_results($query,'ARRAY_A');
function sst_json_bime($rows){
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
	}
	return $rows;
}
$rows = sst_json_bime($rows);