<?php
function online_mojoodi(){
	$mojoodi_vals = sst_load_data_for_action();
	if($mojoodi_vals){
		$mojoodi = $mojoodi_vals['eval_result']['before_data_action'];
	}
	return $mojoodi;
}