<?php

$sst['type']='map';
$sst['function']='sst_map';
$sst['epithet']='Map';
$sst['description']='';
$sst['slug']='map_field';
$sst['owner']='Ehrajat';
$sst['id']=18;



//function sst_map(){}
function sst_map($input_id,$vals=NULL){
	global $input_table,$keyboard_table,$event_table,$standard_table,$mode,$user;
	wp_register_script('bootstrap.min', plugins_url('map-inc\js\bootstrap.min.js', __FILE__), array('jquery'),'1.1', true);
	wp_enqueue_script('bootstrap.min');
	wp_register_script('jquery.placepicker', plugins_url('map-inc\js\jquery.placepicker.js', __FILE__), array('jquery'),'1.1', true);
	wp_enqueue_script('jquery.placepicker');
	wp_register_script('custom.map.js', plugins_url('map-inc\js\custom.js', __FILE__), array('jquery'),'1.1', true);
	wp_enqueue_script('custom.map.js');
	
	wp_register_script('googleapis', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyCSsCvBKwrTTu93Bx1jxWhV0P8AGo_bZgM&sensor=true&libraries=places');//google said sensor param is not needed
	wp_enqueue_script('googleapis');
	
	wp_register_style('bootstrap.min', plugins_url('map-inc\css\bootstrap.min.css', __FILE__));
	wp_enqueue_style('bootstrap.min');
	wp_register_style('bootstrap-theme.min', plugins_url('map-inc\css\bootstrap-theme.min.css', __FILE__));
	wp_enqueue_style('bootstrap-theme.min');
	wp_register_style('custom.map.css', plugins_url('map-inc\css\custom.css', __FILE__));
	wp_enqueue_style('custom.map.css');


	if(DEBUG){
		echo 'sst_map<br />';
	}

	$obj_input = sst_get_by_id($input_id,$input_table);
	$attributes['appearance'] = sst_create_appearance($obj_input->appearance_id);//it doesn't contain id
	//$attributes['keyboard'] = sst_create_keyboard($obj_input->keyboard_id);
	$attributes['events'] = sst_create_events($obj_input->event_ids);
	$attributes['language'] = sst_create_language($obj_input->language_id);
	$attributes['id'] = sst_create_id($obj_input,true);
	//$attributes['class'] = sst_create_class($obj_input);
	
	$obj_standard = sst_get_by_id($obj_input->standard_id,$standard_table);
	if($obj_standard){
		//dbg($obj_standard);
		$attributes['name'] = sst_create_name($obj_input);
		//dbg($vals);
		$attributes['value'] = sst_create_value($obj_standard,$obj_input,$vals);
		//$attributes['value'] = ' value="ssssss"';
		$attributes['maxlength'] = sst_create_maxlength($obj_standard);
		$attributes['size'] = sst_create_size($obj_standard);
		$attributes['disabled'] = sst_create_disabled($obj_standard);
		$attributes['readonly'] = sst_create_readonly($obj_standard);
		$attributes['datafld'] = sst_create_datafld($obj_standard);
		$attributes['datascr'] = sst_create_datascr($obj_standard);
		$attributes['required'] = sst_create_required($obj_standard);
		$attributes['metas'] = sst_create_metas($obj_standard);
		$id = sst_get_pure_attribute($attributes['id']);
		
		//$text_input .= '<div class="form-group'.$id.'">';

		$text_input .= '<input class="placepicker form-control" data-map-container-id="collapseOne'.$id.'" '.implode('',$attributes).' placeholder="انتخاب موقعیت کلی" value="'.$attributes['value'].'">';
        $text_input .= '<span id="collapseOne'.$id.'" class="collapse">';
        $text_input .= '<span class="placepicker-map thumbnail"></span>';
        $text_input .= '</span>';
	}else{
		echo 'SST#ERROR: INCORECT STANDARD ID';
	}
	if(DEBUG){
		echo 'End sst_text<br />';
	}
	return $text_input;
}









?>