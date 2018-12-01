<?php
function online_get_sys_car_id($mojoodi){
	if($mojoodi){
		foreach($mojoodi as $khodro){
			$sys_car_id[] = $khodro->id;
		}
	}
	return $sys_car_id;
}