<?php
$query="SELECT khodro.id AS kid,khodro.khodro_khodro AS kkhodro_khodro,khodro.khodro_vaziyat AS kkhodro_vaziyat,khodro.khodro_model AS kkhodro_model ,khodro.khodro_rang AS kkhodro_rang,khodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani ,khodro.khodro_shomare_shasi AS kkhodro_shomare_shasi,khodro.khodro_shomare_barkode_kart AS kkhodro_shomare_barkode_kart,khodro.khodro_malek_id AS kkhodro_malek_id,khodro.khodro_saheb_emtiyaz_id AS kkhodro_saheb_emtiyaz_id,khodro.save_id AS ksave_id,malek_ashkhas.ashkhas_nam AS mashkhas_nam,malek_ashkhas.ashkhas_name_khanevadegi  AS mashkhas_name_khanevadegi,saheb_emtiyaz_ashkhas.ashkhas_nam AS sashkhas_nam,saheb_emtiyaz_ashkhas.ashkhas_name_khanevadegi  AS sashkhas_name_khanevadegi FROM wp_rent_khodro AS khodro LEFT JOIN wp_rent_ashkhas as malek_ashkhas ON malek_ashkhas.id=khodro.khodro_malek_id LEFT JOIN  wp_rent_ashkhas AS saheb_emtiyaz_ashkhas ON saheb_emtiyaz_ashkhas.id=khodro.khodro_saheb_emtiyaz_id ORDER BY khodro_khodro,khodro_model,khodro_rang,khodro_shomare_shahrbani DESC";
$rows = $wpdb->get_results($query,'ARRAY_A');
function sst_json_khodro($rows){
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
	}
	return $rows;
}
$rows = sst_json_khodro($rows);