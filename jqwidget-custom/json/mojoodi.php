<?php
/*
$_GET['start'] 
$_GET['end']
$_GET['min']
$_GET['max']
$_GET['vo']
$_GET['brand']
*/

//at least start must be today
function sst_reverse_end_start() {
	if ( $_GET[ 'start' ] > $_GET[ 'end' ]and( !empty( $_GET[ 'end' ] )and!empty( $_GET[ 'start' ] ) ) ) { //if revese start end min selected correct it
		$end = $_GET[ 'start' ];
		$start = $_GET[ 'end' ];
		$_GET[ 'start' ] = $start;
		$_GET[ 'end' ] = $end;
	}
}
/* if start in not no make it now*/
function sst_at_least_start_now() {
	if ( empty( $_GET[ 'start' ] )or $now > $_GET[ 'start' ] ) {
		$_GET[ 'start' ] = $now;
	}
}

function sst_end_not_empty_not_less_start() {
	if ( empty( $_GET[ 'end' ] )or $now > $_GET[ 'end' ] ) {
		$_GET[ 'end' ] = $_GET[ 'start' ];
	}
}

function sst_empty_to_zero() {
	if ( empty( $_GET[ 'min' ] ) ) {
		$_GET[ 'min' ] = 0;
	}
}

function sst_empty_max_to_max() {
	if ( empty( $_GET[ 'max' ] ) ) {
		// it was 999999999999999999999999999999 and return error because php change its to other format 9 0e10 or else
		$_GET[ 'max' ] = 200000000;
	}
}

function sst_reverse_max_min() {
	if ( $_GET[ 'max' ] < $_GET[ 'min' ] ) { //if revese max and min selected correct it
		$min = $_GET[ 'max' ];
		$max = $_GET[ 'min' ];
		$_GET[ 'max' ] = $max;
		$_GET[ 'min' ] = $min;
	}
}

$now = sst_jnow( 'date' );
sst_reverse_end_start();
sst_at_least_start_now();
sst_end_not_empty_not_less_start();
sst_empty_to_zero();
sst_empty_max_to_max();
sst_reverse_max_min();
if ( empty( $_GET[ 'vo' ] ) ) {
	$_GET[ 'vo' ] = 7;
}

$query_now = "SELECT * FROM wp_rent_khodro WHERE (";
//get gharardad that has no gharardad and its already existed
$query_now .= "(id <> ALL (SELECT id FROM wp_rent_khodro WHERE id = ANY ( SELECT gharardad_khodro_id FROM wp_rent_gharardad WHERE gharardad_tarikhe_odat = '' ))) ";
$query_now .= ")  AND khodro_vaziyat = 'موجود' ";


//AND khodro_saheb_emtiyaz_id = 11
$moshaveran_ids[] = sst_get_option( 'sherkat_id' );
$query_now .= 'AND ( khodro_saheb_emtiyaz_id = ';
$query_now .= implode( ' OR khodro_saheb_emtiyaz_id = ', $moshaveran_ids );
$query_now .= ' )';

//	dbg($query_now);
//die;
if ( $_GET[ 'max' ] ) {
	$query_now .= " AND khodro_daily_price <= " . $_GET[ 'max' ];
}
if ( $_GET[ 'min' ] ) {
	$query_now .= " AND khodro_daily_price >= " . $_GET[ 'min' ];
}
if ( $_GET[ 'brand' ]and $_GET[ 'brand' ] <> 'all' ) {
	$query_now .= " AND khodro_brand = '" . $_GET[ 'brand' ] . "'";
}
$query_now .= " GROUP BY id ORDER BY khodro_khodro ASC";


$rows_now = $wpdb->get_results( $query_now, 'ARRAY_A' );

//dbg($query_now);







//dbg($query_now);

//dbg($rows_now);









/*
dbg('now:'.$now);
dbg('start:'.$_GET['start']);
dbg('end:'.$_GET['end']);
dbg('vo:'.$_GET['vo']);
dbg('days_after_now:'.$days_after_now);


dbg('namaloom:');
dbg($query_namaloom);
dbg($rows_namaloom);
*/









$query_vadeye_odat = "SELECT * FROM wp_rent_khodro WHERE (";
$query_vadeye_odat .= "(id = ANY ( SELECT gharardad_khodro_id FROM wp_rent_gharardad WHERE  gharardad_vadeye_tarikhe_odat ='" . $now . "' AND gharardad_tarikhe_odat = '' GROUP BY gharardad_khodro_id )) ";
$query_vadeye_odat .= ") AND khodro_vaziyat = 'موجود' ";


//AND khodro_saheb_emtiyaz_id = 11
$moshaveran_ids[] = sst_get_option( 'sherkat_id' );
$query_vadeye_odat .= 'AND ( khodro_saheb_emtiyaz_id = ';
$query_vadeye_odat .= implode( ' OR khodro_saheb_emtiyaz_id = ', $moshaveran_ids );
$query_vadeye_odat .= ' )';



if ( $_GET[ 'max' ] ) {
	$query_vadeye_odat .= " AND khodro_daily_price <= " . $_GET[ 'max' ];
}
if ( $_GET[ 'min' ] ) {
	$query_vadeye_odat .= " AND khodro_daily_price >= " . $_GET[ 'min' ];
}
if ( $_GET[ 'brand' ]and $_GET[ 'brand' ] <> 'all' ) {
	$query_vadeye_odat .= " AND khodro_brand = '" . $_GET[ 'brand' ] . "'";
}
$query_vadeye_odat .= " GROUP BY id ORDER BY khodro_khodro ASC";
///dbg($query_vadeye_odat);
$rows_vadeye_odat = $wpdb->get_results( $query_vadeye_odat, 'ARRAY_A' );
///dbg($rows_vadeye_odat);








//in sys system you can omit $_GET['vo'] variable to dont show that or set all to show all
$days_after_now = sst_date_diff( $now, $_GET[ 'start' ], 'int_days', true ); //true means omit time and only check for date

if ( ( $days_after_now >= $_GET[ 'vo' ]OR $_GET[ 'vo' ] == 'all' )AND isset( $_GET[ 'vo' ] ) ) { //add query to get all namaloom which tahvil is after now + vo  or vo='all' show all namaloom if not set means no one 
	$query_namaloom = "SELECT * FROM wp_rent_khodro WHERE (";
	//get gharardad that has no gharardad and its already existed
	$query_namaloom .= "(id = ANY ( SELECT gharardad_khodro_id FROM wp_rent_gharardad WHERE gharardad_vadeye_tarikhe_odat = 'نامعلوم' AND gharardad_tarikhe_odat = '' GROUP BY gharardad_khodro_id)) ";
	$query_namaloom .= ") AND khodro_vaziyat = 'موجود' ";

	//AND khodro_saheb_emtiyaz_id = 11
	$moshaveran_ids[] = sst_get_option( 'sherkat_id' );
	$query_namaloom .= 'AND ( khodro_saheb_emtiyaz_id = ';
	$query_namaloom .= implode( ' OR khodro_saheb_emtiyaz_id = ', $moshaveran_ids );
	$query_namaloom .= ' )';



	if ( $_GET[ 'max' ] ) {
		$query_namaloom .= " AND khodro_daily_price <= " . $_GET[ 'max' ];
	}
	if ( $_GET[ 'min' ] ) {
		$query_namaloom .= " AND khodro_daily_price >= " . $_GET[ 'min' ];
	}
	if ( $_GET[ 'brand' ]and $_GET[ 'brand' ] <> 'all' ) {
		$query_namaloom .= " AND khodro_brand = '" . $_GET[ 'brand' ] . "'";
	}
	$query_namaloom .= " GROUP BY id ORDER BY khodro_khodro ASC";
	$rows_namaloom = $wpdb->get_results( $query_namaloom, 'ARRAY_A' );

}







//dbg('vadeye_odat:');
//dbg($query_vadeye_odat);
//dbg($rows_vadeye_odat);

/*
dbg('now:'.$now);
dbg('start:'.$_GET['start']);
dbg('end:'.$_GET['end']);
dbg('vo:'.$_GET['vo']);
dbg('days_after_now:'.$days_after_now);
*/
//dbg($query);

//









//vadeye odat gozashteh
$query_gozashte = "SELECT * FROM wp_rent_khodro WHERE (";
//get gharardad that has no gharardad and its already existed
$query_gozashte .= "(id = ANY ( SELECT gharardad_khodro_id FROM wp_rent_gharardad WHERE gharardad_vadeye_tarikhe_odat < '" . $now . "' AND gharardad_tarikhe_odat = '' GROUP BY gharardad_khodro_id)) ";
$query_gozashte .= ") AND khodro_vaziyat = 'موجود' ";


//AND khodro_saheb_emtiyaz_id = 11
$moshaveran_ids[] = sst_get_option( 'sherkat_id' );
$query_vadeye_odat .= 'AND ( khodro_saheb_emtiyaz_id = ';
$query_vadeye_odat .= implode( ' OR khodro_saheb_emtiyaz_id = ', $moshaveran_ids );
$query_vadeye_odat .= ' )';


if ( $_GET[ 'max' ] ) {
	$query_gozashte .= " AND khodro_daily_price <= " . $_GET[ 'max' ];
}
if ( $_GET[ 'min' ] ) {
	$query_gozashte .= " AND khodro_daily_price >= " . $_GET[ 'min' ];
}
if ( $_GET[ 'brand' ]and $_GET[ 'brand' ] <> 'all' ) {
	$query_gozashte .= " AND khodro_brand = '" . $_GET[ 'brand' ] . "'";
}
$query_gozashte .= " GROUP BY id ORDER BY khodro_khodro ASC";
$rows_gozashte = $wpdb->get_results( $query_gozashte, 'ARRAY_A' );
//dbg($rows_gozashte);









if ( !empty( $rows_now ) ) {
	foreach ( $rows_now as $now ) {
		$now[ 'status' ] = 'الان موجود';
		$rows[] = $now;
	}
}
//dbg(count($rows));
if ( !empty( $rows_vadeye_odat ) ) {
	foreach ( $rows_vadeye_odat as $vadeye_odat ) {
		$vadeye_odat[ 'status' ] = 'وعده عودت';
		$rows[] = $vadeye_odat;
	}
}

if ( !empty( $rows_gozashte ) ) {
	foreach ( $rows_gozashte as $gozashte ) {
		$gozashte[ 'status' ] = 'وعده عودت گذشته';
		$rows[] = $gozashte;
	}
}

//dbg(count($rows));
//dbg($rows_namaloom);
if ( !empty( $rows_namaloom ) ) {
	foreach ( $rows_namaloom as $namaloom ) {
		$namaloom[ 'status' ] = 'نامعلوم';
		$rows[] = $namaloom;
	}
}
############################################################################
//START check duplicate mojoodi
############################################################################
//Create a list of car ids from gathered mojoodi for checking ids

//this function find all values which has been occured more than once
//https://stackoverflow.com/questions/3450022/check-and-return-duplicates-array-php
function sst_find_duplicate_or_more_in_array( $arr ) {
	$dups = array();
	if(empty($arr)){
		$arr=array();
	}
	foreach ( array_count_values( $arr ) as $val => $c ) {
		if ( $c > 1 )$dups[] = $val;
	}
	return $dups;
}
//dbg(sst_find_duplicate_or_more_in_array($rows_car_id));
//$duplicate_rows_car_id is all two or more occurance values means duplicate
$duplicate_rows_car_id = sst_find_duplicate_or_more_in_array( $rows_car_id );
//if there is any duplicate fix it
if ( !empty( $duplicate_rows_car_id ) ) {
	//search through all rows to find those which are duplicate
	foreach ( $rows as $row_k => $row_v ) {
		//search to find all thos which we have foun these ids are duplicate
		foreach ( $duplicate_rows_car_id as $duplicate_row_car_id ) {
			//now check duplication and unset one which are نامعلوم
			// usuallly are duplicate areنامعلوم and وعده عودت گذشته and we rempve نامعلوم
			if ( $row_v[ 'id' ] == $duplicate_row_car_id and $row_v[ 'status' ] == 'نامعلوم' ) {
				//dbg($duplicate_row_car_id);
				unset( $rows[ $row_k ] );
			}
		}
	}
}

foreach($rows as $row_k=>$row_v){
	$rows[$row_k]=sst_add_mojoodi_gharardad_data($row_v);
}
############################################################################
//END check duplicate mojoodi
############################################################################
############################################################################
//START gharardad data adding
############################################################################
function sst_add_mojoodi_gharardad_data($row) {
	global $wpdb;
	$gharardad_query="SELECT * FROM wp_rent_gharardad WHERE `gharardad_khodro_id` = ".$row['id'] ." AND `gharardad_tarikhe_odat` = '' ";
	$gharardads = $wpdb->get_results( $gharardad_query, 'ARRAY_A' );
	$row['mojers'] =sst_mojers_breadcrumb($gharardads);
	$row['status_detailed']=sst_gharardad_latest_vadeye_odat($gharardads);
	return $row;
}

function sst_mojers_breadcrumb($gharardads){
	$sherkat_id = sst_get_option( 'sherkat_id' );
	if($gharardads){
		$mojers=sst_gharardad_by_order($gharardads,'gharardad_mojer_id','gharardad_mostajer_id');
		$last_key = end(array_keys($mojers));
		foreach($mojers as $mojer_k=>$mojer){
			$shakhs = sst_get_by_id($mojer,'rent_ashkhas');
			if($shakhs->ashkhas_moaref == $sherkat_id and  $shakhs->id<> $sherkat_id){
				$breadcrumb_mojers .= '<a style="float:right;" href="'.$_SERVER[ 'REQUEST_SCHEME' ] . '://' . $_SERVER[ "SERVER_NAME" ] .'/لیست-ها/?list=soorathesab&shakhs='.$shakhs->id.'" target="_blank">';
				$breadcrumb_mojers .= $shakhs->ashkhas_nam.' '.$shakhs->ashkhas_name_khanevadegi;
				$breadcrumb_mojers .= '</a>';
			}else{
				$breadcrumb_mojers .= '<span style="float:right;">'.$shakhs->ashkhas_nam.' '.$shakhs->ashkhas_name_khanevadegi.'</span>';
			}
			if ($mojer_k <> $last_key) {
				$breadcrumb_mojers .= '<span style="float:right;">⮜</span>';
			}
		}
	}else{
		$breadcrumb_mojers ='';
	}
	return $breadcrumb_mojers ;
}
function sst_gharardad_by_order($gharardads,$mojer_key,$mostajer_key){

	$ordered_mojers = array();
	foreach($gharardads as $gharardad){
		$mojers[]=$gharardad[$mojer_key];
		$mostajers[]=$gharardad[$mostajer_key];
	}
	//get only the latest mostajer
	$last_mostajer_diff = array_diff($mostajers,$mojers);
	$last_mostajer_var=$mostajers[key($last_mostajer_diff)];

	//set the first diff as initial mojer and its mostajer the next one and unset both of them form their array and make next diff
	while(!empty($mojers) and !empty($mostajers)){
		$first_mojer_diff = array_diff($mojers,$mostajers);
		$ordered_mojers[]=$mojers[key($first_mojer_diff)];
		unset($mojers[key($first_mojer_diff)]);
		unset($mostajers[key($first_mojer_diff)]);

	}
	$ordered_mojers[]=$last_mostajer_var;
	

	return $ordered_mojers;
}
//sst_gharardad_by_order(array(array('mojer_key'=>1,'mostajer_key'=>2),array('mojer_key'=>4,'mostajer_key'=>5),array('mojer_key'=>3,'mostajer_key'=>4),array('mojer_key'=>2,'mostajer_key'=>3),),'mojer_key','mostajer_key');

function sst_gharardad_latest_vadeye_odat($gharardads){
	//dbg($gharardads);
	if($gharardads){
	foreach($gharardads as $gharardad){
		if($gharardad['gharardad_vadeye_tarikhe_odat']<>'نامعلوم'){
			$vadeye_odats[] = $gharardad['gharardad_vadeye_tarikhe_odat'];
		}
	}
	if(!empty($vadeye_odats)){
		//dbg($vadeye_odats);
		rsort($vadeye_odats);
		return reset($vadeye_odats);
	}else{
		return 'نامعلوم';
	}
	}else{
		return 'الان موجود' ;
	}
}
############################################################################
//START gharardad data adding
############################################################################

//dbg(count($rows));


//dbg($rows);

function sst_json_mojoodi( $rows ) {
	foreach ( $rows as $rk => $rv ) {
		$rows[ $rk ] = json_encode( $rv );
	}
	return $rows;
}
$rows = sst_json_mojoodi( $rows );


?>