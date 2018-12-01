<?php
///very very important:any debug or echo in json file make this function error and cant checked that because of recursiveness of file_get_contents
function sst_temp_soorathesab_bedehkari_be_digaran( $rows, $now_date, $moshaveran_list=false ) {
	global $dbprefix,$moshaveran_ids;
	//dbg($rows);
	if ( isset($_GET[ 'shakhs' ]) and $_GET[ 'asli_shakhs' ] == sst_get_option( 'sherkat_id' ) ) {//for moshaver view
		
		//dbg(sst_get_option( 'json_file' ) . '?exclude=' . sst_get_option( 'sherkat_id' ) . '&list=soorathesab' . '&asli_shakhs=' . $_GET[ 'shakhs' ] . '&rawdata=raw' . '&psw=ehrajat1363');
		$result_shakhs_hesab = file_get_contents( sst_get_option( 'json_file' ) . '?exclude=' . sst_get_option( 'sherkat_id' ) . '&list=soorathesab' . '&asli_shakhs=' . $_GET[ 'shakhs' ] . '&rawdata=raw' . '&psw=ehrajat1363' );
		//dbg( sst_get_option( 'json_file' ) . '?exclude=' . sst_get_option( 'sherkat_id' ) . '&list=soorathesab' . '&asli_shakhs=' . $_GET[ 'shakhs' ] . '&rawdata=raw' . '&psw=ehrajat1363');
		//dbg( sst_get_option('json_file').'?exclude='.sst_get_option('sherkat_id').'&list=soorathesab'.'&asli_shakhs='.$_GET['shakhs'].'&rawdata=raw'.'&psw=ehrajat1363');
		//dbg($result_shakhs_hesab);
		$result_shakhs_hesab = json_decode( $result_shakhs_hesab );
		
		
		if ( !empty( $result_shakhs_hesab ) ) {
			foreach ( $result_shakhs_hesab as $shakhs_hesab ) {
				if ( $shakhs_hesab->ssoorathesab_nahayi > 0 and $shakhs_hesab->ssoorathesab_nahayi <> '' ) {
					$bedehkari += $shakhs_hesab->ssoorathesab_nahayi;
				} elseif ( $shakhs_hesab->ssoorathesab_nahayi < 0 and $shakhs_hesab->ssoorathesab_nahayi <> '' ) {
					$talabkari -= $shakhs_hesab->ssoorathesab_nahayi;
				} else {

				}
			}
		}
	}
	//dbg( $bedehkari );
	//dbg($talabkari);
	if ( $bedehkari > 0 ) {

		$shakhs_id = $_GET[ 'shakhs' ]; //other
		$asli_shakhs_id = $_GET[ 'asli_shakhs' ]; //always 11
if(!$moshaveran_list){
	//dbg(11111111111);
		$ashkhas_obj = sst_get_by_id( $shakhs_id, $dbprefix . 'ashkhas' );
		$asli_ashkhas_obj = sst_get_by_id( $asli_shakhs_id, $dbprefix . 'ashkhas' );
}else{
		//dbg(222222222);
		$asli_ashkhas_obj = sst_get_by_id( $shakhs_id, $dbprefix . 'ashkhas' );
		$ashkhas_obj = sst_get_by_id( $asli_shakhs_id, $dbprefix . 'ashkhas' );
}

//dbg($asli_ashkhas_obj->id);
		$new_temp_soorathesab_bedehkari = array(
			"aid" => $ashkhas_obj->id,
			"aashkhas_name_khanevadegi" => $ashkhas_obj->ashkhas_name_khanevadegi,
			"aashkhas_nam" => $ashkhas_obj->ashkhas_nam,

			"aaid" => $asli_ashkhas_obj->id,
			"aaashkhas_name_khanevadegi" => $asli_ashkhas_obj->ashkhas_name_khanevadegi,
			"aaashkhas_nam" => $asli_ashkhas_obj->ashkhas_nam,

			"ssave_id" => $gharardad[ 'save_id' ],
			"sid" => '',
			"ssoorathesab_ashkhas_id" => $ashkhas_obj->id,
			"ssoorathesab_asli_ashkhas_id" => $asli_ashkhas_obj->id,
			"ssoorathesab_tarikh" => $now_date,
			"ssoorathesab_khodro_id" => '',
			"ssoorathesab_variz" => '',
			"ssoorathesab_bedehi" => $bedehkari,
			"ssoorathesab_babat" => '<a href="http://'.$_SERVER['SERVER_NAME'].'/لیست-ها/?list=bestankaran&asli_shakhs='.$asli_ashkhas_obj->id.'" >بدهکاری به دیگران</a>',
			"ssoorathesab_tozihat" => 'ثبت موقت',

			"kid" => $khodro_obj->id,
			"kkhodro_khodro" => $khodro_obj->khodro_khodro,
			"kkhodro_model" => $khodro_obj->khodro_model,
			"kkhodro_rang" => $khodro_obj->khodro_rang,
		);
		if($asli_ashkhas_obj->id == sst_get_option( 'sherkat_id' )){
			$new_temp_soorathesab_bedehkari['ssoorathesab_babat']='<a href="http://'.$_SERVER['SERVER_NAME'].'/لیست-ها/?list=bestankaran&asli_shakhs='.$ashkhas_obj->id.'" >بدهکاری به دیگران</a>';
		}
if(!$moshaveran_list){
	
}else{
	$new_temp_soorathesab_bedehkari['ssoorathesab_variz']= $bedehkari;
	$new_temp_soorathesab_bedehkari['ssoorathesab_bedehi']= '';
}
//dbg( $rows );
//dbg( $new_temp_soorathesab_bedehkari );
		if($rows==NULL){
			$rows=array();
		}
		array_unshift( $rows, $new_temp_soorathesab_bedehkari );
	}
//dbg($rows);
	return $rows;
}