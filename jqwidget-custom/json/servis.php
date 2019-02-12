<?php
//this query get max odo avaliye va sanaviye but kam kardan kilometers what should i do i dont know?
/*








SELECT
	ashkhas.save_id AS asave_id,
	ashkhas.id AS aid,
	ashkhas.ashkhas_nam AS aashkhas_nam,
	ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,
	ashkhas.ashkhas_kode_meli AS aashkhas_kode_meli,
	servis.id AS sid,
	servis.servis_khodro_id AS sservis_khodro_id,
	servis.servis_noe_servis AS sservis_noe_servis,
	servis.servis_sharh AS sservis_sharh,
	servis.servis_kilometer AS sservis_kilometer,
	servis.servis_tarikh AS sservis_tarikh,
	servis.servis_mahale_servis AS sservis_mahale_servis,
	servis.servis_servis_konnadeh_id AS sservis_servis_konnadeh_id,
	servis.servis_hazine AS sservis_hazine,
	servis.servis_tasvire_faktor AS sservis_tasvire_faktor,
	servis.servis_tozihat AS sservis_tozihat,
	servis.save_id AS ssave_id,
	khodro.id AS kid,
	khodro.khodro_khodro AS kkhodro_khodro,
	khodro.khodro_model AS kkhodro_model,
	khodro.khodro_rang AS kkhodro_rang,
	khodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani,
	khodro.save_id AS ksave_id,

	gharardad_sanaviye.gharardad_odo_sanaviye,
	gharardad_sanaviye.gharardad_khodro_id,
	gharardad_avaliye.gharardad_odo_avaliye,
	gharardad_avaliye.gharardad_khodro_id
FROM
	wp_rent_servis AS servis
LEFT JOIN wp_rent_khodro AS khodro ON servis.servis_khodro_id = khodro.id
LEFT JOIN wp_rent_ashkhas AS ashkhas ON servis.servis_servis_konnadeh_id = ashkhas.id
LEFT JOIN (
	SELECT
		gharardad_khodro_id,
		MAX(gharardad_odo_avaliye) as gharardad_odo_avaliye
	FROM
		wp_rent_gharardad
	GROUP BY
		gharardad_khodro_id 
) AS gharardad_avaliye ON gharardad_avaliye.gharardad_khodro_id = khodro.id 
LEFT JOIN (
	SELECT
		gharardad_khodro_id,
		MAX(gharardad_odo_sanaviye) as gharardad_odo_sanaviye
	FROM
		wp_rent_gharardad
	GROUP BY
		gharardad_khodro_id
) AS gharardad_sanaviye ON gharardad_sanaviye.gharardad_khodro_id = khodro.id


ORDER BY
	servis.servis_tarikh ASC*/






//add get to seperate services
$query="SELECT
	ashkhas.save_id AS asave_id,
	ashkhas.id AS aid,
	ashkhas.ashkhas_nam AS aashkhas_nam,
	ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,
	ashkhas.ashkhas_kode_meli AS aashkhas_kode_meli,
	servis.id AS sid,
	servis.servis_khodro_id AS sservis_khodro_id,
	servis.servis_noe_servis AS sservis_noe_servis,
	servis.servis_sharh AS sservis_sharh,
	servis.servis_kilometer AS sservis_kilometer,
	servis.servis_tarikh AS sservis_tarikh,
	servis.servis_mahale_servis AS sservis_mahale_servis,
	servis.servis_servis_konnadeh_id AS sservis_servis_konnadeh_id,
	servis.servis_hazine AS sservis_hazine,
	servis.servis_tasvire_faktor AS sservis_tasvire_faktor,
	servis.servis_tozihat AS sservis_tozihat,
	servis.save_id AS ssave_id,
	khodro.id AS kid,
	khodro.khodro_khodro AS kkhodro_khodro,
	khodro.khodro_model AS kkhodro_model,
	khodro.khodro_rang AS kkhodro_rang,
	khodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani,
	khodro.khodro_vaziyat AS kkhodro_vaziyat,
	khodro.save_id AS ksave_id 
FROM
	wp_rent_servis AS servis
	LEFT JOIN wp_rent_khodro AS khodro ON servis.servis_khodro_id = khodro.id
	LEFT JOIN wp_rent_ashkhas AS ashkhas ON servis.servis_servis_konnadeh_id = ashkhas.id 
	WHERE khodro.khodro_vaziyat = 'موجود'
ORDER BY
	servis.servis_tarikh ASC";

$rows = $wpdb->get_results($query,'ARRAY_A');

//need to make the latest date at top of array to use $row = $row[0]; after foreach the first array of grouped must be the last service
uasort($rows, make_comparer(array('sservis_tarikh', SORT_DESC)));//order to make last service the first array elements
$grouped_rows = group_multidimensional_array($rows,'kid');//group srvices by khodro
//after getting service we need the oil mananger check it for its oil with latest odat so we get data for his usage
foreach($grouped_rows as $row_key=>$row){
	$first_row = reset($row);//get the first arr by grouping it is not essentially start by zero
	$first_key = key($row);
	//dbg($row);
	//make specific car query for getting latest odat odo
	$query_gharardad = "SELECT
						gharardad.gharardad_khodro_id AS ggharardad_khodro_id,
						gharardad.gharardad_tarikhe_odat AS ggharardad_tarikhe_odat,
						gharardad.gharardad_odo_sanaviye AS ggharardad_odo_sanaviye
						FROM
							wp_rent_gharardad AS gharardad
						WHERE
							gharardad.gharardad_khodro_id = ".$first_row['kid']."
						ORDER BY
							gharardad.gharardad_tarikhe_odat DESC
						LIMIT 1";
	//removing time to save space in table
	$gharardad = $wpdb->get_results($query_gharardad,'ARRAY_A');
	$gharardad = $gharardad[0];
	$ggharardad_tarikhe_odat = explode(' ',$gharardad['ggharardad_tarikhe_odat']);
	$ggharardad_tarikhe_odat =  $ggharardad_tarikhe_odat[0];
	//assigning to the $rows to use in jqwidget
	$grouped_rows[$row_key][$first_key]['ggharardad_tarikhe_odat'] = $ggharardad_tarikhe_odat;;
	$grouped_rows[$row_key][$first_key]['ggharardad_odo_sanaviye'] =  $gharardad['ggharardad_odo_sanaviye'];
	//calc odo diff form latest odat
	$grouped_rows[$row_key][$first_key]['odo_diff'] =  $gharardad['ggharardad_odo_sanaviye']-$first_row['sservis_kilometer'];
	//calc date from latest servis to right now
	$grouped_rows[$row_key][$first_key]['date_diff'] =  floor(sst_date_diff( $first_row["sservis_tarikh"].' 00:00', sst_jnow(),'total_days' ));
}
//flatten to use in jqwidget we make it multi dimensional to get only ONE the latest servis of car we dimension  and grouped by car
$rows = ungroup_multidimensional_array($grouped_rows);
//sort to Descending by date_diff because its add later
uasort($rows, make_comparer(array('date_diff', SORT_DESC),array('odo_diff', SORT_DESC)));


//$query="";
//dbg($rows);
//foreach($rows as $row){//only should be use for oil but now no different
	
//}
function sst_json_servis($rows){
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
	}
	return $rows;
}
$rows = sst_json_servis($rows);