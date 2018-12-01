<?php
ini_set( 'memory_limit', '2048M' );
set_time_limit(0);
//header('Content-Type: application/json');
//header('Access-Control-Allow-Origin: *');//trusted domain for security reason to not access this page 
$moshaveran_ids = array( 920, 885, 687, 639, 620, 546, 362, 253, 252, 123,79 , 65, 52, 47 );

function microtime_float() {
	list( $usec, $sec ) = explode( " ", microtime() );
	return ( ( float )$usec + ( float )$sec );
}

function sst_use_wpdb_outside() {
	define( 'BLOCK_LOAD', true );
	require_once( $_SERVER[ 'DOCUMENT_ROOT' ] . '/wp-config.php' );
	require_once( $_SERVER[ 'DOCUMENT_ROOT' ] . '/wp-includes/wp-db.php' );
	$wpdb = new wpdb( DB_USER, DB_PASSWORD, DB_NAME, DB_HOST );
	return $wpdb;
}
//$wpdb = sst_use_wpdb_outside();
$path = $_SERVER[ 'DOCUMENT_ROOT' ];

include_once $path . '/wp-config.php';
include_once $path . '/wp-load.php';
include_once $path . '/wp-includes/wp-db.php';
include_once $path . '/wp-includes/pluggable.php';
$authorize = json_authorize();
//echo 'mmmmmmmmmmm';


if ( $authorize ) {




	//this make random string when random string not passed mostly when compressed data requested by thirdparty and file generated 
	//note same server usually send $_GET[ 'tempfile' ] and this mostly for thirdparty
	if ( !isset( $_GET[ 'tempfile' ] ) ) {
		$characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
		$random_string_length = 50;
		$string = '';
		$max = strlen( $characters ) - 1;
		for ( $i = 0; $i < $random_string_length; $i++ ) {
			$string .= $characters[ mt_rand( 0, $max ) ];
		}
		$_GET[ 'tempfile' ] = $string;
		//dbg($_GET[ 'tempfile' ] );
	}




	switch ( $_GET[ 'list' ] ) {
		case "ashkhas":
			require_once( 'json/ashkhas.php' );
			break;
		case "taamol":
			require_once( 'json/taamol.php' );
			break;
		case "taamol_ba_sherkat":
			require_once( 'json/taamol_ba_sherkat.php' );
			break;
		case "address_phone":
			require_once( 'json/address_phone.php' );
			break;
		case "khodro":
			require_once( 'json/khodro.php' );
			break;
		case "gharardad":
			require_once( 'json/gharardad.php' );
			break;
		case "soorathesab":
			require_once( 'json/soorathesab.php' );
			$rows = sst_json_soorathesab();
			$rows = sst_prepare_json_records( $rows );
			break;
		case "bime":
			require_once( 'json/bime.php' );
			break;
		case "gps":
			require_once( 'json/gps.php' );
			break;
		case "servis":
			require_once( 'json/servis.php' );
			break;
		case "gharardad_jari":
			//dbg('gharardad_jariaaaaaaaa');
			//die;
			require_once( 'json/gharardad_jari.php' );
			break;
		case "gharardad-bayegani":
			require_once( 'json/gharardad_bayegani.php' );
			break;
		case "mojoodi":
			require_once( 'json/mojoodi.php' );
			break;
		case "tahvil_odat":
			require_once( 'json/tahvil_odat.php' );
			break;
		case "bedehkaran":
			require_once( 'json/bedehkaran.php' );
			$rows = sst_json_bedehkaran();
			$rows = sst_prepare_json_records( $rows, array( 'address_phones' ) );

			break;
		case "bestankaran":
			require_once( 'json/bestankaran.php' );
			$rows = sst_json_bestankaran();
			$rows = sst_prepare_json_records( $rows, array( 'address_phones' ) );

			break;
		case "gharardad_unchecked":
			require_once( 'json/gharardad_unchecked.php' );
			break;
		case "ashkhas_code":
			require_once( 'json/ashkhas_code.php' );
			$rows = sst_json_ashkhas_code();
			$rows = sst_prepare_json_records( $rows );
			break;
		case "tamirat_morede_niyaz":
			require_once( 'json/tamirat_morede_niyaz.php' );
			$rows = sst_json_tamirat_morede_niyaz();
			$rows = sst_prepare_json_records( $rows );
			break;
		case "daavi":
			require_once( 'json/daavi.php' );
			$rows = sst_json_daavi();
			$rows = sst_prepare_json_records( $rows );
			break;
		default:
			echo '<script>alert(The list name is not correct!);</script>';
			//$rows = sst_prepare_json_records($rows);
			break;
	}




	//dbg($rows);
	if ( $_GET[ 'rawdata' ] ) {
		//header( 'Content-Type: application/json' );
		//header( 'Access-Control-Allow-Origin: *' ); //trusted domain for security reason to not access this page 
		if($rows){//prevent implode error
			echo '[' . implode( ',', $rows ) . ']';
		}else{
			echo "No data retrieved!";
		}
	} else {
		//dbg($rows);
		if( $rows){//prevent implode error
			jxgcompress( '[' . implode( ',', $rows ) . ']' );
		}else{
			jxgcompress( '[{}]' );
		}
		if ( $authorize == 'othera' ) {
			$tempfile = sst_get_option( 'json_path' ) . 'tempbin/' . $_GET[ 'tempfile' ] . ".js";
			echo $tempfile;
			/********************
source : https://stackoverflow.com/questions/15273570/continue-processing-php-after-sending-http-response
send data but not wait for register_shutdown_function and deleting file
****************************/
			ignore_user_abort( true );
			set_time_limit( 0 );
			ob_start();
			// do initial processing here
			echo $tempfile; // send the response
			header( 'Connection: close' );
			header( 'Content-Length: ' . ob_get_length() );
			ob_end_flush();
			ob_flush();
			flush();
			// now the request is sent to the browser, but the script is still running
			// so, you can continue...
			//register_shutdown_function('shutdown_del',$path_url);
			/************************************************/
			//echo $tempfile;
			register_shutdown_function( 'shutdown_del' );
			//die;
		}
	}
}








function shutdown_del( ) { //this delete by thirdparty generated file after some minutes
	dbg(sst_get_option( 'json_url' ) . 'delete-temp-file.php?file=' . $_GET[ 'tempfile' ]);
	file_get_contents( sst_get_option( 'json_url' ) . 'delete-temp-file.php?file=' . $_GET[ 'tempfile' ] );
	///echo 'deleted!<br>';
}




//echo '<script type="text/javascript">alert("sssssssssssss");</script>';
function jxgcompress( $rawtext ) {

	$tempfile = $_GET[ 'tempfile' ] . ".js";
	$base64 = base64_encode( gzcompress( $rawtext, 9 ) );
	if ( $rawtext <> '[]' ) {
		$p = "var h = \"$base64\";\n ";
	} else {
		$p = "alert(\"دیتایی وجود ندارد.\\nیا خطایی در دریافت اطلااعت رخداده است.\\n یا در اجرای توابع جیسون ساز رخ داده است.\\n یا یکی از پارامترهای ضروری را از طریق گت ارسال نکرده یا اشتباه تایپ شده است.\");\n";
		sleep( 10 );
		//register_shutdown_function('shutdown_del',$_SERVER[ 'REQUEST_SCHEME' ] . '://' . $_SERVER[ "SERVER_NAME" ] . $path_url.'/delete-temp-file.php?file='.$_GET[ 'tempfile' ]);
	}
	//file_put_contents ("tempbin/" . $tempfile, $p);
	//echo sst_get_option('json_path')."tempbin/" . $tempfile;
	$a = fopen( sst_get_option( 'json_path' ) . "tempbin/" . $tempfile, 'w' );
	//dbg($a );
	fwrite( $a, $p );

	fclose( $a );
	chmod( sst_get_option( 'json_path' ) . "tempbin/" . $tempfile, 0755 );
}

function sst_prepare_json_records( $rows, array $colsToUnslash = array() ) {
	foreach ( $rows as $rk => $rv ) {
		if ( is_array( $rv ) ) {
			foreach ( $colsToUnslash as $unslash ) {
				$unslash_var = array();
				if ( isset( $rv[ $unslash ] ) ) { //check is unslashed var
					//dbg($rv[$unslash]);
					$unslash_var[] = $rv[ $unslash ]; //save to use later without slashing
					unset( $rv[ $unslash ] ); //unset to prevent slashed
				}
			}
		}
		$readyrows[ $rk ] = json_encode( $rv ); //all those which should be slashed
		if ( is_array( $rv )and!empty( $unslash_var ) ) {
			$readyrows[ $rk ] = substr_replace( $readyrows[ $rk ], "", -1 ) . ',' . implode( ',', $unslash_var ) . '}'; //now add slashed var that saved before
			//dbg($unslash_var);
		}
	}
	if ( $colsToUnslash ) {
		//dbg($readyrows[ $rk ]);
	}
	return $readyrows;
}