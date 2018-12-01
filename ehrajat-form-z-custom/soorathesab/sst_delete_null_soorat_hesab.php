<?php


	//DELETE FROM wp_rent_soorathesab WHERE `soorathesab_variz`='' AND `soorathesab_bedehi`=''
	function sst_delete_null_soorat_hesab() {
		global $wpdb, $dbprefix;
		$sql = "DELETE FROM " . $wpdb->prefix . $dbprefix . "soorathesab WHERE `soorathesab_variz`='' AND `soorathesab_bedehi`=''";
		//dbg($sql);
		$wpdb->query( $sql );
	}
	//register_shutdown_function(sst_delete_null_soorat_hesab);


?>