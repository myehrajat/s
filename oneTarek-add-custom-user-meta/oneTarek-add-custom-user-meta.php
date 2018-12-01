<?php
/*
Plugin Name: sst Add Custom Ueser Meta
Description: plugin to add new custom user meta field with WordPress user profile.
Author: sst
Author URI: http://ejarehkhodro.com
Version: 1.0.0
Source: http://ejarehkhodro.com/
*/


//================== Add Extra TWITTER Field with user profile =========================

add_action( 'show_user_profile', 'sst_extra_user_profile_fields' );
add_action( 'edit_user_profile', 'sst_extra_user_profile_fields' );
add_action( 'personal_options_update', 'sst_save_extra_user_profile_fields' );
add_action( 'edit_user_profile_update', 'sst_save_extra_user_profile_fields' );

function sst_save_extra_user_profile_fields( $user_id ) {
	if ( !current_user_can( 'edit_user', $user_id ) ) {
		return false;
	}
	update_user_meta( $user_id, 'shomareh', $_POST[ 'shomareh' ] );
}
#Developed By sst , http://ejarehkhodro.com
function sst_extra_user_profile_fields( $user ) {

	if ( get_current_user_id() == 1 ) {
		?>
		<h3>Extra Custom Meta Fields</h3>

		<table class="form-table">
			<tr>
				<th><label for="shomareh">شماره سیستمی</label>
				</th>
				<td>
					<input type="text" id="shomareh" name="shomareh" size="20" value="<?php echo esc_attr( get_the_author_meta( 'shomareh', $user->ID )); ?>">
					<span class="description">شماره سیستمی را وارد کنید, eg: sst</span>
				</td>
			</tr>
		</table>
		<?php
	}
}
?>