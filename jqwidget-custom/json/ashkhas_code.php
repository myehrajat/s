<?php

function sst_json_ashkhas_code() {
	global $wpdb;
	$query = "SELECT
	ashkhas.id AS aid,
	ashkhas.ashkhas_moaref AS aashkhas_moaref,
	ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,
	ashkhas.ashkhas_nam AS aashkhas_nam,
	ashkhas.ashkhas_kode_meli AS aashkhas_kode_meli,
	ashkhas.save_id AS asave_id,
	moaref.id AS moaref_id,
	moaref.ashkhas_name_khanevadegi AS moaref_name_khanevadegi,
	moaref.ashkhas_nam AS moaref_nam
FROM
	wp_rent_ashkhas AS ashkhas
LEFT JOIN wp_rent_ashkhas AS moaref ON ashkhas.ashkhas_moaref = moaref.id
ORDER BY
	ashkhas.id DESC";
	$rows = $wpdb->get_results( $query, 'ARRAY_A' );


	return $rows;
}
?>