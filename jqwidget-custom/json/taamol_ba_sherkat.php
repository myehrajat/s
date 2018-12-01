<?php
$query="SELECT taamol_ba_sherkat.id AS tbsid,ashkhas.id AS aid,taamol_ba_sherkat.save_id AS tbssave_id,taamol.taamol_taamol AS ttaamol_taamol,ashkhas.save_id AS asave_id, ashkhas.ashkhas_nam AS aashkhas_nam ,ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi ,ashkhas.ashkhas_kode_meli AS aashkhas_kode_meli,ashkhas.ashkhas_shomare_shenasname AS aashkhas_shomare_shenasname,ashkhas.ashkhas_name_pedar AS aashkhas_name_pedar,ashkhas.ashkhas_sadere_az AS aashkhas_sadere_az,ashkhas.ashkhas_tarikhe_tavalod AS aashkhas_tarikhe_tavalod FROM wp_rent_taamol as taamol,wp_rent_ashkhas AS ashkhas, wp_rent_taamol_ba_sherkat AS taamol_ba_sherkat  WHERE ashkhas.id=taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id AND taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol=taamol.id ORDER BY ashkhas.id DESC";
$rows = $wpdb->get_results($query,'ARRAY_A');
function sst_json_taamol_ba_sherkat($rows){
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
	}
	return $rows;
}
$rows = sst_json_taamol_ba_sherkat($rows);