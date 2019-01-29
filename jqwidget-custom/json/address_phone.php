<?php
$query="SELECT
	address_phone.save_id AS apsave_id,
	address_phone.id AS apid,
	address_phone.address_phone_nesbat AS apaddress_phone_nesbat,
	address_phone.address_phone_nam AS apaddress_phone_nam,
	address_phone.address_phone_phone AS apaddress_phone_phone,
	address_phone.address_phone_address AS apaddress_phone_address,
	address_phone.address_phone_tozihat AS apaddress_phone_tozihat,
	ashkhas.id AS aid,
	ashkhas.ashkhas_tasvire_fard AS aashkhas_tasvire_fard,
	ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,
	ashkhas.ashkhas_nam AS aashkhas_nam,
	ashkhas.ashkhas_kode_meli AS aashkhas_kode_meli,
	ashkhas.save_id AS asave_id,
	ashkhas.ashkhas_moaref AS aashkhas_moaref,
	ashkhas_moaref.id AS amid,
	ashkhas_moaref.ashkhas_name_khanevadegi AS amashkhas_name_khanevadegi,
	ashkhas_moaref.ashkhas_nam AS amashkhas_nam

FROM
	wp_rent_ashkhas AS ashkhas
	LEFT JOIN 
	wp_rent_address_phone AS address_phone 
ON
	ashkhas.id = address_phone_ashkhas_id 
LEFT JOIN 
	wp_rent_ashkhas AS ashkhas_moaref
ON
	ashkhas.ashkhas_moaref=ashkhas_moaref.id
ORDER BY
	ashkhas.id DESC";
$rows = $wpdb->get_results($query,'ARRAY_A');
function sst_json_address_phone($rows){
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
	}
	return $rows;
}
$rows = sst_json_address_phone($rows);