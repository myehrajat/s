<?php
/*
$_GET['start']
$_GET['end']
$_GET['min']
$_GET['max']
$_GET['vo']
*/
/*if(!function_exists(sst_jnow)){
    echo '<pre>';var_dump($_SERVER);echo '</pre>';
    require_once($_SERVER['DOCUMENT_ROOT'].'/wp-content/plugins/ehrajat-form-z-custom/custom_func/datetime/general.php');
    require_once($_SERVER['DOCUMENT_ROOT'].'/wp-content/plugins/ehrajat-form-plugin/inc/functions/sst_get_option.php');
}*/
$now = sst_jnow('date');
/*
dbg('now:'.$now);
dbg('start:'.$_GET['start']);
dbg('end:'.$_GET['end']);
dbg('vo:'.$_GET['vo']);
*/
if($_GET['start']>$_GET['end'] and (!empty($_GET['end']) and !empty($_GET['start']))){//if revese start end min selected correct it
	$end = $_GET['start'];
	$start = $_GET['end'];
	$_GET['start'] = $start;
	$_GET['end'] = $end;
}
/*
dbg('now:'.$now);
dbg('start:'.$_GET['start']);
dbg('end:'.$_GET['end']);
dbg('vo:'.$_GET['vo']);
*/
if(empty($_GET['start']) or $now>$_GET['start']){//at least start must be today
	//dbg(111111111111);
   $_GET['start'] =$now;
}
/*
dbg('now:'.$now);
dbg('start:'.$_GET['start']);
dbg('end:'.$_GET['end']);
dbg('vo:'.$_GET['vo']);
*/
if(empty($_GET['end']) or $now>$_GET['end']){
    $_GET['end'] = $_GET['start'];
}
/*
dbg('now:'.$now);
dbg('start:'.$_GET['start']);
dbg('end:'.$_GET['end']);
dbg('vo:'.$_GET['vo']);
*/








if(empty($_GET['min'])){
    $_GET['min']=0;
}
if(empty($_GET['max'])){
	// it was 999999999999999999999999999999 and return error because php change its to other format 9 0e10 or else
    $_GET['max']=100000000;
}
if($_GET['max']<$_GET['min']){//if revese max and min selected correct it
	$min = $_GET['max'];
	$max = $_GET['min'];
	$_GET['max'] = $max;
	$_GET['min'] = $min;
}

if(empty($_GET['vo'])){
    $_GET['vo']=7;
}



//dbg();


$query_now="SELECT * FROM wp_rent_khodro WHERE (";
//get gharardad that has no gharardad and its already existed
$query_now.="(id <> ALL (SELECT id FROM wp_rent_khodro WHERE id = ANY ( SELECT gharardad_khodro_id FROM wp_rent_gharardad WHERE gharardad_tarikhe_odat = '' ))) ";
$query_now.=")  AND khodro_vaziyat = 'موجود' ";


//AND khodro_saheb_emtiyaz_id = 11
$moshaveran_ids[] = sst_get_option('sherkat_id');
$query_now .= 'AND ( khodro_saheb_emtiyaz_id = ';
$query_now .= implode(' OR khodro_saheb_emtiyaz_id = ',$moshaveran_ids);
$query_now .= ' )';

	//dbg($query_now);
if($_GET['max']){
	$query_now.=" AND khodro_daily_price <= ".$_GET['max'];
}
if($_GET['min']){
	$query_now.=" AND khodro_daily_price >= ".$_GET['min'];
}
if($_GET['brand'] and $_GET['brand']<>'all'){
	$query_now.=" AND khodro_brand = '".$_GET['brand']."'";
}
$query_now.=" GROUP BY id ORDER BY khodro_khodro ASC";


$rows_now = $wpdb->get_results($query_now,'ARRAY_A');

//dbg($query_now);







//dbg($query_now);

//dbg($rows_now);








//in sys system you can omit $_GET['vo'] variable to dont show that or set all to show all
$days_after_now = sst_date_diff($now,$_GET['start'],'int_days',true);//true means omit time and only check for date

if(($days_after_now>=$_GET['vo'] OR $_GET['vo']=='all') AND isset($_GET['vo'])){//add query to get all namaloom which tahvil is after now + vo  or vo='all' show all namaloom if not set means no one 
	$query_namaloom="SELECT * FROM wp_rent_khodro WHERE (";
	//get gharardad that has no gharardad and its already existed
	$query_namaloom.="(id = ANY ( SELECT gharardad_khodro_id FROM wp_rent_gharardad WHERE gharardad_vadeye_tarikhe_odat = 'نامعلوم' AND gharardad_tarikhe_odat = '' GROUP BY gharardad_khodro_id)) ";
	$query_namaloom.=") AND khodro_saheb_emtiyaz_id = 11 AND khodro_vaziyat = 'موجود' ";

	if($_GET['max']){
		$query_namaloom.=" AND khodro_daily_price <= ".$_GET['max'];
	}
	if($_GET['min']){
		$query_namaloom.=" AND khodro_daily_price >= ".$_GET['min'];
	}
	if($_GET['brand'] and $_GET['brand']<>'all'){
		$query_namaloom.=" AND khodro_brand = '".$_GET['brand']."'";
	}
	$query_namaloom.=" GROUP BY id ORDER BY khodro_khodro ASC";
	$rows_namaloom = $wpdb->get_results($query_namaloom,'ARRAY_A');

}


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












$query_vadeye_odat="SELECT * FROM wp_rent_khodro WHERE (";
$query_vadeye_odat.="(id = ANY ( SELECT gharardad_khodro_id FROM wp_rent_gharardad WHERE gharardad_vadeye_tarikhe_odat <= '".$_GET['start']."' AND gharardad_vadeye_tarikhe_odat>='".$now."' AND gharardad_tarikhe_odat = '' GROUP BY gharardad_khodro_id )) ";
$query_vadeye_odat.=") AND khodro_saheb_emtiyaz_id = 11 AND khodro_vaziyat = 'موجود' ";
if($_GET['max']){
	$query_vadeye_odat.=" AND khodro_daily_price <= ".$_GET['max'];
}
if($_GET['min']){
	$query_vadeye_odat.=" AND khodro_daily_price >= ".$_GET['min'];
}
if($_GET['brand'] and $_GET['brand']<>'all'){
	$query_vadeye_odat.=" AND khodro_brand = '".$_GET['brand']."'";
}
$query_vadeye_odat.=" GROUP BY id ORDER BY khodro_khodro ASC";
$rows_vadeye_odat = $wpdb->get_results($query_vadeye_odat,'ARRAY_A');





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
	$query_gozashte="SELECT * FROM wp_rent_khodro WHERE (";
	//get gharardad that has no gharardad and its already existed
	$query_gozashte.="(id = ANY ( SELECT gharardad_khodro_id FROM wp_rent_gharardad WHERE gharardad_vadeye_tarikhe_odat < '".$now."' AND gharardad_tarikhe_odat = '' GROUP BY gharardad_khodro_id)) ";
	$query_gozashte.=") AND khodro_saheb_emtiyaz_id = 11 AND khodro_vaziyat = 'موجود' ";

	if($_GET['max']){
		$query_gozashte.=" AND khodro_daily_price <= ".$_GET['max'];
	}
	if($_GET['min']){
		$query_gozashte.=" AND khodro_daily_price >= ".$_GET['min'];
	}
	if($_GET['brand'] and $_GET['brand']<>'all'){
		$query_gozashte.=" AND khodro_brand = '".$_GET['brand']."'";
	}
	$query_gozashte.=" GROUP BY id ORDER BY khodro_khodro ASC";
	$rows_gozashte = $wpdb->get_results($query_gozashte,'ARRAY_A');
//dbg($rows_gozashte);



















if(!empty($rows_now)){
	foreach($rows_now as $now){
		$now['status']='الان موجود';
		$rows[]=$now;
	}
}
//dbg(count($rows));
if(!empty($rows_vadeye_odat)){
	foreach($rows_vadeye_odat as $vadeye_odat){
		$vadeye_odat['status']='وعده عودت';
		$rows[]=$vadeye_odat;
	}
}
//dbg(count($rows));
//dbg($rows_namaloom);
if(!empty($rows_namaloom)){
	foreach($rows_namaloom as $namaloom){
		$namaloom['status']='نامعلوم';
		$rows[]=$namaloom;
	}
}if(!empty($rows_gozashte)){
	foreach($rows_gozashte as $gozashte){
		$gozashte['status']='وعده عودت گذشته';
		$rows[]=$gozashte;
	}
}
//dbg(count($rows));


//dbg($rows);

function sst_json_mojoodi($rows){
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
	}
	return $rows;
}
$rows = sst_json_mojoodi($rows);


?>