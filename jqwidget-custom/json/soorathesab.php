<?php
/**************************
$_GET[ 'shakhs' ]=>for getting only one person soorathesab
$_GET[ 'asli_shakhs' ]=>for getting only one person soorathesab
$_GET[ 'tarikh' ]=>for getting only one date soorathesab
$_GET[ 'totarikh' ]=>for getting only one date soorathesab
$_GET[ 'nogharardad' ]=>for NOT getting  all gharardad
$_GET[ 'onlygharardad' ]=>for NOT getting  all gharardad
$_GET[ 'nojari' ]=>for NOT getting all jari gharardad
$_GET[ 'onlyjari' ]=>for NOT getting all jari gharardad
$_GET[ 'exclude' ]=>for NOT getting all jari gharardad
TO add mohasebeh daily for average on hesab
*******************************/



//this function according to asli shakhs and non asli shakhs and who is mojer and mostajer determine it mablagh should be added to talab or bedehi
	//taeen bedehi ya talab shakhs nesbat be asli_shakhs


//$GETshakhs=null,$GETasli_shakhs=null,$GETtarikh=null,$GETtotarikh=null,$GETnogharardad=null,$GETnojari=null,$GETonlyjari=null,$GETexclude=null
function sst_json_soorathesab() {
	
	set_time_limit( 0 );
	require_once( 'soorathesab/func.php' );
	require_once( 'soorathesab/add_gardesh_nahayi.php' );
	global $wpdb;
	/***********************************/
	$_GET[ 'asli_shakhs' ] = sst_find_asli_shakhs();
//dbg($_GET[ 'asli_shakhs' ]);
	/***************************************************/
	//get all those soorathesab which is asli_shakhs is in asli shakhs field
	/***************************************************/
	$query = "SELECT
	ashkhas.id AS aid,
	ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,
	ashkhas.ashkhas_nam AS aashkhas_nam,
	
	aashkhas.id AS aaid,
	aashkhas.ashkhas_name_khanevadegi AS aaashkhas_name_khanevadegi,
	aashkhas.ashkhas_nam AS aaashkhas_nam,
	
	soorathesab.save_id AS ssave_id,
	soorathesab.id AS sid,
	soorathesab.soorathesab_ashkhas_id AS ssoorathesab_ashkhas_id,
	soorathesab.soorathesab_asli_ashkhas_id AS ssoorathesab_asli_ashkhas_id,
	soorathesab.soorathesab_tarikh AS ssoorathesab_tarikh,
	soorathesab.soorathesab_khodro_id AS ssoorathesab_khodro_id,
	soorathesab.soorathesab_variz AS ssoorathesab_variz,
	soorathesab.soorathesab_bedehi AS ssoorathesab_bedehi,
	soorathesab.soorathesab_babat AS ssoorathesab_babat,
	soorathesab.soorathesab_tozihat AS ssoorathesab_tozihat,
	khodro.id AS kid,
	khodro.khodro_khodro AS kkhodro_khodro,
	khodro.khodro_model AS kkhodro_model,
	khodro.khodro_rang AS kkhodro_rang
FROM
	wp_rent_soorathesab AS soorathesab
LEFT JOIN wp_rent_ashkhas AS ashkhas ON (
	ashkhas.id = soorathesab.soorathesab_ashkhas_id
)
LEFT JOIN wp_rent_ashkhas AS aashkhas ON (
	aashkhas.id = soorathesab.soorathesab_asli_ashkhas_id
)
LEFT JOIN wp_rent_khodro AS khodro ON soorathesab.soorathesab_khodro_id = khodro.id
WHERE
	(
		soorathesab.soorathesab_variz <> ''
		OR soorathesab.soorathesab_bedehi <> ''
	)
	AND 
	( 
		soorathesab.soorathesab_asli_ashkhas_id='" . $_GET[ 'asli_shakhs' ] . "' 
	)";


	/***********************************/
	if ( $_GET[ 'shakhs' ] ) {
		$query .= "
		AND ( soorathesab.soorathesab_asli_ashkhas_id='" . $_GET[ 'shakhs' ] . "' OR soorathesab.soorathesab_ashkhas_id='" . $_GET[ 'shakhs' ] . "') ";
	}
	/***********************************/
	/***********************************/
	if ( $_GET[ 'exclude' ] ) {
		$excludes = explode(',',$_GET[ 'exclude' ]);
		foreach($excludes as $exclude){
			$query .= "
			AND ( soorathesab.soorathesab_asli_ashkhas_id<>'" . $exclude . "' AND soorathesab.soorathesab_ashkhas_id<>'" . $exclude . "') ";
		}
	}
	/***********************************/
	if ( $_GET[ 'tarikh' ]and!$_GET[ 'totarikh' ] ) {
		$query .= "
		AND soorathesab.soorathesab_tarikh='" . $_GET[ 'tarikh' ] . "' ";
	} elseif ( $_GET[ 'tarikh' ]and $_GET[ 'totarikh' ] ) {
			$query .= "
		AND ( soorathesab.soorathesab_tarikh>='" . $_GET[ 'tarikh' ] . "' 
		AND soorathesab.soorathesab_tarikh<='" . $_GET[ 'totarikh' ] . "' ) ";
		}
		/***********************************/
	if ( $_GET[ 'nogharardad' ] ) { //this part narrow result
		$query .= "
		AND soorathesab.soorathesab_tozihat<>'ثبت اتوماتیک سیستم' ";
	}
	/***********************************/
	/***********************************/
	if ( $_GET[ 'onlygharardad' ] ) { //this part narrow result
		$query .= "
		AND soorathesab.soorathesab_tozihat='ثبت اتوماتیک سیستم' ";
	}
	if ( $_GET[ 'onlyjari' ] ) { //this part narrow result
		$query = ""; //null means no need to get

		/***********************************/
		$rows = array();
	} else {
		$rows_set_one = $wpdb->get_results( $query, 'ARRAY_A' );
	}

	//dbg($rows);

	//dbg($query);
//echo "<script>alert(".$query.");</script>"








	/***************************************************/
	//get all those soorathesab which is asli_shakhs is NOT in asli_shakhs and is in shakhs field so some data will be reverse
	/***************************************************/

	$query = "SELECT
	ashkhas.id AS aid,
	ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,
	ashkhas.ashkhas_nam AS aashkhas_nam,
	ashkhas.save_id AS asave_id,

	ashkhas.id AS aaid,
	aashkhas.ashkhas_name_khanevadegi AS aaashkhas_name_khanevadegi,
	aashkhas.ashkhas_nam AS aaashkhas_nam,
	
	soorathesab.save_id AS ssave_id,
	soorathesab.id AS sid,
	soorathesab.soorathesab_ashkhas_id AS ssoorathesab_ashkhas_id,
	soorathesab.soorathesab_asli_ashkhas_id AS ssoorathesab_asli_ashkhas_id,
	soorathesab.soorathesab_tarikh AS ssoorathesab_tarikh,
	soorathesab.soorathesab_khodro_id AS ssoorathesab_khodro_id,";
	$query .= "
	soorathesab.soorathesab_bedehi AS ssoorathesab_variz,"; //NOTE HERE
	$query .= "
	soorathesab.soorathesab_variz AS ssoorathesab_bedehi,"; //NOTE HERE
	$query .= "
	soorathesab.soorathesab_babat AS ssoorathesab_babat,
	soorathesab.soorathesab_tozihat AS ssoorathesab_tozihat,
	khodro.id AS kid,
	khodro.khodro_khodro AS kkhodro_khodro,
	khodro.khodro_model AS kkhodro_model,
	khodro.khodro_rang AS kkhodro_rang
FROM
	wp_rent_soorathesab AS soorathesab
LEFT JOIN wp_rent_ashkhas AS ashkhas ON (";
	$query .= "
ashkhas.id = soorathesab.soorathesab_asli_ashkhas_id"; //NOTE HERE
	$query .= "
	)
LEFT JOIN wp_rent_ashkhas AS aashkhas ON (";
	$query .= "
	aashkhas.id = soorathesab.soorathesab_ashkhas_id"; //NOTE HERE
	$query .= "
	)
LEFT JOIN wp_rent_khodro AS khodro ON soorathesab.soorathesab_khodro_id = khodro.id
WHERE
	(
		soorathesab.soorathesab_variz <> ''
		OR soorathesab.soorathesab_bedehi <> ''
	)
	AND 
	( 
		soorathesab.soorathesab_ashkhas_id='" . $_GET[ 'asli_shakhs' ] . "' 
	)";


	/***********************************/
	if ( $_GET[ 'shakhs' ] ) {
		$query .= "
		AND ( soorathesab.soorathesab_asli_ashkhas_id='" . $_GET[ 'shakhs' ] . "' OR soorathesab.soorathesab_ashkhas_id='" . $_GET[ 'shakhs' ] . "') ";
	}
	
	/***********************************/
	if ( $_GET[ 'exclude' ] ) {
		$excludes = explode(',',$_GET[ 'exclude' ]);
		foreach($excludes as $exclude){
			$query .= "
			AND ( soorathesab.soorathesab_asli_ashkhas_id<>'" . $exclude . "' AND soorathesab.soorathesab_ashkhas_id<>'" . $exclude . "') ";
		}
	}
	/***********************************/	/***********************************/
	if ( $_GET[ 'tarikh' ]and!$_GET[ 'totarikh' ] ) {
		$query .= "
		AND soorathesab.soorathesab_tarikh='" . $_GET[ 'tarikh' ] . "' ";
	} elseif ( $_GET[ 'tarikh' ]and $_GET[ 'totarikh' ] ) {
			$query .= "
		AND ( soorathesab.soorathesab_tarikh>='" . $_GET[ 'tarikh' ] . "' 
		AND soorathesab.soorathesab_tarikh<='" . $_GET[ 'totarikh' ] . "' ) ";
		}
		/***********************************/
	if ( $_GET[ 'nogharardad' ] ) { //this part narrow result
		$query .= "
		AND soorathesab.soorathesab_tozihat<>'ثبت اتوماتیک سیستم' ";
	}
	/***********************************/
	/***********************************/
	if ( $_GET[ 'onlygharardad' ] ) { //this part narrow result
		$query .= "
		AND soorathesab.soorathesab_tozihat='ثبت اتوماتیک سیستم' ";
	}
	if ( $_GET[ 'onlyjari' ] ) { //this part narrow result
		$query = ""; //null means no need to get

		/***********************************/
		$rows = array();
	} else {
		$rows_set_two = $wpdb->get_results( $query, 'ARRAY_A' );
	}



	$rows = array_merge( $rows_set_one, $rows_set_two );
	//dbg($rows);
	//dbg($query);
	//die;
	//$rows = array_reverse ($rows,true );
	/**********************************************************************************/
	if ( !$_GET[ 'nogharardad' ]and!$_GET[ 'nojari' ] ) { //get no completed gharardad JARI
		$gharardads_query = "SELECT * FROM wp_rent_gharardad WHERE gharardad_tarikhe_odat='' AND (gharardad_mostajer_id='" . $_GET[ 'asli_shakhs' ] . "' OR gharardad_mojer_id='" . $_GET[ 'asli_shakhs' ] . "') ";
	/***********************************/
		if ( $_GET[ 'shakhs' ] ) { //get 
			$gharardads_query .= "
			AND (gharardad_mostajer_id='" . $_GET[ 'shakhs' ] . "' OR gharardad_mojer_id='" . $_GET[ 'shakhs' ] . "') ";
		}

	/***********************************/
	if ( $_GET[ 'exclude' ] ) {
		$excludes = explode(',',$_GET[ 'exclude' ]);
		foreach($excludes as $exclude){
			$gharardads_query .= "
			AND (gharardad_mostajer_id<>'" . $exclude . "' AND gharardad_mojer_id<>'" . $exclude . "') ";
		}
	}
	/***********************************/

		$result_gharardads = $wpdb->get_results( $gharardads_query, 'ARRAY_A' );
		$gharardads = $result_gharardads;
		//dbg($gharardads);

		//foreach ( $result_gharardads as $gharardad_row ) {
		//	$gharardads[] = $gharardad_row;
		//}

		//dbg($gharardads);//TODO: add row base on this data this will be on the fly not in table
		//date_default_timezone_set ('Asia/Tehran');
		$now = sst_jnow( 'date_time' );
		$now_date_time = explode( ' ', $now );
		$now_date = $now_date_time[ 0 ];
		if ( $gharardads ) {
			//$sherkat_id = 11;
			$asli_ashkhas_obj = sst_get_by_id( $_GET[ 'asli_shakhs' ], 'rent_ashkhas' );

			foreach ( $gharardads as $gharardad ) {
				if ( !$_GET[ 'shakhs' ] ) {
					if ( $gharardad[ 'gharardad_mostajer_id' ] == $_GET[ 'asli_shakhs' ] ) {
						$shakhs_id = $gharardad[ 'gharardad_mojer_id' ];
					} elseif ( $gharardad[ 'gharardad_mojer_id' ] == $_GET[ 'asli_shakhs' ] ) {
						$shakhs_id = $gharardad[ 'gharardad_mostajer_id' ];
					}
				} else {
					$shakhs_id = $_GET[ 'shakhs' ];
				}
				//dbg($shakhs_id);
				$ashkhas_obj = sst_get_by_id( $shakhs_id, 'rent_ashkhas' );
				$khodro_obj = sst_get_by_id( $gharardad[ 'gharardad_khodro_id' ], 'rent_khodro' );

				require_once( 'soorathesab/takhir.php' );
				$rows = sst_temp_soorathesab_takhir( $gharardad, $rows, $now, $now_date, $khodro_obj );
				
				require_once( 'soorathesab/rooz.php' );
				$rows = sst_temp_soorathesab_rooz( $gharardad, $rows, $now );

				require_once( 'soorathesab/baravorde_khesarat.php' );
				$rows = sst_temp_soorathesab_baravorde_khesarat( $gharardad, $rows, $now_date, $khodro_obj );
				
				require_once( 'soorathesab/baravorde_khabe_khesarat.php' );
				$rows = sst_temp_soorathesab_baravorde_khabe_khesarat( $gharardad, $rows, $now_date, $khodro_obj );

				require_once( 'soorathesab/ayab_zahab.php' );
				$rows = sst_temp_soorathesab_ayab_zahab( $gharardad, $rows, $now_date,$khodro_obj );
				require_once( 'soorathesab/softeh.php' );
				$rows = sst_temp_soorathesab_softeh( $gharardad, $rows, $now_date, $khodro_obj );

				require_once( 'soorathesab/takhfif.php' );
				$rows = sst_temp_soorathesab_takhfif( $gharardad, $rows, $now_date, $khodro_obj );

				require_once( 'soorathesab/vadieh.php' );
				$rows = sst_temp_soorathesab_vadieh( $gharardad, $rows, $now_date, $khodro_obj );


		
			}
		}
	}
/******************************************************************************************************/

	$rows = group_multidimensional_array( $rows, 'aid' );
	/******************************************************************************************************/
//کسر بدهی های شخص از حساب دفتر بدین معنی که اگز آقای ایکس از حساب نرم دفتری 1 میلیون طلب دارد ولی 1.5 م امانت خلافی یا  ... دیگران ازش طلب دارند کسر میگررد و 500 بدهکار می شود این برای جلوگیری از برداشت بیش از حد درعین داشتن تعهد است
/******************************************************************************************************/
if(sst_get_option('count_bedehkari_be_digaran')==1){
	
	//this is recursiveness so any echo other than json cause error
	global $moshaveran_ids;
	//dbg($moshaveran_ids);
	
	//نمایش برای هنگامی که شرکت به صورت حساب نگاه میکند
	if($_GET[ 'asli_shakhs' ]==sst_get_option('sherkat_id')){
		
		require_once( 'soorathesab/bedehkari_be_digaran.php' );
		foreach($rows as $shakhs_id=>$shakhs_rows){
			if( in_array($shakhs_id,$moshaveran_ids)){
				$_GET[ 'shakhs' ]=$shakhs_id;
				$rows[$shakhs_id] = sst_temp_soorathesab_bedehkari_be_digaran($shakhs_rows, $now_date);
			}
		}
		//
	}elseif(in_array($_GET[ 'asli_shakhs' ],$moshaveran_ids) 
			and (sst_get_option('sherkat_id')==$_GET[ 'shakhs' ] or !isset($_GET[ 'shakhs' ])) 
			and !in_array(sst_get_option('sherkat_id'),explode(',',$_GET['exclude']))){
		$_GET[ 'shakhs' ]=$_GET[ 'asli_shakhs' ];
		$_GET[ 'asli_shakhs' ]=sst_get_option('sherkat_id');
		require_once( 'soorathesab/bedehkari_be_digaran.php' );
		//sst_temp_soorathesab_bedehkari_be_digaran($rows[sst_get_option('sherkat_id')], $now_date,true);
		//dbg(sst_temp_soorathesab_bedehkari_be_digaran($rows, $now_date));
		//dbg($rows);
		$rows[sst_get_option('sherkat_id')]=sst_temp_soorathesab_bedehkari_be_digaran($rows[sst_get_option('sherkat_id')], $now_date,true);
		//$rows[11] = 

	}

}
	//dbg($rows)
/******************************************************************************************************/
$readyrows = array();
	if($rows){
		foreach ( $rows as $shakhs => $soorathesab_rows ) { //get each person soorathesab then gather altogather
			$_GET[ 'shakhs' ] = $shakhs;
			$readyrows_one_person = sst_add_gardesh_nahayi( $soorathesab_rows );
			//dbg($readyrows_one_person);
			$readyrows = array_merge( $readyrows, $readyrows_one_person );
		}
	}
	$rows = $readyrows;

	/*****************************************************************************************/
	/*****************************************************************************************/
	return $rows;
} //End of if($gharardads)

function sst_get_moref_from_db($shakhs_id){
	global $wpdb,$dbprefix;
	
	$shakhs_obj = sst_get_by_id($shakhs_id,$dbprefix.'ashkhas');
	return $shakhs_obj->ashkhas_moaref;
	
}

//dbg($readyrows);
//$readyrows = array_reverse( $readyrows );

//dbg($rows);









//MORE INFO ON
// https://stackoverflow.com/questions/96759/how-do-i-sort-a-multidimensional-array-in-php
/*
	foreach ( $rows as $shakhs => $soorathesab_rows ) { //get each person soorathesab then gather altogather
		$_GET[ 'shakhs' ] = $shakhs;
		$readyrows_one_person = sst_add_gardesh_nahayi( $soorathesab_rows );
		$readyrows[$shakhs] = $readyrows_one_person;
	}

?>