<?php




	function sst_update_soorathesab_temp_save_id() {
		global $wpdb, $dbprefix;
		$query = "SELECT * FROM " . $wpdb->prefix . $dbprefix . "soorathesab WHERE `save_id` LIKE '%temporary'";
		//$results = $wpdb->get_results($query);
		$results = $results[ 0 ];
		//dbg($results);
	}

?>