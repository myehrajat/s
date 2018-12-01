<?php

function sst_mohasebe_hazine_takhir($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat,$gharardad_gheymate,$gharardad_mohasebe_takhir){
	if($gharardad_tarikhe_odat==NULL or $gharardad_tarikhe_odat==0){
		$gharardad_tarikhe_odat=sst_current_jalali();
	}
	$takhir_zarib = sst_get_time_diff_zarib($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat);
//dbg($takhir_zarib);
	if($takhir_zarib>=0){
		switch($gharardad_mohasebe_takhir){
			case '24':
			break;
				
			case NULL:
			case '0':
			case '':
				if($takhir_zarib>0){
					return floor($takhir_zarib*$gharardad_gheymate);
				}else{
					return NULL;
				}
			break;
				
			case '6':
				if($takhir_zarib>0.25){
					return floor($takhir_zarib*$gharardad_gheymate);
				}else{
					return NULL;
				}
			break;
				
			case '9':
				if($takhir_zarib>0.50){
					return floor($takhir_zarib*$gharardad_gheymate);
				}else{
					return NULL;
				}
			break;
				
			case '12':
				if($takhir_zarib>0.75){
					return floor($takhir_zarib*$gharardad_gheymate);
				}else{
					return NULL;
				}
			break;
				
			case '100':
					return floor($gharardad_gheymate);
			break;
		}
	}else{
		//return NULL;
	}
} 

