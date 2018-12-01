<?php
/**
	ashkhas.save_id AS asave_id,
 * Plugin Name: moaref locator
 * Plugin URI: http://ehrajat.com
 * Description:support delete by save id
 
 * Version: 1.3
 * Author: Seyyed Shahab Tabatabaee
 * Author URI: http://ehrajat.com
 * License: GPL2
 */
 add_action('wp_head', 'sst_add_moaref');
function sst_add_moaref(){
	//$enale=true;
	$enale_sqlwithgharardad=true;
	$enale_sqlnogharardad=false;
	$enale_sqlwithgharardad_differ=true;
	$have_gone_hamkar=array(5);
	if($enale){
		global $wpdb;
		$sqlwithgharardad="SELECT 
		ashkhas.id AS aid,
		ashkhas.save_id AS asave_id,
		gharardad.gharardad_mostajer_id AS ggharardad_mostajer_id,
		gharardad.gharardad_mojer_id AS ggharardad_mojer_id

		FROM wp_rent_ashkhas AS ashkhas
	LEFT JOIN wp_rent_gharardad AS gharardad ON gharardad.gharardad_mostajer_id= ashkhas.id
	WHERE ashkhas_moaref='' AND gharardad.gharardad_mostajer_id<>11 LIMIT 20";
		$resultswithgharardad = $wpdb->get_results($sqlwithgharardad);

		$sqlnogharardad="SELECT * FROM wp_rent_ashkhas AS ashkhas WHERE ashkhas_moaref='' LIMIT 20";
		$resultsnogharardad = $wpdb->get_results($sqlnogharardad);
		//DISTINCT(CONCAT(a,b))
		$sqlswithgharardad_differ="SELECT
		
		ashkhas.ashkhas_moaref AS aashkhas_moaref,
		ashkhas.ashkhas_nam AS ashkhas_nam,
		ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,
		gharardad.gharardad_mojer_id AS ggharardad_mojer_id,
		gharardad.gharardad_mostajer_id AS ggharardad_mostajer_id,
		gharardad.id AS gid
	FROM wp_rent_ashkhas AS ashkhas
	LEFT JOIN wp_rent_gharardad AS gharardad ON gharardad.gharardad_mostajer_id= ashkhas.id
	WHERE ashkhas_moaref<>'' AND gharardad.gharardad_mostajer_id<>11 
AND ashkhas.ashkhas_moaref<>gharardad.gharardad_mojer_id
ORDER BY ggharardad_mojer_id
";
		$resultswithgharardad_differ = $wpdb->get_results($sqlswithgharardad_differ);
		
		if($resultswithgharardad and $enale_sqlwithgharardad){
			$results = $resultswithgharardad;
			foreach($results as $result){
				//$wpdb->flush();
				$sqlashkhas="UPDATE wp_rent_ashkhas SET ashkhas_moaref = ".$result->ggharardad_mojer_id." WHERE id=".$result->ggharardad_mostajer_id.";";
				$sqlget_vals="SELECT * FROM wp_sst_vals WHERE `key`='".$result->asave_id."'";
				$vals = $wpdb->get_results($sqlget_vals);
				$vals = unserialize($vals[0]->value);
				$vals['ashkhas_moaref']=$result->ggharardad_mojer_id;
				$vals = serialize($vals);
				$sqlupdatevals="UPDATE wp_sst_vals SET `value` = '".$vals."' WHERE `key`='".$result->asave_id."';";
				//echo $sqlashkhas.'<br>';
				//echo $sqlupdatevals.'<br>';
				$wpdb->query($sqlashkhas);
				$wpdb->query($sqlupdatevals);

				//break;
			}
		}elseif($resultsnogharardad and $enale_sqlnogharardad){
			$results = $resultsnogharardad;
			foreach($results as $result){
				$sqlashkhas="UPDATE wp_rent_ashkhas SET ashkhas_moaref=11 WHERE id=".$result->id;
				$sqlget_vals="SELECT * FROM wp_sst_vals WHERE `key`='".$result->save_id."'";
				$vals = $wpdb->get_results($sqlget_vals);
				$vals = unserialize($vals[0]->value);
				$vals['ashkhas_moaref']=11;
				$vals = serialize($vals);
				$sqlupdatevals="UPDATE wp_sst_vals SET `value` = '".$vals."' WHERE `key`='".$result->save_id."';";
				$wpdb->query($sqlashkhas);
				$wpdb->query($sqlupdatevals);
			}
		}elseif($resultswithgharardad_differ and $enale_sqlwithgharardad_differ){
			//dbg($resultswithgharardad_differ);
						//5 اشکان یزدی

			foreach($resultswithgharardad_differ as $result){
				$sql="SELECT * FROM wp_rent_gharardad WHERE gharardad_mostajer_id=".$result->ggharardad_mostajer_id." AND gharardad_mojer_id<>".$result->ggharardad_mojer_id;//check is there any gharardad with other one if yes return
				//echo $sql;
				$is_there_any_other_mojer = $wpdb->get_results($sql);
				//dbg($is_there_any_other_mojer);
				//break;
				//die;
				if($is_there_any_other_mojer){
					foreach($is_there_any_other_mojer as $gharardad_with_other_mojer){
						//dbg($result->ggharardad_mojer_id);
						if(!in_array($result->ggharardad_mojer_id,$have_gone_hamkar)){
							//dbg($gharardad_with_other_mojer->id);
							$protocol = stripos($_SERVER['SERVER_PROTOCOL'],'https') === true ? 'https://' : 'http://';
							$host = $protocol.$_SERVER['HTTP_HOST'].'/';
							echo '<div>قرارداد این فرد ('.$gharardad_with_other_mojer->id.','.$result->gid.') دارای دو موجر مختلف می باشد.به همین دلیل امکان تعریف معرف مستاجر وجود ندارد. <a href="'.$host.'لیست-ها/?list=gharardad&shakhs='.$result->ggharardad_mostajer_id.'">مشاهده قرادادهای مستاجر</a><a href="'.$host.'لیست-ها/?list=gharardad&shakhs='.$result->ggharardad_mojer_id.'">مشاهده قرادادهای موجر</a></div>';
						}else{
							$sqlashkhas="UPDATE wp_rent_ashkhas SET ashkhas_moaref=11 WHERE id=".$result->ggharardad_mostajer_id;
							$sqlget_ashkhas="SELECT * FROM wp_rent_ashkhas WHERE `id`='".$result->ggharardad_mostajer_id."'";
							$ashkhas = $wpdb->get_results($sqlget_ashkhas);
							$mostajer_save_id = $ashkhas[0]->save_id;
							//dbg($vals[0]->save_id);
							
							$sqlget_vals="SELECT * FROM wp_sst_vals WHERE `key`='".mostajer_save_id."'";
							$vals = $wpdb->get_results($sqlget_vals);
							$vals = unserialize($vals[0]->value);
							$vals['ashkhas_moaref']=11;
							$vals = serialize($vals);
							$sqlupdatevals="UPDATE wp_sst_vals SET `value` = '".$vals."' WHERE `key`='".$mostajer_save_id."';";
							$wpdb->query($sqlashkhas);
							$wpdb->query($sqlupdatevals);
							
						}
					}
				}
			}
		}
	}
}