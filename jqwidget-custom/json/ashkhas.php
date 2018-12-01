<?php
$query="SELECT ashkhas.id AS aid,ashkhas.ashkhas_tasvire_fard AS aashkhas_tasvire_fard,ashkhas.ashkhas_moaref AS aashkhas_moaref,ashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,ashkhas.ashkhas_nam AS aashkhas_nam,ashkhas.ashkhas_kode_meli AS aashkhas_kode_meli,ashkhas.ashkhas_shomare_shenasname AS aashkhas_shomare_shenasname,ashkhas.ashkhas_name_pedar AS aashkhas_name_pedar,ashkhas.ashkhas_sadere_az AS aashkhas_sadere_az,ashkhas.ashkhas_tarikhe_tavalod AS aashkhas_tarikhe_tavalod,ashkhas.save_id AS asave_id,moaref.id AS moaref_id,moaref.ashkhas_name_khanevadegi AS moaref_name_khanevadegi,moaref.ashkhas_nam AS moaref_nam,address_phone.id AS apid,address_phone.address_phone_nesbat AS apaddress_phone_nesbat,address_phone.address_phone_nam AS apaddress_phone_nam,address_phone.address_phone_phone AS apaddress_phone_phone,address_phone.address_phone_address AS apaddress_phone_address,address_phone.address_phone_tozihat AS apaddress_phone_tozihat,address_phone.save_id AS apsave_id FROM wp_rent_ashkhas AS ashkhas LEFT JOIN wp_rent_address_phone AS address_phone ON ashkhas.id=address_phone.address_phone_ashkhas_id LEFT JOIN wp_rent_ashkhas AS moaref ON ashkhas.ashkhas_moaref=moaref.id ORDER BY ashkhas.id DESC";
$rows = $wpdb->get_results($query,'ARRAY_A');
function sst_json_ashkhas($rows){
global $wpdb;
	foreach($rows as $rk=>$rv){
		if(!isset($rs[$rows[$rk]['aid']])){
			$rs[$rows[$rk]['aid']]=$rk;
			$rows[$rk]['ap'][]=array(
				'id'=>$rows[$rk]['apid'],
				'address_phone_nesbat'=>$rows[$rk]['apaddress_phone_nesbat'],
				'address_phone_nam'=>$rows[$rk]['apaddress_phone_nam'],
				'address_phone_phone'=>$rows[$rk]['apaddress_phone_phone'],
				'address_phone_address'=>$rows[$rk]['apaddress_phone_address'],
				'address_phone_tozihat'=>$rows[$rk]['apaddress_phone_tozihat'],
				'save_id'=>$rows[$rk]['apsave_id'],
				);				
				
			unset($rows[$rk]['apid']);
			unset($rows[$rk]['apaddress_phone_nesbat']);
			unset($rows[$rk]['apaddress_phone_nam']);
			unset($rows[$rk]['apaddress_phone_phone']);
			unset($rows[$rk]['apaddress_phone_address']);
			unset($rows[$rk]['apaddress_phone_tozihat']);
			unset($rows[$rk]['apsave_id']);
			//dbg($rows[$rk]);
		}else{
			$pervk=$rs[$rows[$rk]['aid']];
			$rows[$pervk]['ap'][]=array(
				'id'=>$rows[$rk]['apid'],
				'address_phone_nesbat'=>$rows[$rk]['apaddress_phone_nesbat'],
				'address_phone_nam'=>$rows[$rk]['apaddress_phone_nam'],
				'address_phone_phone'=>$rows[$rk]['apaddress_phone_phone'],
				'address_phone_address'=>$rows[$rk]['apaddress_phone_address'],
				'address_phone_tozihat'=>$rows[$rk]['apaddress_phone_tozihat'],
				'save_id'=>$rows[$rk]['apsave_id'],
				);
						
			unset($rows[$rk]);
			//dbg($rows[$pervk]);
			//break;
			
			//$result[$rk]['address_phone'][]['apid']=0;
		}
		
	}
	foreach($rows as $rk=>$rv){//unset extra nums and add taamol
		$ap[$rk]=$rows[$rk]['ap'];
		unset($rows[$rk]['ap']);
		$taamol_query="SELECT taamol_taamol FROM wp_rent_taamol_ba_sherkat AS taamol_ba_sherkat 
INNER JOIN wp_rent_taamol AS taamol ON taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol=taamol.id AND taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id=".$rows[$rk]['aid'];
		$taamols=$wpdb->get_results($taamol_query);
		$all_taamol=array();
		foreach($taamols as $taamol){
			$all_taamol[]=$taamol->taamol_taamol;
		}
		$rows[$rk]['all_taamol']=implode(' - ',$all_taamol);
	}
	
	foreach($rows as $rk=>$rv){
		$rows[$rk]=json_encode($rv);
		foreach($ap[$rk] as $aprk=>$aprv){
			$ap[$rk][$aprk]=json_encode($aprv);
		}
		$jsonap = '['.implode(',',$ap[$rk]).']';
		//dbg($rows[$rk]);
		$rows[$rk]=substr($rows[$rk], 0, -1).',"ap":'.$jsonap."}";
		//dbg($rows[$rk]);
	}
	return $rows;
	//dbg($rows);
}
$rows = sst_json_ashkhas($rows);
?>