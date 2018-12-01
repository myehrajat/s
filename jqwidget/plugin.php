<?php
/**
 * @package NEW--EHRAJAT.IR jqwidget datagrid table
 * @version 0.1
 */
/*
Plugin Name: NEW--EHRAJAT.IR jqwidget datagrid table
Plugin URI: http://wordpress.org/plugins/hello-dolly/
Description: this plugin can create datagrid tables with group, filter, sort capability and every thing that you can imagine<br />using database tables easily with your custom query even joining table<br />this plugin support a shortcode to use it anywhere you need.<br />Use ehrajat_table shortcode as below:<br />'type' => 'GET',//type: The type of request to make ("POST" or "GET"), default is "GET".<br />'id' => 'id',//id: A string containing the Id data field.<br />'container_id' => 'jqgrid',<br />'datafields_names' => 'option_id,option_name,option_value,autoload',<br />'datafields_types' => 'int,string,string,string',//float<br />'datafields_labels' => 'Option ID,Option Name,Option Value,Autoload',<br />'datafields_widths' => false,<br />'datafields_aligns' => false,<br />'datafields_cellsaligns' => false,<br />'theme' => 'energyblue',<br /> 'width' => 650,<br />'height' => 450,<br />'sortable' => 'true',<br />'filterable' => 'true',<br />'showfilterrow' => 'true',<br />'groupable' => 'true',<br />	  'groups' => '',<br />	  'altrows' => 'true',<br />	  'pageable' => 'true',<br />	  'columnsresize' => 'true',<br />	  'rtl' => 'true',<br />	  'autoresizecolumns' => 'all',<br />	  'sql_query' => 'SELECT * FROM wp_options',<br />	  'sql_fields' => 'option_id,option_name,option_value,autoload',<br />	  'lang' => 'fa',	  //'sql_compute' => '',<br />	  //'sql_no' => 'true',<br />	  //'data' => '{maxRows:50}'	//data: Data to be sent to the server.   <br />

Author: Seyyed Shahab Tabatabaee
Version: 0.1
Author URI: http://ehrajat.ir/
*/
/*
 <link rel="stylesheet" href="http://localhost/wp-content/plugins/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="http://localhost/wp-content/plugins/jqwidget/scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="http://localhost/wp-content/plugins/jqwidget/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="http://localhost/wp-content/plugins/jqwidget/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="http://localhost/wp-content/plugins/jqwidget/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="http://localhost/wp-content/plugins/jqwidget/jqwidgets/jqxdata.js"></script> 
    <script type="text/javascript" src="http://localhost/wp-content/plugins/jqwidget/jqwidgets/jqxdatatable.js"></script> 
    <script type="text/javascript" src="http://localhost/wp-content/plugins/jqwidget/scripts/demos.js"></script>
*/



function my_scripts_method() { 
//if ( current_user_can('level_10')){
	//wp_register_script( 'jquery-1.11.1.min', plugins_url('scripts/jquery-1.11.1.min.js', __FILE__ )); 
	//wp_enqueue_script( 'jquery-1.11.1.min' ); 
	//wp_enqueue_script( 'JQuery' ); 
	
    wp_register_style( 'jqx.base', plugins_url('jqwidgets/styles/jqx.base.css', __FILE__ ),array(), '3.0.4', 'all' );    
    wp_enqueue_style( 'jqx.base' ); 
    wp_register_style( 'jqx.energyblue', plugins_url('jqwidgets/styles/jqx.energyblue.css', __FILE__ ),array('jqx.base'), '3.0.4', 'all' );   
    wp_enqueue_style( 'jqx.energyblue' ); 
		
	
	wp_register_script( 'jqxcore',  plugins_url('jqwidgets/jqxcore.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxcore' ); 
	
	wp_register_script( 'jqxbuttons',  plugins_url('jqwidgets/jqxbuttons.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxbuttons' ); 
	
	wp_register_script( 'jqxscrollbar',  plugins_url('jqwidgets/jqxscrollbar.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxscrollbar' ); 
	
	wp_register_script( 'jqxmenu',  plugins_url('jqwidgets/jqxmenu.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxmenu' ); 
	
	wp_register_script( 'jqxgrid',  plugins_url('jqwidgets/jqxgrid.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid' ); 
	
	wp_register_script( 'jqxgrid.selection',  plugins_url('jqwidgets/jqxgrid.selection.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid.selection' ); 
	
	wp_register_script( 'jqxgrid.columnsresize',  plugins_url('jqwidgets/jqxgrid.columnsresize.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid.columnsresize' ); 
	
	wp_register_script( 'jqxdata',  plugins_url('jqwidgets/jqxdata.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxdata' ); 
	
	wp_register_script( 'jqxdropdownlist',  plugins_url('jqwidgets/jqxdropdownlist.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxdropdownlist' ); 
	
	wp_register_script( 'jqxgrid.grouping',  plugins_url('jqwidgets/jqxgrid.grouping.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid.grouping' ); 
	
	wp_register_script( 'jqxgrid.sort',  plugins_url('jqwidgets/jqxgrid.sort.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid.sort' ); 
	
	wp_register_script( 'jqxgrid.filter',  plugins_url('jqwidgets/jqxgrid.filter.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid.filter' ); 
	
	wp_register_script( 'jqxlistbox',  plugins_url('jqwidgets/jqxlistbox.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxlistbox' ); 
	
	wp_register_script( 'jqxgrid.aggregates',  plugins_url('jqwidgets/jqxgrid.aggregates.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid.aggregates' );	
	
	wp_register_script( 'jqxwindow',  plugins_url('jqwidgets/jqxwindow.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxwindow' );	
	
	wp_register_script( 'jqxgrid.export',  plugins_url('jqwidgets/jqxgrid.export.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid.export' );
	wp_register_script( 'jqxdata.export',  plugins_url('jqwidgets/jqxdata.export.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxdata.export' );	
	/*	
	wp_register_script( 'jqxcore2',  plugins_url('jqwidgets/jqxcore2.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxcore2' ); 
	
	wp_register_script( 'jqxgridfilter',  plugins_url('jqwidgets/jqxgrid.filter.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgridfilter' ); 
	
	wp_register_script( 'jqxgridgrouping',  plugins_url('jqwidgets/jqxgrid.grouping.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgridgrouping' ); 
	
	wp_register_script( 'jqxgridsort',  plugins_url('jqwidgets/jqxgrid.sort.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgridsort' ); 
	
	wp_register_script( 'jqxdropdownlist',  plugins_url('jqwidgets/jqxdropdownlist.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxdropdownlist' ); 
	
	wp_register_script( 'jqxlistbox',  plugins_url('jqwidgets/jqxlistbox.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxlistbox' ); 
	
	wp_register_script( 'jqxbuttons',  plugins_url('jqwidgets/jqxbuttons.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxbuttons' ); 
	wp_register_script( 'jqxscrollbar',  plugins_url('jqwidgets/jqxscrollbar.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxscrollbar' ); 
	wp_register_script( 'jqxmenu',  plugins_url('jqwidgets/jqxmenu.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxmenu' ); 
	wp_register_script( 'jqxgrid',  plugins_url('jqwidgets/jqxgrid.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid' ); 
	wp_register_script( 'jqxgrid.selection',  plugins_url('jqwidgets/jqxgrid.selection.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid.selection' ); 
	wp_register_script( 'jqxgrid.columnsresize',  plugins_url('jqwidgets/jqxgrid.columnsresize.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'jqxgrid.columnsresize' ); 
	//wp_register_script( 'jqxdata',  plugins_url('jqwidgets/jqxdata.js', __FILE__ ),array( 'jquery' )); 
	//wp_enqueue_script( 'jqxdata' ); 
	
	
	wp_register_script( 'demo',  plugins_url('scripts/demos.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'demo' );
	wp_register_script( 'export',  plugins_url('jqwidgets/jqxgrid.export.js', __FILE__ ),array( 'jquery' )); 
	wp_enqueue_script( 'export' );	
	*/
	//wp_register_script( 'jqx-all',  plugins_url('jqwidgets/jqx-all.js', __FILE__ ),array( 'jquery' )); 
	//wp_enqueue_script( 'jqx-all' ); 
	
	
	//wp_register_script( 'test',  plugins_url('test.js', __FILE__ )); 
	//wp_enqueue_script( 'test' );

		wp_register_script( 'jsxcompressor',plugins_url('jsxcompressor/jsxcompressor.min.js', __FILE__ ),array( 'jquery' )); 
		wp_enqueue_script( 'jsxcompressor' ); 
}

//enqueue styles and js files
add_action('wp', 'my_scripts_method');



function jqgrid_func($atts,$datafields_cellsrenderers=NULL){
   extract(shortcode_atts(array(
      //'url' => plugins_url('test.js', __FILE__ ),//url: A string containing the URL to which the request is sent. 
	  'type' => 'GET',//type: The type of request to make ("POST" or "GET"), default is "GET". 
	  'id' => 'id',//id: A string containing the Id data field. 
	  'container_id' => 'jqxgrid',
	  'datafields_names' => 'option_id,option_name,option_value,autoload,id_sum',
	  //string/number/checkbox/numberinput/dropdownlist/combobox/datetimeinput/textbox/template/custom
	  'datafields_types' => 'string,string,string,string,number',
	  'datafields_labels' => 'Option ID,Option Name,Option Value,Autoload,ID Sum',
	  'datafields_widths' => '',
	  'datafields_aligns' => 'center,center,center,center,center',//aligning heade of column
	  'datafields_cellsaligns' => 'right,right,right,right,right',//aligning cell of data
	  //dont use comma in these
	  
	  'theme' => 'energyblue',
	  'width' => 650,
	  'height' => 450,
	  'sortable' => 'true',
	  'filterable' => 'true',
	  'showfilterrow' => 'true',
	  'groupable' => 'true',
	  'groups' => '',
	  'altrows' => 'true',
	  'pageable' => 'true',
	  'columnsresize' => 'true',
	  'columnsautoresize' => 'true',
	  'rtl' => 'true',
	  'autoresizecolumns' => 'all',
	  'sql_query' => 'SELECT * FROM wp_options LIMIT 3',
	  'sql_fields' => 'option_id,option_name,option_value,autoload',
	  'lang' => 'fa',
	  'autoheight'=>'true',
	  'autorowheight'=>'true',
	  'rowsheight' => 35,
	  'columnsheight' => 35,
	  'filterrowheight' => 35,
	  'pagerheight' => 35,
	  'enablebrowserselection' => true,//this enable you to select the text of a cell for cpying or anything else
	  //'draggable' => 'true',
	  //'sql_compute' => '',
	  //'sql_no' => 'true',
	  //'data' => '{maxRows:50}'	//data: Data to be sent to the server.   

 
   ), $atts));
  // $datafields_cellsrenderers = "return '<span style=\"color:#FF0033; float:'+columnproperties.cellsalign+'\" ><img src=\"http://localhost/wp-content/uploads/2016/03/ajax-loader.gif\">'+value+'</span>';,,,,";
   $datafields_cellsrenderers = $datafields_cellsrenderers;
   //var_dump( $datafields_names);

   $custom_jqgrid.='<script type="text/javascript"> ';
   $custom_jqgrid.=' jQuery(document).ready(function ($) { ';
   $custom_jqgrid.='var url = "'.plugins_url('json.php', __FILE__ ).
   '/?sql_query='.addslashes($sql_query).';&sql_fields='.addslashes($sql_fields).'";';
   $datafields_names=explode(',',$datafields_names);
   $datafields_types=explode(',',$datafields_types);
   $datafields_labels=explode(',',$datafields_labels);
   if($datafields_widths){
	   $datafields_widths=explode(',',$datafields_widths);
   }
   if($datafields_aligns){
	   $datafields_aligns=explode(',',$datafields_aligns);
   }
   if($datafields_cellsaligns){
	   $datafields_cellsaligns=explode(',',$datafields_cellsaligns);
   }
   if($datafields_cellsrenderers){
	   $datafields_cellsrenderers=explode(',',$datafields_cellsrenderers);
   }
   // prepare the data
   $custom_jqgrid.='var source ={datatype: "json",datafields: [ ';
foreach($datafields_names as $datafields_name_key=>$datafields_name_val){
	$datafields[]='{ name: "'.$datafields_name_val.'", type: "'.$datafields_types[$datafields_name_key].'" }';
}
	 $custom_jqgrid.=implode(',',$datafields);
	 $custom_jqgrid.='],id: "SSSidSSS", url: url'; 
	 //$custom_jqgrid.= 'type:"GET"';
	 //$custom_jqgrid.= 'data:{maxRows:50}';
	 $custom_jqgrid.='}; ';
               
			
     $custom_jqgrid.='var dataAdapter = new jQuery.jqx.dataAdapter(source); ';
	//$custom_jqgrid.='$("#'.$container_id.'").jqxGrid("localizestrings", localizationobj); ';
		include_once('custom-functions.php');
			// create jqxgrid.
     $custom_jqgrid.='jQuery("#'.$container_id.'").jqxGrid({ ';
	 $lang=strtolower($lang);
	if($lang=='fa'){
		$custom_jqgrid.='localization: localizationobj,';
	}
	$custom_jqgrid.='theme:"'.$theme.'",';
    $custom_jqgrid.='width:'.$width.',';
    $custom_jqgrid.='height:'.$height.',';
    $custom_jqgrid.='source:dataAdapter,';
	$custom_jqgrid.='sortable:'.$sortable.',';
	$custom_jqgrid.='filterable:'.$filterable.',';
	$custom_jqgrid.='showfilterrow:'.$showfilterrow.',';
	$custom_jqgrid.='groupable:'.$groupable.',';
	if($groups){
		$custom_jqgrid.='groups:["'.$groups.'"],';
	}
	$custom_jqgrid.='altrows:'.$altrows.',';
	//$custom_jqgrid.='pageable: '.$pageable.',';
	if($columnsautoresize=='true'){
		$custom_jqgrid.='columnsautoresize:true,';
		$custom_jqgrid.='columnsresize:true,';
	}elseif($columnsresize=='true'){
		$custom_jqgrid.='columnsresize:true,';
	}else{
		$custom_jqgrid.='columnsresize:false,';
	}
	$custom_jqgrid.='rtl:'.$rtl.',';
    $custom_jqgrid.='autoheight:'.$autoheight.',';
	if($autorowheight=='true'){
		$custom_jqgrid.='autoheight:true ,';
		$custom_jqgrid.='autorowheight:true,';
	}elseif($autoheight=='true'){
		$custom_jqgrid.='autoheight:true,';
	}else{
		$custom_jqgrid.='height:'.$height.',';
	}
	$custom_jqgrid.='rowsheight:'.$rowsheight.',';
	$custom_jqgrid.='columnsheight:'.$columnsheight.',';
	$custom_jqgrid.='filterrowheight:'.$filterrowheight.',';
	$custom_jqgrid.='pagerheight:'.$pagerheight.',';
	$custom_jqgrid.='enablebrowserselection:'.$enablebrowserselection.',';
	
	$custom_jqgrid.='columns:[';
foreach($datafields_names as $datafields_name_key=>$datafields_name_val){
	$col=array();
	$col[]='text:"'.$datafields_labels[$datafields_name_key].'" ';
	$col[]='datafield:"'.$datafields_name_val.'"' ;
	if($datafields_widths){
		$col[]='width:'.$datafields_widths[$datafields_name_key];
	}
	if($datafields_aligns){
		$col[]='align:"'.$datafields_aligns[$datafields_name_key].'" ';
	}
	if($datafields_cellsaligns){
		$col[]='cellsalign:"'.$datafields_cellsaligns[$datafields_name_key].'" ';
	}
	if($datafields_cellsrenderers){
		//var_dump($datafields_cellsrenderers);
		if($datafields_cellsrenderers[$datafields_name_key]<>''){
		$col[]='cellsrenderer:function(row,columnfield,value,defaulthtml,columnproperties){'.$datafields_cellsrenderers[$datafields_name_key].'}';
		}
	}
//print_r($col[99]);
	$columns[]='{'.implode(',',$col).'}';
}
$custom_jqgrid.=implode(',',$columns);
$custom_jqgrid.=']});';
  $custom_jqgrid.='});';
		

   $custom_jqgrid.='</script>';
   $custom_jqgrid.='<div id="'.$container_id.'"></div>';

   //$custom_jqgrid.='<input type="button" value="دریافت فایل اکسل" id="excelExport" />';
   //var_dump($custom_jqgrid);
   
   return $custom_jqgrid;
}
function register_shortcodes(){
   add_shortcode('ehrajat_table', 'jqgrid_func');
}
add_action( 'init', 'register_shortcodes');

	if ( !sst_get_option( 'save_file' ) ) {
		sst_save_option( 'save_file', plugins_url( '', __FILE__ ) . '/save-file.php' );
	}

//[ehrajat_table sql_query="SELECT * FROM wp_moshakhasate_sejeli a INNER JOIN wp_table_relations b ON a.id=b.id_1 AND b.table_1='moshakhasate_sejeli' AND b.table_2='rabete' INNER JOIN wp_rabete c ON b.id_2=c.id" sql_fields="nam,name_khanevadegi,kode_meli,rabete" datafields_names="nam,name_khanevadegi,kode_meli,rabete" datafields_types="string,string,string,string" datafields_labels="نام,نام خانوادگی,کد ملی,رابطه" rtl='true']
//[ehrajat_table sql_query="SELECT * FROM wp_rabete" sql_fields="id,rabete" datafields_names="id,rabete" datafields_types="int,string" datafields_labels="#,رابطه" rtl='true']

//[ehrajat_table sql_query="SELECT * FROM wp_moshakhasate_sejeli a INNER JOIN wp_pelak b ON a.id=b.malek_id INNER JOIN wp_vaziyat_pelak c ON b.vaziyat_pelak=c.id" sql_fields="nam,name_khanevadegi,kode_meli,iran,se_ragham,harf,do_ragham,vaziyat" datafields_names="nam,name_khanevadegi,kode_meli,iran,se_ragham,harf,do_ragham,vaziyat" datafields_types="string,string,string,string,string,string,string,string" datafields_labels="نام,نام خانوادگی,کد ملی,ایران,سه رقم,حرف,دو رقم,وضعیت پلاک" rtl='true']
































/////////////////////////////////////////////
/*
function sst_add_jqwidget_custom_options() {
	$json_file = 'json.php';
	$json_url = plugins_url( '', __FILE__ ) . '/';
	$json_path = plugin_dir_path( __FILE__ );
	$list_page_id = 7;
	$list_page_url = get_page_link( $list_page_id );
	
	if ( !sst_get_option( 'json_path' ) ) {
		sst_save_option( 'json_path', $json_path );
	}
	if ( !sst_get_option( 'json_url' ) ) {
		sst_save_option( 'json_url', $json_url );
	}
	if ( !sst_get_option( 'json_file' ) ) {
		sst_save_option( 'json_file', $json_url.$json_file );
	}
	if ( !sst_get_option( 'list_page' ) ) {
		sst_save_option( 'list_page', $list_page_url );
	}


}
	$json = sst_get_option( 'json_url' ) . sst_get_option( 'json_file' );

	add_action( 'wp_loaded', 'sst_add_jqwidget_custom_options' );
function sst_load_jsxcompressor() {
	wp_register_script( 'jsxcompressor', plugins_url( 'jsxcompressor/jsxcompressor.min.js', __FILE__ ), array( 'jquery' ) );
	wp_enqueue_script( 'jsxcompressor' );
}

//enqueue styles and js files
add_action( 'wp', 'sst_load_jsxcompressor' );
*/