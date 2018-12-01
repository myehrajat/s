<?php
$masol_tamirat_morede_niyaz = array(15);//عماد

//this page included in form page
if ( $_REQUEST[ 'mode' ] == 'edit' ) {
	$styleBlock = sprintf( '<style type="text/css">body{background-color:%s !important}</style> ', '#A7E4E7' );
	echo $styleBlock;
}


$current_user = wp_get_current_user();
array(1,2,3,4,5,6,7,10,20,21,22,23,24,25,26,27,28,29,30,31);//all forms
$admins = array( 1, 26, 27 );
$visitors = array( 29 );
$masol_roghan = array( 25,15 ); //صدیقین
$masol_gps = array( 25 ); //صدیقین
$masol_bime = array( 25 ); //صدیقین
$masol_vosol_motalebat = array( 35 ); // مسئول وصول مطالبات
$masol_tamirat_morede_niyaz = array(15);//موسوی
/*
switch($_GET['form']){
	case 1://اشخاص
		echo do_shortcode('[ehrajat_form]');
		break;
	case 2://تعامل
		echo do_shortcode('[ehrajat_form]');
		break;
	case 3://ثبت تعامل افراد
		echo do_shortcode('[ehrajat_form]');
		break;
	case 'address_phone':

		break;
	case 'khodro':

		break;
	case 'gharardad':

		break;
	case 'soorathesab':

		break;
	case 'bime':

		break;
	case 'gps':

		break;
	case 'servis':

		break;
	case 'gharardad_jari':

		break;
	case 'gharardad_bayegani':

		break;
	case 'tahvil_odat':

		break;
	case 'mojoodi':

		break;
	case 'bedehkaran':
	   	$admins = array_merge( $admins, $masol_vosol_motalebat );
		break;
	case 'gharardad_unchecked':

		break;
	case 'ashkhas_code':

		break;
	case 'tamirat_morede_niyaz':
	   	$admins = array_merge( $admins, $masol_tamirat_morede_niyaz );
		break;
	default:
		echo '<script>alert(نام لیست وارد شده در گت اشتباه است و در post-page برای آن تعریفی وجود ندارد.);</script>';
		break;
}*/
//if ( $current_user->ID == 1 OR $current_user->ID == 26 OR( $current_user->ID == 25 AND $_GET[ 'mode' ] = 'edit' )OR $current_user->ID == 27 ) {
	//echo '[ehrajat_form]';
	echo do_shortcode('[ehrajat_form]');
//} else {
//echo 'دسترسی ندارید! متاسفیم!';
//}
?>