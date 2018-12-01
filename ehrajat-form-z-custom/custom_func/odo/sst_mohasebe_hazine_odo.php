<?php

function sst_mohasebe_hazine_odo($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat,$odo_avaliye,$odo_sanaviye,$odo_mojaz,$odo_hazine,$gharardad_mohasebe_odo,$gharardad_gheymate,$gharardad_mohasebe_takhir){
	if(!empty($odo_hazine)){
		if($gharardad_mohasebe_odo==''){
			if($odo_mojaz>0 AND $odo_mojaz!=''){
				if($odo_avaliye){
					if($odo_sanaviye){
						//this add extra allowed odo according to delay تاخیر باعث افزایش کیلومتر مجاز میشود
						//$allowed_odo = ceil((sst_get_day_diff_min_one($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat)+sst_get_time_diff_zarib($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat))*$odo_mojaz);
						//this NOT add extra allowed odo according to delay تاخیر کمتر از 12 ساعت باعث افزایش کیلومتر مجاز نمیشود
							//dbg( $gharardad_mohasebe_takhir);
						if((sst_get_time_diff_zarib($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat)==1 AND  $gharardad_mohasebe_takhir <> 24) OR $gharardad_mohasebe_takhir == 100){//if more than 12h takhir but not mohasebeh takhir so we mohasebe odo and minus one day to get allowed
							$allowed_odo = ceil((sst_get_day_diff_min_one($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat)+1)*$odo_mojaz);
						}else{
							$allowed_odo = ceil((sst_get_day_diff_min_one($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat))*$odo_mojaz);
						}
						$odo = $odo_sanaviye-$odo_avaliye;
						if($odo>$allowed_odo){
							$percent = strpos($odo_hazine,'%');
							$tavafoghi = strpos(strtolower ($odo_hazine),'t');
							if($percent===false && $tavafoghi===false){
								//echo 'مبتنی بر هر کیلومتر بوده است';
								return ($odo - $allowed_odo)*$odo_hazine;
							}elseif($percent!==false){
								$odo_hazine_percent = str_replace('%','',$odo_hazine);
								$per_odo=($gharardad_gheymate*$odo_hazine_percent/100/$odo_mojaz);
								$ezafe_odo=$odo - $allowed_odo;
								//echo 'مبتنی بر درصد بوده است';
								return round(round($per_odo,2)*$ezafe_odo);
							}elseif($tavafoghi !==false){
								//echo 'توافقی بوده است';
								//dbg($odo_hazine);

								$odo_hazine_tavafoghi = str_replace('t','',strtolower ($odo_hazine));
								//dbg($odo_hazine_tavafoghi );
								return floor($odo_hazine_tavafoghi);
							}else{
								//echo 'فیلد هزینه اضافه کیلومتر فقط میتواند شامل عدد % و حرف T یا ف t باشد';
								return NULL;
							}
						}else{
							//echo 'اضافه کیلومتر ندارد';
							return NULL;
						}
					}else{
						//echo 'کیلومتر ثانویه ندارد';
						return NULL;

					}
				}else{
					//echo 'کیلومتر اولیه ندارد';
					return NULL;
				}
			}else{
				//echo 'کیلومتر مجاز ندارد';
				return NULL;
			}
		}else{
			//echo 'کیلومتر آزاد بوده';
			return NULL;
		}
	}else{
		//echo 'هزینه کیلومتر اضافه ندازد';
		return NULL;
	}
}