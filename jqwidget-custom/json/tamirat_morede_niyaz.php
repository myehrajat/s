<?php

function sst_json_tamirat_morede_niyaz(){
	global $wpdb;
$query="SELECT
	stmn.id AS stmnid,
	stmn.servis_tamirat_morede_niyaz_tarikh_elam AS stmntarikh_elam,
	stmn.servis_tamirat_morede_niyaz_tarikh_shoroe_tamir AS stmntarikh_shoroe_tamir,
	stmn.servis_tamirat_morede_niyaz_tarikh_payane_tamir AS stmntarikh_payane_tamir,
	stmn.servis_tamirat_morede_niyaz_khodro_id AS stmnkhodro_id,
	stmn.servis_tamirat_morede_niyaz_sharhe_servis AS stmnsharhe_servis,
	stmn.servis_tamirat_morede_niyaz_vaziyat AS stmnvaziyat,
	stmn.servis_tamirat_morede_niyaz_kilometer_anjam AS stmnkilometer_anjam,
	stmn.servis_tamirat_morede_niyaz_anjam_dahandeh AS stmnanjam_dahandeh,
	stmn.servis_tamirat_morede_niyaz_mechanic AS stmnmechanic,
	stmn.servis_tamirat_morede_niyaz_hazineh AS stmnhazineh,
	stmn.servis_tamirat_morede_niyaz_tasvire_faktor AS stmntasvire_faktor,
	stmn.servis_tamirat_morede_niyaz_tozihat AS stmntozihat,
	stmn.save_id AS stmnsave_id,
	khodro.id AS kid,
	khodro.khodro_khodro AS kkhodro_khodro,
	ashkhas_anjam.id AS aaid,
	ashkhas_anjam.ashkhas_nam AS aaashkhas_nam,
	ashkhas_anjam.ashkhas_name_khanevadegi AS aaashkhas_name_khanevadegi,
	ashkhas_mechanic.id AS amid,
	ashkhas_mechanic.ashkhas_nam AS amashkhas_nam,
	ashkhas_mechanic.ashkhas_name_khanevadegi AS amashkhas_name_khanevadegi
FROM
	wp_rent_servis_tamirat_morede_niyaz AS stmn
LEFT JOIN wp_rent_khodro AS khodro ON khodro.id = stmn.servis_tamirat_morede_niyaz_khodro_id
LEFT JOIN wp_rent_ashkhas AS ashkhas_anjam ON ashkhas_anjam.id = stmn.servis_tamirat_morede_niyaz_anjam_dahandeh
LEFT JOIN wp_rent_ashkhas AS ashkhas_mechanic ON ashkhas_mechanic.id = 	stmn.servis_tamirat_morede_niyaz_mechanic
ORDER BY
	stmn.servis_tamirat_morede_niyaz_tarikh_elam DESC";
$rows = $wpdb->get_results($query,'ARRAY_A');

	return $rows;
}
