<?php



	function sst_change_khodro_mojoodi( $khodro_id, $tarikh_odat ) {
		global $wpdb;
		//dbg($tarikh_odat);
		$khodro = sst_get_by_id( $khodro_id, 'rent_khodro' );
		if ( $tarikh_odat == '' ) {
			$sql = "UPDATE " . $wpdb->prefix . "rent_khodro SET 
		`khodro_mojoodi`='no',
		`khodro_khodro`='" . $khodro->khodro_khodro . "' ,
		`khodro_model`='" . $khodro->khodro_model . "' ,
		`khodro_rang`='" . $khodro->khodro_rang . "' ,
		`khodro_shomare_shahrbani`='" . $khodro->khodro_shomare_shahrbani . "' ,
		`khodro_shomare_vin`='" . $khodro->khodro_shomare_vin . "' ,
		`khodro_shomare_shasi`='" . $khodro->khodro_shomare_shasi . "' ,
		`khodro_shomare_motor`='" . $khodro->khodro_shomare_motor . "' ,
		`khodro_shomare_barkode_kart`='" . $khodro->khodro_shomare_barkode_kart . "' ,
		`khodro_malek_id`='" . $khodro->khodro_malek_id . "' ,
		`khodro_saheb_emtiyaz_id`='" . $khodro->khodro_saheb_emtiyaz_id . "' ,
		`khodro_hajme_bak`='" . $khodro->khodro_hajme_bak . "' ,
		`khodro_tozihat`='" . $khodro->khodro_tozihat . "' ,
		`save_id`='" . $khodro->save_id . "' ,
		`sabt_konande_id`='" . $khodro->sabt_konande_id . "' ,
		`virayesh_konnade_id`='" . $khodro->virayesh_konnade_id . "' ,
		`created`='" . $khodro->created . "' ,
		`modified`='" . $khodro->modified . "' 
	 	 WHERE `id`=" . $khodro_id;
		} else {
			$sql = "UPDATE " . $wpdb->prefix . "rent_khodro SET 
		`khodro_mojoodi`='yes',
		`khodro_khodro`='" . $khodro->khodro_khodro . "' ,
		`khodro_model`='" . $khodro->khodro_model . "' ,
		`khodro_rang`='" . $khodro->khodro_rang . "' ,
		`khodro_shomare_shahrbani`='" . $khodro->khodro_shomare_shahrbani . "' ,
		`khodro_shomare_vin`='" . $khodro->khodro_shomare_vin . "' ,
		`khodro_shomare_shasi`='" . $khodro->khodro_shomare_shasi . "' ,
		`khodro_shomare_motor`='" . $khodro->khodro_shomare_motor . "' ,
		`khodro_shomare_barkode_kart`='" . $khodro->khodro_shomare_barkode_kart . "' ,
		`khodro_malek_id`='" . $khodro->khodro_malek_id . "' ,
		`khodro_saheb_emtiyaz_id`='" . $khodro->khodro_saheb_emtiyaz_id . "' ,
		`khodro_hajme_bak`='" . $khodro->khodro_hajme_bak . "' ,
		`khodro_tozihat`='" . $khodro->khodro_tozihat . "' ,
		`save_id`='" . $khodro->save_id . "' ,
		`sabt_konande_id`='" . $khodro->sabt_konande_id . "' ,
		`virayesh_konnade_id`='" . $khodro->virayesh_konnade_id . "' ,
		`created`='" . $khodro->created . "' ,
		`modified`='" . $khodro->modified . "' 
	 	 WHERE `id`=" . $khodro_id;
		}
		//dbg($sql);
		$wpdb->query( $sql );
	}



?>