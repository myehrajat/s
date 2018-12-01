<?php

	function sst_text_sabt_baravorde_khesarat( $gharardad_baravorde_khesarat, $gharardad_sharhe_khesarat ) {
		echo 'خسارت-<span id="sharhe_khesarat_desc">' . $gharardad_sharhe_khesarat . '</span>-<span id="sharhe_khesarat_num">' . $gharardad_baravorde_khesarat . '</span>تومان';
		return 'خسارت-' . $gharardad_sharhe_khesarat;
	}

?>