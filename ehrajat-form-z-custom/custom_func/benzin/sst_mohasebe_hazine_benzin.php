<?php
function sst_mohasebe_hazine_benzin($gharardad_benzin_avaliye,$gharardad_benzin_sanaviye,$gharardad_khodro_id,$gharardad_mohasebe_benzin){
	if($gharardad_mohasebe_benzin==''){
		if(!empty($gharardad_benzin_sanaviye)){
			$gharardad_khodro = sst_get_by_id($gharardad_khodro_id,'rent_khodro');
			if($gharardad_benzin_sanaviye<$gharardad_benzin_avaliye and (($gharardad_khodro->khodro_hajme_bak!=NULL) or ($gharardad_khodro->khodro_hajme_bak!=0) or($gharardad_khodro->khodro_hajme_bak!=''))){
				//echo 'کسر بنزین-حجم باک'.$gharardad_khodro->khodro_hajme_bak.'*'.floor(($gharardad_benzin_avaliye-$gharardad_benzin_sanaviye)).'/8=کسر بنزین'.floor(($gharardad_benzin_avaliye-$gharardad_benzin_sanaviye)/8*$gharardad_khodro->khodro_hajme_bak).'تومان';
				return floor(($gharardad_benzin_avaliye-$gharardad_benzin_sanaviye)*$gharardad_khodro->khodro_hajme_bak/8);
			}else{
				//echo 'حجم باک خودرو تعریف نشده';
				return NULL;
			}
		}else{
			//echo 'بنزین ثانویه ثبت نگردیده است';
			return NULL;

		}
	}else{
		//echo 'بنزین محاسبه نمیشود';
		return NULL;
	}
}