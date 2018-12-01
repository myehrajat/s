<?php
/*note: this page usaually loaded by .js file so you should define get params*/
	require_once('soorathesab.php');
	$rows = sst_json_soorathesab();
//dbg($rows);
function sst_json_bedehkaran(){
	global $wpdb,$rows,$dbprefix;
	//dbg($rows);

	foreach($rows as $jrow){
		//dbg($jrow);
		
		//$row = json_decode($jrow,true);
		$row =$jrow;
		//dbg($row['aid']);
		//die;
		//$row =$jrow;
		if($row['ssoorathesab_nahayi']<0){
			
				$shakhs_obj = sst_get_by_id($row['aid'],'rent_'.'ashkhas');
				$row['aashkhas_vaziyat_hesab'] = $shakhs_obj->ashkhas_vaziyat_hesab;				
				$row['asave_id'] = $shakhs_obj->save_id;
				/***************************************************************/
				$address_phone_query="SELECT * FROM ".$wpdb->prefix.$dbprefix.'address_phone WHERE address_phone_ashkhas_id='.$row['aid'];
				$address_phones = $wpdb->get_results($address_phone_query);
				if($address_phones){
				
					$address_phones = sst_prepare_json_records($address_phones);
				
					$address_phones = 'address_phones:['.implode(',',$address_phones).']';
					//dbg($address_phones);
					$row['address_phones']=$address_phones;
					//dbg($row['address_phones']);
				}
				//dbg($row);
				/***************************************************************/
				$bedehkaran[]=$row;

		}
	}
	if(!empty($bedehkaran)){
		uasort($bedehkaran, make_comparer('ssoorathesab_nahayi', SORT_DESC));
	}
	$rows=$bedehkaran;
	return $rows;
}
//$rows = sst_json_bedehkaran($rows);
//dbg($rows);