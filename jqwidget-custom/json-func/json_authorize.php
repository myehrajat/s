<?php
/*
AUTHORIZE IS FROM THE SAME SEVER OR IF NOT HAS A VALID PASSWORD
@RETURN FALSE ON ERROR AND HTTP_REFERER ON OK
*/
function json_authorize(){
	$psw='ehrajat1363';
	if(isset($_SERVER['HTTP_REFERER'])){
		$HTTP_REFERER  = explode('/',$_SERVER['HTTP_REFERER']);
		if($_SERVER['SERVER_NAME'] == $HTTP_REFERER[2]){
			return 'self';//self server request
		}else{
			echo "you call this by not authorized server";
			die;
		}
	}else{
		if(!isset($_GET['psw'])){
			echo "use something to see the raw date. this is a little tricky ohmmmm";
			die;
		}else{
			if($_GET['psw']!=$psw){
				echo "your password is not correct";
				die;
			}else{
				//$HTTP_REFERER[2] = $_SERVER['SERVER_NAME'];
				
				return 'other';
				//return $HTTP_REFERER;

			}
		}
	}
}
?>