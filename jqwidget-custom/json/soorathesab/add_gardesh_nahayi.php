<?php
//use make_comparer func
function sst_add_gardesh_nahayi($rows){
	//dbg($rows);
	//sort because gharardad add later
	//uasort($rows, make_comparer(array('ssoorathesab_tarikh', SORT_ASC),array('ssoorathesab_khodro_id', SORT_ASC)));//
	uasort($rows, make_comparer('ssoorathesab_tarikh','sid'));//
	
	$rows = array_values ( $rows );

		foreach($rows as $single_sooratheab_row_key=>$single_sooratheab_row_value){
			//dbg();
			//gardesh for strting from end to start (now)
					
					$rows[$single_sooratheab_row_key]['ssoorathesab_gardesh']=(int)$rows[$single_sooratheab_row_key]['ssoorathesab_variz']-(int)$rows[$single_sooratheab_row_key]['ssoorathesab_bedehi']+(int)$rows[$single_sooratheab_row_key-1]['ssoorathesab_gardesh'];
			
					$rows[$single_sooratheab_row_key]['ssoorathesab_nahayi']='';

			
			
		}
	
	
	//add the newest soorahesab ssoorathesab_nahayi
	$last_key = count($rows)-1;
	$rows[$last_key]['ssoorathesab_nahayi']=$rows[$last_key]['ssoorathesab_gardesh'];
	
	if($_GET['soorathesab_type']=='only_nahayi'){
		$only_nahayi_rows[]=$rows[$last_key];
		return $only_nahayi_rows;
	}elseif($_GET['soorathesab_type']=='full'){
		$rows = array_reverse($rows);
		return $rows;
	}else{//the same as full
		$rows = array_reverse($rows);
		return $rows;
	}
}


