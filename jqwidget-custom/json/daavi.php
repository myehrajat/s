<?php

function sst_json_daavi(){
	global $wpdb;
$query="SELECT 

		daavi.id AS did,
		daavi.daavi_vaziyat AS ddaavi_vaziyat,
		daavi.daavi_ashkhas_id AS ddaavi_ashkhas_id,
		daavi.daavi_shaki AS ddaavi_shaki,
		daavi.daavi_moteshaki AS ddaavi_moteshaki,
		daavi.daavi_mozoo AS ddaavi_mozoo,
		daavi.daavi_khodro_id AS ddaavi_khodro_id,
		daavi.daavi_noe_dava AS ddaavi_noe_dava,
		daavi.daavi_marhaleye_residegi AS ddaavi_marhaleye_residegi,
		daavi.daavi_mahale_residegi AS ddaavi_mahale_residegi,
		daavi.daavi_shobe AS ddaavi_shobe,
		daavi.daavi_kalantri AS ddaavi_kalantri,
		daavi.daavi_shomareh_parvandeh_kalantri AS ddaavi_shomareh_parvandeh_kalantri,
		daavi.daavi_shomareh_parvandeh AS ddaavi_shomareh_parvandeh,
		daavi.daavi_shomareh_baygani AS ddaavi_shomareh_baygani,
		daavi.daavi_tarikh_morajeh_badi AS ddaavi_tarikh_morajeh_badi,
		daavi.daavi_eghdamate_lazem AS ddaavi_eghdamate_lazem,
		daavi.daavi_raye_nahayi AS ddaavi_raye_nahayi,
		daavi.daavi_tasvir_raye_nahayi AS ddaavi_tasvir_raye_nahayi,
		daavi.daavi_marhaleye_ghabl_id AS ddaavi_marhaleye_ghabl_id,
		daavi.daavi_tozihat AS ddaavi_tozihat,
		daavi.save_id AS dsave_id,


		ashkhas.id AS aid,
		ashkhas.ashkhas_nam AS aashkhas_nam,
		ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,

		khodro.id AS  kid,
		khodro.khodro_khodro AS kkhodro_khodro,
		khodro.khodro_rang AS kkhodro_rang,
		khodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani,
		
		mgdaavi.id AS mgdid,
		mgdaavi.save_id AS mgdsave_id
		FROM 	
		wp_rent_daavi AS daavi
		LEFT JOIN wp_rent_ashkhas AS ashkhas 
			ON daavi.daavi_ashkhas_id =  ashkhas.id
		LEFT JOIN wp_rent_khodro AS khodro 
			ON daavi.daavi_khodro_id = khodro.id 
		LEFT JOIN wp_rent_daavi AS mgdaavi
			ON daavi.daavi_marhaleye_ghabl_id = mgdaavi.id
		ORDER BY daavi.daavi_tarikh_morajeh_badi ASC";
$rows = $wpdb->get_results($query,'ARRAY_A');

	return $rows;
}
