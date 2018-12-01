<?php
function sst_get_allowed_odo($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat,$odo_mojaz,$gharardad_mohasebe_takhir){
							//this NOT add extra allowed odo according to delay تاخیر کمتر از 12 ساعت باعث افزایش کیلومتر مجاز نمیشود
						if((sst_get_time_diff_zarib($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat)==1 AND  $gharardad_mohasebe_takhir <> 24) OR $gharardad_mohasebe_takhir == 100){
							$allowed_odo = ceil((sst_get_day_diff_min_one($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat)+1)*$odo_mojaz);
						}else{
							$allowed_odo = ceil((sst_get_day_diff_min_one($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat))*$odo_mojaz);
						}
return $allowed_odo;
}
function sst_text_sabt_odo($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat,$odo_avaliye,$odo_sanaviye,$odo_mojaz,$odo_hazine,$gharardad_mohasebe_odo,$gharardad_gheymate,$gharardad_khodro_id,$gharardad_mohasebe_takhir){
	global $wpdb;
	$servis_query="SELECT * FROM wp_rent_servis WHERE servis_khodro_id = ".$gharardad_khodro_id." AND servis_noe_servis='روغن' ORDER BY servis_kilometer DESC LIMIT 1";
	$servis_res=$wpdb->get_results($servis_query);
	$servis=$servis_res[0];
	$test_odo_sanaviye=preg_match('/^[1-9][0-9]*$/', (string)$odo_sanaviye);
	$test_servis=preg_match('/^[1-9][0-9]*$/', (string)$servis->servis_kilometer);
	//if($servis){}
	//dbg($servis_res);dbg($servis);
	if(count($servis_res)!=0 AND $servis!=NULL AND $servis!=false){
	if($test_odo_sanaviye){
		if($test_servis){
			$odo_servis = $odo_sanaviye-$servis->servis_kilometer;
			//dbg($odo_servis);
			if($odo_servis<=0){
				echo '<div style="color:#FF0000;">کیلومتر برگشت اشتباه ثبت شده است کیلومتر تعویض روغن بیشتر از کیلومتر عودت است.</div>';
			}elseif($odo_servis<4000){
				echo '<div style="color:#2ACF2A;">کارکرد روغن '.$odo_servis.' می باشد و شرایط روغن مناسب است.</div>';
			}elseif($odo_servis>=4000 and $odo_servis<4500){
				echo '<div style="color:#ADAD2A;">کارکرد روغن '.$odo_servis.' می باشد و نزدیک به دوره سرویس روغن است.</div>';
			}elseif($odo_servis>=4500 and $odo_servis<=5000){
				echo '<div style="color:#FFA500;">کارکرد روغن '.$odo_servis.' می باشد و روغن می بایست تعویض شود.</div>';
			}elseif($odo_servis>5000){
				echo '<div style="color:#FF0000;">کارکرد روغن '.$odo_servis.' می باشد و کارکرد روغن از حد مجاز گذشته در اسرع وقت اقدام به تعویض روغن شود.</div>';
			}
		}else{
				echo '<div style="color:#FF0000;">کیلومتر سرویس با فرمت درست ثبت نشده لطفا جز از عدد از چیز دیگری استفاده نکنید.</div>';
		}
	}else{
		if($odo_sanaviye==NULL or $odo_sanaviye=='' or $odo_sanaviye= false){
			echo '<div style="color:#FF0000;">در کیلومتر اولیه و تحویل سرویس روغن چک نمیشود.</div>';
		}else{
			echo '<div style="color:#FF0000;">کیلومتر ثانویه با فرمت درست ثبت نشده لطفا جز از عدد از چیز دیگری استفاده نکنید.</div>';
		}
	}
	}else{
		echo '<div style="color:#FF0000;">کیلومتر سرویس تعویض روغنی برای این خودرو ثبت نشده است.</div>';
	}
	if($gharardad_tarikhe_odat==NULL or $gharardad_tarikhe_odat==''){
		$gharardad_tarikhe_odat = sst_current_jalali();
	}
	if(!empty($odo_hazine)){

		if($gharardad_mohasebe_odo==''){
			if($odo_mojaz>0 AND $odo_mojaz!=''){
				if($odo_avaliye){
					if($odo_sanaviye){
						//this add extra allowed odo according to delay تاخیر باعث افزایش کیلومتر مجاز میشود
						//$allowed_odo = ceil((sst_get_day_diff_min_one($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat)+sst_get_time_diff_zarib($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat))*$odo_mojaz);
						$allowed_odo = sst_get_allowed_odo($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat,$odo_mojaz,$gharardad_mohasebe_takhir);
						$odo = $odo_sanaviye-$odo_avaliye;
						if($odo>$allowed_odo){

							$percent = strpos($odo_hazine,'%');
							$tavafoghi = strpos(strtolower ($odo_hazine),'t');
													//dbg( $percent);
													//echo '<br>';
													//dbg( $tavafoghi);
													//echo '<br>';

							if($percent===false && $tavafoghi===false){
								echo 'اضافه کیلومتر-'.($odo - $allowed_odo).'کیلومتر*'.$odo_hazine.'='.($odo - $allowed_odo)*$odo_hazine.' تومان';
								return 'اضافه کیلومتر-'.($odo - $allowed_odo).'کیلومتر*'.$odo_hazine;
							}elseif($percent!==false){
								$odo_hazine_percent = str_replace('%','',$odo_hazine);
								//dbg($odo_hazine_percent);
								$per_odo = ($gharardad_gheymate*$odo_hazine_percent/100/$odo_mojaz);
								$ezafe_odo = $odo - $allowed_odo;
								echo 'اضافه کیلومتر-'.$odo_hazine_percent.'% اجاره روزانه به ازای هر '.$odo_mojaz.' اضافه-'.($odo - $allowed_odo).'کیلومتر*'.round($per_odo,2).'='.round(($odo - $allowed_odo)*round($per_odo,2)).' تومان';
								return 'اضافه کیلومتر-'.$odo_hazine_percent.'% اجاره روزانه به ازای هر -'.($odo - $allowed_odo).'کیلومتر*'.$per_odo;
							}elseif($tavafoghi!==false){

								$odo_hazine_tavafoghi = str_replace('t','',strtolower($odo_hazine));
								$ezafe_odo=$odo - $allowed_odo;
								echo 'اضافه کیلومتر-توافقی برای'.$ezafe_odo.'اضافه کیلومتر='.$odo_hazine_tavafoghi.'تومان';
								return 'اضافه کیلومتر-توافقی برای'.$ezafe_odo.'اضافه کیلومتر';
							}else{
								echo 'فیلد هزینه اضافه کیلومتر فقط میتواند شامل عدد % و حرف T یا ف t باشد';
								return 'فیلد هزینه اضافه کیلومتر فقط میتواند شامل عدد % و حرف T یا ف t باشد';
							}

						}else{
							echo '<div style="color:#2ACF2A;">اضافه کیلومتر ندارد.</div>';
							return 'اضافه کیلومتر ندارد';
						}
					}else{
						echo '<div style="color:#FF0000;">کیلومتر ثانویه ندارد</div>';
						return 'کیلومتر ثانویه ندارد';
					}
				}else{
					echo '<div style="color:#FF0000;">کیلومتر اولیه ندارد</div>';
					return 'کیلومتر اولیه ندارد';
				}
			}else{
				echo '<div style="color:#FF0000;">کیلومتر مجاز تعریف نشده</div>';
				return 'کیلومتر مجاز تعریف نشده';
			}
		}else{
						$allowed_odo = sst_get_allowed_odo($gharardad_tarikhe_tahvil,$gharardad_tarikhe_odat,$odo_mojaz,$gharardad_mohasebe_takhir);
						$odo = $odo_sanaviye-$odo_avaliye;
			if($odo>$allowed_odo){
				$all_extra_odo = $odo-$allowed_odo;
			}else{
				$all_extra_odo = 0;
			}
			echo '<div style="color:#FF0000;">'.$all_extra_odo.'اضافه کیلومتر اضافه دارد ولی کیلومتر آزاد بوده است.</div>';
			return 'کیلومتر آزاد بوده';
		}
	}else{
		echo '<div style="color:#FF0000;">هزینه کیلومتر اضافه تعریف نشده است.</div>';
		return 'هزینه کیلومتر اضافه تعریف نشده';
	}
	//sst_get_by_id();
	//if(){
		
		
	//}
	//$odo_sanaviye;
}
