<?php

require_once('sst_whole_term_text_sabt_rooz.php');

require_once('sst_month_term_text_sabt_rooz.php');
require_once('sst_month_term_rooz.php');

require_once('sst_month_term_text_sabt_mah.php');
require_once('sst_month_term_mah.php');

require_once('sst_long_term_text_sabt_rooz.php');


function sst_print_mojer_hesab(){
	
}
function sst_print_mostajer_hesab(){
?>		<input type="button" onclick='js_sst_print_mostajer_hesab(); return false;' value="پرینت حساب"><br>
       <script type="text/javascript">function js_sst_print_mostajer_hesab(){
			   var takhfif_num = document.getElementById("takhfif_num").innerHTML;
			   var takhfif_desc = 'تخفیف';
			   var newWindow = window.open("", "", "width=800, height=500");
       		//document = newWindow.document.open();
        pageContent = "<!DOCTYPE html><html><head><meta charset='utf-8' /><title>"+"صورتحساب ردیف دوم"+"</title></head><body>" +takhfif_desc+":"+takhfif_num+ "</body></html>";
        newWindow.document.write(pageContent);
       // newWindow.document.close();
       // newWindow.print();
		   }</script>
        <?php
}
function sst_print_namarboot_hesab(){
	
}
function sst_link_to_soorathesab($status){
	$sherkat_id = sst_get_option('sherkat_id');
	if($status!='اجاره جاری'){
		if($_REQUEST['gharardad_mostajer_id']<>$sherkat_id and $_REQUEST['gharardad_mojer_id']==$sherkat_id){
			sst_print_mostajer_hesab();
			echo '<a href="http://'.$_SERVER['SERVER_NAME'].'/%D9%84%DB%8C%D8%B3%D8%AA-%D9%87%D8%A7/?list=soorathesab&shakhs='.$_REQUEST['gharardad_mostajer_id'].'">'.'مشاهده صورتحساب مستاجر'.'</a></br>';
		}elseif($_REQUEST['gharardad_mostajer_id']==$sherkat_id and $_REQUEST['gharardad_mojer_id']<>$sherkat_id){
			sst_print_mojer_hesab();
			echo '<a href="http://'.$_SERVER['SERVER_NAME'].'/%D9%84%DB%8C%D8%B3%D8%AA-%D9%87%D8%A7/?list=soorathesab&shakhs='.$_REQUEST['gharardad_mojer_id'].'">'.'مشاهده صورتحساب موجر'.'</a></br>';
		}elseif($_REQUEST['gharardad_mostajer_id']<>$sherkat_id and $_REQUEST['gharardad_mojer_id']<>$sherkat_id){
			sst_print_namarboot_hesab();
			echo '<a href="http://'.$_SERVER['SERVER_NAME'].'/%D9%84%DB%8C%D8%B3%D8%AA-%D9%87%D8%A7/?list=soorathesab&shakhs='.$_REQUEST['gharardad_mostajer_id'].'&asli_shakhs='.$_REQUEST['gharardad_mojer_id'].'">صورتحساب بین مشاور و مستاجر</a></br>';
		}
	}

}

function sst_by_term_text_sabt_rooz($start,$end,$gharardad_gheymate,$doreye_zamani,$status,$gharardad_mostajer_id,$gharardad_mojer_id,$khodro_id,$save_id){
	sst_link_to_soorathesab($status);
	switch($doreye_zamani){										
		case '':
			//dbg('111111111');
			return sst_whole_term_text_sabt_rooz(
				$start,
				$end,
				$gharardad_gheymate,
				$status,
				$gharardad_mostajer_id,
				$gharardad_mojer_id,
				$khodro_id,
				$save_id);
		break;
		case 'md':
			//dbg('2222222222222');
			return sst_month_term_text_sabt_rooz(
				$start,
				$end,
				$gharardad_gheymate,
				$status,
				$gharardad_mostajer_id,
				$gharardad_mojer_id,
				$khodro_id,
				$save_id);
		break;
		case 'mm':
	//dbg('33333333');
			//die;
			return  sst_month_term_text_sabt_mah($start,$end,$gharardad_gheymate,$status,$gharardad_mostajer_id,$gharardad_mojer_id,$khodro_id,$save_id);
		break;
		default:
			//dbg('44444444');
			//dbg($doreye_zamani);
			return sst_long_term_text_sabt_rooz($start,$end,$gharardad_gheymate,$status,$gharardad_mostajer_id,$gharardad_mojer_id,$khodro_id,$save_id,$doreye_zamani);

		break;
	}
}
/*
function sst_by_term_rooz($start,$end,$gharardad_gheymate,$doreye_zamani){
	
		if($doreye_zamani==0 OR $doreye_zamani==NULL OR $doreye_zamani==''){
			sst_whole_term_rooz($start,$end,$gharardad_gheymate);
		}elseif($doreye_zamani==31){
			sst_month_term_rooz($start,$end,$gharardad_gheymate);
		}elseif($doreye_zamani==32){
			sst_month_term_mah($start,$end,$gharardad_gheymate);
		}else{
			sst_long_term_rooz($start,$end,$doreye_zamani,$gharardad_gheymate);
		}
}
*/

