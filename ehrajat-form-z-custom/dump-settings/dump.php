<?php
//FOR MORE INFO GO TO : https://github.com/ifsnop/mysqldump-php
$setting_tables = array(
	'sst_appearance',
	'sst_block',
	'sst_condition',
	'sst_data_action',
	'sst_data_action_colval',
	'sst_default_pack',
	'sst_event',
	'sst_field',
	'sst_form',
	'sst_input',
	'sst_keyboard',
	'sst_label',
	'sst_language',
	'sst_options',
	'sst_pack',
	'sst_select_options',
	'sst_standard',
	'sst_standard_condition',
	'sst_standard_db',
	'sst_standard_meta',
	'sst_type',
	'sst_vals_getter',
);
foreach($setting_tables as $setting_table_k=>$setting_table_v){
	$setting_tables[$setting_table_k]= 'wp_'.$setting_table_v;
}
$dumpSettings= array(
	'include-tables' => $setting_tables,
	'compress' => 'Gzip',
					);
$pdoSettings=array();
    include_once(dirname(__FILE__) . '/mysqldump-php-master/src/Ifsnop/Mysqldump/Mysqldump.php');
    $dump = new Ifsnop\Mysqldump\Mysqldump('mysql:host=localhost;dbname=sys', 'root', '', $dumpSettings,$pdoSettings);
    $dump->start(dirname(__FILE__).'/dump.sql.zip');

?>