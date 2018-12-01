<?php

function sst_long_term_text_sabt_rooz($start,$end,$gharardad_gheymate,$status,$gharardad_mostajer_id,$gharardad_mojer_id,$khodro_id,$save_id,$term){
	//$save_id=$save_id.'temporary';
	$d = sst_get_day_diff_min_one($start,$end);
	$dw = ceil($d/$term);
	$modulus_d=$d%$term;
	if($modulus_d==0){
		$full_term=TRUE;
	}else{
		$full_term=FALSE;
	}
	$counter=1;
	while ($dw>=$counter){
		if($dw!=$counter){//dont act on the last
			if($status!='اجاره جاری'){
				echo ($counter).'-'.$status.'-'.'دوره ای-'.$term.'روز='. ceil($gharardad_gheymate*$term).'تومان<br>';
			}
			if($counter==1){$tarikh = $start;}
			$tarikh = sst_step_date($tarikh,$term);
			if($status=='اجاره جاری'){
				$jari = sst_jari_rooz(
					$gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,
					ceil($gharardad_gheymate*$term),
					$khodro_id,
					($counter).'-'.$status.'-'.'دوره ای'.'-'.$term.'روز'.'*'.$gharardad_gheymate,#$text
					$save_id);
				if($jari!=NULL){
					$jari_array[] = $jari;
				}
			}elseif($status=='اجاره'){
				//sst_insert_rooz_by_query();
					
					$insert_rooz[] = array($gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,#$tarikh
					ceil($gharardad_gheymate*$term),#$mablagh
					$khodro_id,
					($counter).'-'.$status.'-'.'دوره ای'.'-'.$term.'روز'.'*'.$gharardad_gheymate,#$text
					$status,#$status
					$save_id);
			}else{
				echo 'اجاره نه جاری است و نه غیر جاری.';
			}
		}else{
			if(strtolower(sst_get_option( 'mohasebe_doreye_kamel' ) ) == 'yes'  && $status=='اجاره جاری'){
				if($status!='اجاره جاری'){
					echo ($counter).'-'.$status.'-'.'دوره ای-'.$term.'روز='. ceil($gharardad_gheymate*$term).'تومان<br>';
				}
				if($status=='اجاره جاری'){
					if($counter==1){$tarikh = $start;}
					$tarikh = sst_step_date($tarikh,$term);
					$jari = sst_jari_rooz(
						$gharardad_mostajer_id,
						$gharardad_mojer_id,
						$tarikh,
						ceil($gharardad_gheymate*$term),
						$khodro_id,
						($counter).'-'.$status.'-'.'دوره ای'.'-'.$term.'روز'.'*'.$gharardad_gheymate,#$text
						$save_id);
					if($jari!=NULL){
						$jari_array[] = $jari;
					}
												///dbg($jari_array);

					return $jari_array;
				}elseif($status=='اجاره'){
					
					return ($counter).'-'.$status.'-'.'دوره ای-'.$term.'روز';
				}else{
					echo 'اجاره نه جاری است و نه غیر جاری.';
				}
			}else{
				if($full_term){
					if($status!='اجاره جاری'){
						echo ($counter).'-'.$status.'-'.'دوره ای-'.$term.'روز='. ceil($gharardad_gheymate*$term).'تومان<br>';
					}
					if($status=='اجاره جاری'){
						//sst_jnow($type)
						$jari = sst_jari_rooz(
							$gharardad_mostajer_id,
							$gharardad_mojer_id,
							sst_remove_time($end),
							ceil($gharardad_gheymate*$term),
							$khodro_id,
							($counter).'-'.$status.'-'.'دوره ای'.'-'.$term.'روز'.'*'.$gharardad_gheymate,#$text
							$save_id);
						if($jari!=NULL){
							$jari_array[] = $jari;
						}
										//dbg($jari_array);
						return $jari_array;
					}elseif($status=='اجاره'){
						register_shutdown_function ('sst_register_long_term_rooz',$insert_rooz);
						return ($counter).'-'.$status.'-'.'دوره ای-'.$term.'روز';
					}else{
						echo 'اجاره نه جاری است و نه غیر جاری.';
					}
				}else{
					if($status!='اجاره جاری'){
						echo ($counter).'-'.$status.'-'.$modulus_d.'روز='.ceil($gharardad_gheymate*$modulus_d).'تومان<br>';
					}
				if($status=='اجاره جاری'){
					$jari = sst_jari_rooz(
						$gharardad_mostajer_id,
						$gharardad_mojer_id,
						sst_remove_time($end),
						ceil($gharardad_gheymate*$modulus_d),
						$khodro_id,
						($counter).'-'.$status.'-'.'دوره ای'.'-'.$modulus_d.'روز'.'*'.$gharardad_gheymate,#$text
						$save_id);
					if($jari!=NULL){
						$jari_array[] = $jari;
					}
											//	dbg($jari_array);

					return $jari_array;
				}elseif($status=='اجاره'){
					register_shutdown_function ('sst_register_long_term_rooz',$insert_rooz);
					return ($counter).'-'.$status.'-'.'دوره ای-'.$modulus_d.'روز';
				}else{
					echo 'اجاره نه جاری است و نه غیر جاری.';
				}
					return ($counter).'-'.$status.'-'.$modulus_d.'روز';
				}

			}
		}
		$counter++;
		$d=$d-$term;
	}
}

function sst_long_term_rooz($start,$end,$term,$gharardad_gheymate,$status){
	//dbg($term);
	$d = sst_get_day_diff_min_one($start,$end);
	$dw = ceil($d/$term);
	if($d/$term==0){
		$full_term=TRUE;
	}else{
		$full_term=FALSE;
	}
		$counter=1;
		while ($dw>=$counter){
			if($dw==$counter){//act on the last
				if(strtolower(sst_get_option( 'mohasebe_doreye_kamel' ) ) == 'yes'  && $status=='اجاره جاری'){
					return ceil($gharardad_gheymate*$term);
				}else{
					if($full_term){
						return ceil($gharardad_gheymate*$term);
					}else{
						return ceil($gharardad_gheymate*$d);
					}

				}
			}
			$counter++;
			$d=$d-$term;
		}
}
/*
				sst_jari_rooz(
					$gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,
					ceil($gharardad_gheymate*$term),
					$khodro_id,
					($counter).'-'.$status.'-'.'دوره ای'.'-'.$term.'روز'.'*'.$gharardad_gheymate,#$text
					$save_id);
*/
function sst_register_long_term_rooz($insert_rooz){
	//dbg($insert_rooz);
///	echo 'aaaaaaaaaaa';
	/*
					//sst_insert_rooz_by_query();
					
					$insert_rooz[] = array(
					$gharardad_mostajer_id,
					$gharardad_mojer_id,
					$tarikh,#$tarikh
					ceil($gharardad_gheymate*$term),#$mablagh
					$khodro_id,
					($counter).'-'.$status.'-'.'دوره ای'.'-'.$term.'روز'.'*'.$gharardad_gheymate,#$text
					$status,#$status
					$save_id);
	*/
		//dbg($insert_rooz);
	if($insert_rooz!=NULL){
	foreach($insert_rooz as $col_value){
		//foreach($insert as $col_value){
		//dbg($insert_rooz);
		sst_insert_rooz_by_query($col_value[0],$col_value[1],$col_value[2],$col_value[3],$col_value[4],$col_value[5],$col_value[6],$col_value[7]);
		//}
	}
		}
}



function sst_jari_rooz($gharardad_mostajer_id,$gharardad_mojer_id,$tarikh,$mablagh,$khodro_id,$text,$save_id){
	global $dbprefix;

		$khodro_obj = sst_get_by_id($khodro_id,$dbprefix.'khodro');
	
		$shakhs_id = sst_find_shakhs( $gharardad_mostajer_id, $gharardad_mojer_id );
		$asli_shakhs_id = sst_find_asli_shakhs();
		
		$ashkhas_obj = sst_get_by_id($shakhs_id,$dbprefix.'ashkhas');
		$asli_ashkhas_obj = sst_get_by_id($asli_shakhs_id,$dbprefix.'ashkhas');

		$variz_bedehi = sst_find_variz_bedehi_jari( $gharardad_mostajer_id,$gharardad_mojer_id,$asli_shakhs_id,$shakhs_id,$mablagh);
	
	$result = array(
					"aid"=>$ashkhas_obj->id,
					"aashkhas_name_khanevadegi"=>$ashkhas_obj->ashkhas_name_khanevadegi,
					"aashkhas_nam"=>$ashkhas_obj->ashkhas_nam,
		
					"aaid"=>$asli_ashkhas_obj->id,
					"aaashkhas_name_khanevadegi"=>$asli_ashkhas_obj->ashkhas_name_khanevadegi,
					"aaashkhas_nam"=>$asli_ashkhas_obj->ashkhas_nam,
				
					"ssave_id"=>$save_id,
					"sid"=>'',
					"ssoorathesab_ashkhas_id"=>$ashkhas_obj->id,
					"ssoorathesab_asli_ashkhas_id"=>$asli_ashkhas_obj->id,
					"ssoorathesab_tarikh"=>$tarikh,
					"ssoorathesab_khodro_id"=>$khodro_id,
					"ssoorathesab_variz"=>$variz_bedehi['variz'],
					"ssoorathesab_bedehi"=>$variz_bedehi['bedehi'],
					"ssoorathesab_babat"=> $text,
					"ssoorathesab_tozihat"=>'ثبت موقت',
		
					"kid"=>$khodro_obj->id,
					"kkhodro_khodro"=>$khodro_obj->khodro_khodro,
					"kkhodro_model"=>$khodro_obj->khodro_model,
					"kkhodro_rang"=>$khodro_obj->khodro_rang
		);
	//dbg($result);
	return $result;
}
/*

					"aid"=>$ashkhas_obj->id,
					"aashkhas_tasvire_fard"=>$ashkhas_obj->ashkhas_tasvire_fard,
					"aashkhas_name_khanevadegi"=>$ashkhas_obj->ashkhas_name_khanevadegi,
					"aashkhas_nam"=>$ashkhas_obj->ashkhas_nam,
					"aashkhas_kode_meli"=>$ashkhas_obj->ashkhas_kode_meli,
					"asave_id"=>$ashkhas_obj->save_id,
					
					"ssave_id"=>$gharardad['save_id'],
					"sid"=>'',
					"ssoorathesab_ashkhas_id"=>$ashkhas_obj->id,
					"ssoorathesab_tarikh"=>$now_date,
					"ssoorathesab_khodro_id"=>$gharardad['gharardad_khodro_id'],
					"ssoorathesab_variz"=>$variz_rooz,
					"ssoorathesab_bedehi"=>$bedehi_rooz,
					"ssoorathesab_babat"=> sst_text_sabt_rooz( $gharardad['gharardad_tarikhe_tahvil'],NULL,$gharardad['gharardad_gheymate'],$gharardad['gharardad_doreye_zamani_ejareh'],$gharardad['gharardad_mostajer_id'],$gharardad['gharardad_mojer_id'],$gharardad['gharardad_khodro_id'],$gharardad['save_id']),
					"ssoorathesab_tozihat"=>'ثبت موقت',
					
					"kid"=>$khodro_obj->id,
					"kkhodro_khodro"=>$khodro_obj->khodro_khodro,
					"kkhodro_model"=>$khodro_obj->khodro_model,
					"kkhodro_rang"=>$khodro_obj->khodro_rang,
					"kkhodro_shomare_shahrbani"=>$khodro_obj->khodro_shomare_shahrbani
*/