<?php
$query="SELECT tahvil_odat.id AS toid, tahvil_odat.tahvil_odat_ashkhas_id AS toashkhas_id, tahvil_odat.tahvil_odat_khodro_id AS tokhodro_id, tahvil_odat.tahvil_odat_tarikh AS totarikh, tahvil_odat.tahvil_odat_tozihat AS totozihat, tahvil_odat.save_id AS tosave_id, ashkhas.id AS aid , ashkhas.ashkhas_nam AS aashkhas_nam , ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi , ashkhas.ashkhas_kode_meli AS aashkhas_kode_meli, ashkhas.save_id AS asave_id, khodro.id AS kid , khodro.khodro_khodro AS kkhodro_khodro , khodro.khodro_model AS kkhodro_model, khodro.khodro_rang AS kkhodro_rang, khodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani, khodro.save_id AS ksave_id FROM wp_rent_tahvil_odat as tahvil_odat LEFT JOIN wp_rent_ashkhas AS ashkhas ON tahvil_odat.tahvil_odat_ashkhas_id=ashkhas.id LEFT JOIN wp_rent_khodro AS khodro ON tahvil_odat.tahvil_odat_khodro_id=khodro.id ORDER BY tahvil_odat.tahvil_odat_tarikh DESC";
$rows = $wpdb->get_results($query,'ARRAY_A');
function sst_json_tahvil_odat($rows){
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
	}
	return $rows;
}
$rows = sst_json_tahvil_odat($rows);