<?php

function sst_text_sabt_benzin($gharardad_benzin_avaliye,$gharardad_benzin_sanaviye,$gharardad_khodro_id,$gharardad_mohasebe_benzin){
	if($gharardad_mohasebe_benzin==''){
		$gharardad_khodro = sst_get_by_id($gharardad_khodro_id,'rent_khodro');
		if(!empty($gharardad_benzin_sanaviye)){
			if($gharardad_benzin_sanaviye<$gharardad_benzin_avaliye ){
				if($gharardad_khodro->khodro_hajme_bak!=NULL or $gharardad_khodro->khodro_hajme_bak!=0 or $gharardad_khodro->khodro_hajme_bak!=''){
					echo 'کسر بنزین-حجم باک'.$gharardad_khodro->khodro_hajme_bak.'*'.floor(($gharardad_benzin_avaliye-$gharardad_benzin_sanaviye)).'/8=کسر بنزین'.floor(($gharardad_benzin_avaliye-$gharardad_benzin_sanaviye)/8*$gharardad_khodro->khodro_hajme_bak).'تومان';
					return 'بنزین-حجم باک'.$gharardad_khodro->khodro_hajme_bak.'*'.floor(($gharardad_benzin_avaliye-$gharardad_benzin_sanaviye)).'/8';
				}else{
					echo 'حجم باک خودرو تعریف نشده';
					return 'حجم باک خودرو تعریف نشده';
				}
			}else{
			echo 'کسر بنزین ندارد';
			return 'کسر بنزین ندارد';
			}
		}else{
			echo 'بنزین ثانویه ثبت نگردیده است';
			return 'بنزین ثانویه ثبت نگردیده است';
		}
	}else{
		echo 'بنزین محاسبه نمیشود';
		return 'بنزین محاسبه نمیشود';
	}
}
