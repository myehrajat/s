<?php

function sst_decide_shakhs_id_to_sabt_in_soorathesab( $soorathesab_ashkhas_id ) {
	$value = explode( '-', $soorathesab_ashkhas_id );
	$shakhs = $value[ 0 ];
	$moaref = $value[ 1 ];
	
	if ( $moaref == sst_get_option( 'sherkat_id' ) ) {
		$soorathesab_shakhs = $shakhs;
	} else {
		$soorathesab_shakhs = $moaref;
	}
//dbg($soorathesab_shakhs);
	return $soorathesab_shakhs;
}

function sst_insert_in_soorathesab_by_query() {
	if(sst_get_option('count_bedehkari_be_digaran')){//check is needed to do and add extra accounting data between others
	global $wpdb, $dbprefix, $user_id,$vals;
	$vals = sst_get_vals_anyway();
    //dbg($vals);

		$value = explode( '-', $vals[ 'soorathesab_ashkhas_id' ] );
		$shakhs = $value[ 0 ];
		$moaref = $value[ 1 ];
		if ( $moaref <> sst_get_option( 'sherkat_id' ) ) {

		$query = "INSERT INTO `" . $wpdb->prefix . $dbprefix . "soorathesab` (
	soorathesab_asli_ashkhas_id, 
	soorathesab_ashkhas_id, 
	soorathesab_tarikh,
	soorathesab_variz,
	soorathesab_bedehi,
	soorathesab_khodro_id,
	soorathesab_babat,
	soorathesab_tozihat,
	save_id,
	sabt_konande_id,
	created)
VALUES 
('%s', '%s','%s','%s','%s','%s','%s','%s','%s','%s',NOW());";
	$query = $wpdb->prepare( $query,$moaref,$shakhs,$vals[ 'soorathesab_tarikh' ],$vals[ 'soorathesab_variz' ],$vals[ 'soorathesab_bedehi' ],$vals[ 'soorathesab_khodro_id' ],$vals[ 'soorathesab_babat' ],$vals[ 'soorathesab_tozihat' ].'-حسابداری',$vals[ 'save_id' ],$user_id);
		register_shutdown_function ( 'sst_insert_query',$query);


	}
	}

}
function sst_insert_query($query){
	global $wpdb;
		$result = $wpdb->query($query);
		//dbg($q);
		if($result){
			$lastid = $wpdb->insert_id;
			echo '<div style="font-size:18px; color:#0C0">اطلاعات بین حساب افراد با شماره آی دی '.$lastid.'در جدول rent_soorathesab ذخیره گردید.</div>';
		}else{
			echo "ERROR:soorathesab bein ashkhas not inserted!<br>
check query generated in sst_insert_in_soorathesab_by_query<br>
".$q;
		}
}
function sst_get_vals_anyway(){
	global $vals;
	if($vals){//first method
		
	}elseif($_REQUEST['record_id']){//2nd method
		$vals = sst_load_temporary_data($_REQUEST['record_id']);
	}elseif(
		($GLOBALS[ '_POST' ][ 'step' ]  OR  $GLOBALS[ '_GET' ][ 'step' ]) 
		AND ($GLOBALS[ '_POST' ][ 'form' ] OR $GLOBALS[ '_GET' ][ 'form' ])
		){//3rd method
		
		
		if ( $GLOBALS[ '_POST' ][ 'step' ] ) {
			$vals = $GLOBALS[ '_POST' ];
		} elseif ( $GLOBALS[ '_GET' ][ 'step' ] ) {
				$vals = $GLOBALS[ '_GET' ];
		}
		//form is send usually by get and data by post we neeed form_id to edit it so we merge these data
		if ( $GLOBALS[ '_POST' ][ 'form' ] ) {
			$form[ 'form' ] = $GLOBALS[ '_POST' ][ 'form' ];
		} elseif ( $GLOBALS[ '_GET' ][ 'form' ] ) {
			$form[ 'form' ] = $GLOBALS[ '_GET' ][ 'form' ];
		}
		$vals = array_merge( $vals, $form );
	}else{
		echo 'error i dont how to get vals ';
	}
	return $vals;
}