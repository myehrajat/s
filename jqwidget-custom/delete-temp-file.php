<?php
if(@$_GET['file']<>'index.php' and file_exists(dirname(__FILE__) . '/tempbin/'.@$_GET['file'].".js")){//prevent delete index.php
	//no need much time for deleting because it is after getting it content in variable
	sleep(3);///this may for thirdparty to wait until complete > thanx to ob_start(); technique
	unlink( dirname(__FILE__) . '/tempbin/'.$_GET['file'].".js");
}else{
	echo 'the name you have sent to delete is  not correct.';
}
?>