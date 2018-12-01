<?php
/*sst_text_sabt_takhir(
$vals['gharardad_tarikhe_tahvil'],
$vals['gharardad_tarikhe_odat'],
$vals['gharardad_gheymate'],
$vals['gharardad_mohasebe_takhir']);*/
function sst_text_sabt_takhir($start,$end,$gharardad_gheymate,$gharardad_mohasebe_takhir) {
	//dbg($start);
	//dbg($end);
	//dbg($gharardad_mohasebe_takhir);
/*
dbg($start);
dbg($end);
dbg($gharardad_gheymate);
dbg($gharardad_mohasebe_takhir);
*/
	//dbg($start);
	//dbg($end);
	//dbg($gharardad_mohasebe_takhir);

	if(!empty($start) and !empty($end)){
		$remain_hours=sst_date_diff($start,$end,'remain_hours',false);
		//dbg($remain_hours);
		$remain_minutes=sst_date_diff($start,$end,'remain_minutes',false);
		//dbg($s);
		$takhir_zarib = sst_get_time_diff_zarib($start,$end);
		switch($gharardad_mohasebe_takhir){
			case '24':
				echo 'تاخیر محاسبه نمی شود';
				return 'تاخیر محاسبه نمی شود';
			break;
			case '6':
			//dbg($gharardad_mohasebe_takhir);
				echo 'تاخیر تا شش ساعت محاسبه نمیشود-'.$remain_hours.'ساعت و '.$remain_minutes.'دقیقه تاخیر-'.($takhir_zarib*100).'% اجاره بهای روزانه*'.$gharardad_gheymate.'='.$takhir_zarib*$gharardad_gheymate;
				return 'تاخیر تا شش ساعت محاسبه نمیشود-'. ($takhir_zarib*100).'% اجاره*'.$gharardad_gheymate;
			break; 
			case '9':
				echo 'تاخیر تا نه ساعت محاسبه نمیشود-'.$remain_hours.'ساعت و '.$remain_minutes.'دقیقه تاخیر-'.($takhir_zarib*100).'% اجاره بهای روزانه*'.$gharardad_gheymate.'='.$takhir_zarib*$gharardad_gheymate;
				return 'تاخیر تا نه ساعت محاسبه نمیشود-'. ($takhir_zarib*100).'% اجاره*'.$gharardad_gheymate;
			break;
			case '12':
				echo 'تاخیر تا دوازده ساعت محاسبه نمیشود-'.$remain_hours.'ساعت و '.$remain_minutes.'دقیقه تاخیر-'.($takhir_zarib*100).'% اجاره بهای روزانه*'.$gharardad_gheymate.'='.$takhir_zarib*$gharardad_gheymate;
				return 'تاخیر تا دوازده ساعت محاسبه نمیشود-'. ($takhir_zarib*100).'% اجاره*'.$gharardad_gheymate;
			break;
			case '100':
				echo 'تاخیر روز کامل-'.$remain_hours.'ساعت و '.$remain_minutes.'دقیقه تاخیر-'.'='.$gharardad_gheymate;
				return 'تاخیر روز کامل-'.$remain_hours.'ساعت و '.$remain_minutes.'دقیقه تاخیر';
			break;
			case NULL:
			case '0':
			case '':
				
				echo 'تاخیر-'.$remain_hours.'ساعت و '.$remain_minutes.'دقیقه تاخیر-'.($takhir_zarib*100).'% اجاره بهای روزانه*'.$gharardad_gheymate.'='.$takhir_zarib*$gharardad_gheymate;
				return 'تاخیر-'.$remain_hours.'ساعت و '.$remain_minutes.'دقیقه-'. ($takhir_zarib*100).'% اجاره*'.$gharardad_gheymate;
			break;
		}
			
	}elseif(empty($start)){
		echo '<div style="color:#FF0000;">تاخیر خودرو-تاریخ تحویل ندارد</div>';
		return '<div style="color:#FF0000;">تاخیر خودرو-تاریخ تحویل ندارد</div>';
	}elseif(empty($end)){
		return 'تاخیر جاری-'. (sst_get_time_diff_zarib($start,sst_current_jalali())*100).'% افزایش*'.$gharardad_gheymate;
	}

}
