<?php
set_time_limit(0);
if ( $_GET[ 'rawdata' ] <> 'raw' ) {
	?>
	<style type="text/css">
		#loading {
			display: block;
			margin-left: auto;
			margin-right: auto;
			width: 50%;
		}
	</style>
	<div id="loading">
		<img id="loading-image" src="<?php echo sst_get_option('json_url'); ?>loader.gif" alt="در حال بارگیری..."/>
	</div>
	<?php
}
/*

*/

$admins = array( 1, 26, 27 ); //myehrajat/sys/sys2
$visitors = array( 29 ); //visitor
$masol_roghan = array( 25,15 ); //صدیقین
$masol_gps = array( 25 ); //صدیقین
$masol_bime = array( 25 ); //صدیقین
$masol_vosol_motalebat = array( 35 ); // مسئول وصول مطالبات
$masol_tamirat_morede_niyaz = array( 15 ); //موسوی
//dbg('<h1>run page-post</h1>');

/* this function will delete $_GET value*/
function sst_delete_get_value( array $delete_get_data ) {
	foreach ( $delete_get_data as $delete ) {
		if ( isset( $_GET[ $delete ] ) ) {
			unset( $_GET[ $delete ] );
		}
	}
	return $_GET;
}
/* this function will add or modify $_GET value*/
function sst_edit_get_value( array $edit_get_data ) {
	foreach ( $edit_get_data as $edit_key => $edit_value ) {
		$_GET[ $edit_key ] = $edit_value;
	}
	return $_GET;
}
/* this function will add $_GET value*/
function sst_add_get_value( array $add_get_data ) {
	foreach ( $add_get_data as $add_key => $add_value ) {
		$_GET[ $add_key ] = $add_value;
	}
	return $_GET;
}
/*this functin will redict based on needed get to be add or modified or deleted*/
function sst_redirect_to_restrict( array $add_get_data = array(), array $edit_get_data = array(), array $delete_get_data = array() ) {
	/*if every value is ok so no need to redirect so we assume its ok then check in foreaches*/
	$force_to_redirect = false;
	/*when we dont need to view so we dont need its js*/
	if ( !isset( $_GET[ 'noview' ] ) ) {
		echo '<script language="JavaScript" src="' . sst_get_option( 'json_url' ) . 'jsonjs/' . $_GET[ 'list' ] . '.js"></script>';
	}
	/*if any added value and key pair is not the same in $_GET force it to redirect*/
	foreach ( $add_get_data as $add_get_key => $add_get_value ) {
		if ( $_GET[ $add_get_key ] <> $add_get_value ) {
			$force_to_redirect = true;
		}
	}
	/*if any modified value and key pair is not the same in $_GET force it to redirect*/
	foreach ( $edit_get_data as $edit_get_key => $edit_get_value ) {
		if ( $_GET[ $edit_get_key ] <> $edit_get_value ) {
			$force_to_redirect = true;
		}
	}
	/*if any delete key is even in $_GET force it to redirect*/
	foreach ( $delete_get_data as $delete_get_key => $delete_get_value ) {
		if ( isset($_GET[ $delete_get_key ])) {
			$force_to_redirect = true;
		}
	}
	//if $force_to_redirect is false means there is not any redirect and every thing is ok so show it
	if ( !$force_to_redirect ) {
		return;
	}
	$_GET = sst_delete_get_value( $delete_get_data );
	$_GET = sst_edit_get_value( $edit_get_data );
	$_GET = sst_add_get_value( $add_get_data );

	if ( $_GET[ 'noview' ] == true ) {
		echo '<script type="text/javascript">alert("شما به این صفحه دسترسی ندارید!");window.location = location.protocol+"//"+window.location.hostname;</script>';
	} else {
		foreach ( $_GET as $get_key => $get_value ) {
			$GET_vars[] = $get_key . '=' . $get_value;
		}
		$GET_vars_str = implode( '&', $GET_vars );
		echo '<script language="JavaScript" src="' . sst_get_option( 'json_url' ) . 'jsonjs/' . $_GET[ 'list' ] . '.js"></script>';
		if ( !empty( $delete_get_data )or!empty( $edit_get_data )or!empty( $delete_get_data ) ) {
			echo '<script type="text/javascript">window.location = "' . sst_get_option( 'list_page' ) . '?' . $GET_vars_str . '";</script>';
		}
	}
}


//dbg($admins);
function sst_redirect_base_on_user( $visibilty = NULL, $admins, $visitors, $add_admins = array(), $add_visitors = array() ) {

	global $current_user;
	//Todo makeing global admins and visitors not work and it cause odd me

	//dbg($admins);
	foreach ( $add_admins as $new_admin ) {
		$admins[] = $new_admin;
	}
	foreach ( $add_visitors as $new_visitor ) {
		$visitors[] = $new_visitor;
	}
	//$server = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://".$_SERVER[HTTP_HOST];

	switch ( $visibilty ) {
		case NULL: //admin/visitors/none
			//dbg(111111);
			if ( in_array( $current_user->ID, $admins ) ) { //admin
				//
				//dbg('sssssssssssssss');
				echo '<script language="JavaScript" src="' . sst_get_option( 'json_url' ) . 'jsonjs/' . $_GET[ 'list' ] . '.js" ></script>';

				//echo '[sc name="'.$_GET['list'].'"]';
			} elseif ( in_array( $current_user->ID, $visitors ) ) { //guest
				sst_redirect_to_restrict( array( 'noedit' => 1 ), array( 'noedit' => 1 ) );
			} else {
				sst_redirect_to_restrict( array( 'noview' => 1 ), array( 'noview' => 1 ) );
			}
			break;
		case 'all':
			if ( in_array( $current_user->ID, $admins ) ) { //admin

				echo '<script language="JavaScript" src="' . sst_get_option( 'json_url' ) . 'jsonjs/' . $_GET[ 'list' ] . '.js"></script>';
				//echo '[sc name="'.$_GET['list'].'"]';     
			} else { //guest and others only not edit
				sst_redirect_to_restrict( array( 'noedit' => 1 ), array( 'noedit' => 1 ) );
			}
			break;
		case 'samePerson':
			if ( in_array( $current_user->ID, $admins ) ) { //admin
				echo '<script language="JavaScript" src="' . sst_get_option( 'json_url' ) . 'jsonjs/' . $_GET[ 'list' ] . '.js"></script>';
			} elseif ( in_array( $current_user->ID, $visitors ) ) { //guest
				sst_redirect_to_restrict( array( 'noedit' => 1 ), array( 'noedit' => 1 ) );
			} else {
				$shakhs = get_user_meta( $current_user->ID, 'shomareh', true );
				//if defined variable exist show table else redirect to add such variable
				if ( $shakhs ) {
					if(sst_get_option('count_bedehkari_be_digaran') and sst_get_option('count_ghardad_between_others')){
						sst_redirect_to_restrict( array( 'noedit' => 1 ), array( 'noedit' => 1, 'asli_shakhs' => $shakhs ) );
					}else{
						sst_redirect_to_restrict( array( 'noedit' => 1 ), array( 'noedit' => 1, 'shakhs' => $shakhs ) );
					}
				} else {
					echo 'شماره سیستمی کاربر تعریف نشده از پنل مدیریت در قسمت کابر شماره سیستمی افزوده شود';
				}
			}
			break;
	}
}
echo '<script language="JavaScript" src="' . sst_get_option( 'json_url' ) . 'jsonjs/jquery_general.php"></script>';
$current_user = wp_get_current_user();


switch ( $_GET[ 'list' ] ) {
	case 'ashkhas':
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'taamol':
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'taamol_ba_sherkat':
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'address_phone':
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'khodro':
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'gharardad':
		sst_redirect_base_on_user( 'samePerson', $admins, $visitors );
		break;
	case 'soorathesab':
		sst_redirect_base_on_user( 'samePerson', $admins, $visitors );
		break;
	case 'bime':
		$admins = array_merge( $admins, $masol_bime );
		sst_redirect_base_on_user( 'all', $admins, $visitors );
		break;
	case 'gps':
		$admins = array_merge( $admins, $masol_gps );
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'servis':
		$admins = array_merge( $admins, $masol_roghan );
		sst_redirect_base_on_user( 'all', $admins, $visitors );
		break;
	case 'gharardad_jari':
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'gharardad_bayegani':
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'tahvil_odat':
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'mojoodi':
		sst_redirect_base_on_user( 'all', $admins, $visitors );
		break;
	case 'bedehkaran':
		//if behkari be digaran active make it NULL to samePerson
		$admins = array_merge( $admins, $masol_vosol_motalebat );
		if(!sst_get_option( 'count_bedehkari_be_digaran')){
			sst_redirect_base_on_user( NULL, $admins, $visitors );
		}else{
			sst_redirect_base_on_user( 'samePerson', $admins, $visitors );
		}

		break;
	case 'bestankaran':
		//if behkari be digaran active make it NULL to samePerson
		$admins = array_merge( $admins, $masol_vosol_motalebat );
		//dbg($admins);
		if(!sst_get_option( 'count_bedehkari_be_digaran')){
			sst_redirect_base_on_user( NULL, $admins, $visitors );
		}else{
			sst_redirect_base_on_user( 'samePerson', $admins, $visitors );
		}
		break;
	case 'gharardad_unchecked':
		//dbg(2);
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	case 'ashkhas_code':
		//dbg(2);
		sst_redirect_base_on_user( 'all', $admins, $visitors );
		break;
	case 'tamirat_morede_niyaz':
		//dbg(2);
		sst_redirect_base_on_user( 'all', $admins, $visitors );
		break;
	case 'daavi':
		//dbg(2);
		sst_redirect_base_on_user( NULL, $admins, $visitors );
		break;
	default:
		echo '<script>alert("نام لیست وارد شده در گت اشتباه است و در post-page برای آن تعریفی وجود ندارد.");</script>';
		break;
}









//<div id='jqxWidget'>






echo '<div id="jqxgrid"></div>';
$admins = array( 1, 26, 27 );
$visitors = array( 29 );

$current_user = wp_get_current_user();
if ( $current_user->ID == 1 ) {

	echo '
	<div>
		<div style="margin-left: 10px; float: right;">
			<input type="button" value="پرینت" id="print" />
		</div>
		<div style="margin-left: 10px; float: right;">
			<input type="button" value="خروجی اکسل" id="excel" />
		</div>
		<div style="margin-left: 10px; float: right;">
			<input type="button" value="فیلتر ساده" id="filter_mode" />
		</div>
	</div>';
} elseif ( in_array( $current_user->ID, $admins ) ) {
	echo '
			<div style="margin-top: 20px;">
				<div style="margin-left: 10px; float: right;">
					<input type="button" value="پرینت" id="print" />
				</div>
				<div style="margin-left: 10px; float: right;">
					<input type="button" value="فیلتر ساده" id="filter_mode" />
				</div>
			</div>';
} elseif ( in_array( $current_user->ID, $visitors ) ) {
	echo '
	<div style="margin-top: 20px;">
			<div style="margin-left: 10px; float: right;">
				<input type="button" value="فیلتر ساده" id="filter_mode" />
			</div>
		</div>
		<div id="jqxWidget"></div><div id="window"></div>';
}
?>