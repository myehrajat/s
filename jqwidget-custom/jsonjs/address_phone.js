//<?php
//if you need php here make extension to php and change calling this is post_page.php to php
//echo 'var get_php_var_for_java = 1;';

//?>

	jQuery(document).ready(function ($) {
	var form = 5;
	var title = "لیست آدرس و تلفن";
	var list = "address_phone";
	document.title = title;
	/************ fmake json param to send to json.php*******************/
	var jsonparam = {
		list: list,
		tempfile: tempfile
	};
	/************ first .done method *******************/
	//this get run json.php to create data compressed in temp file
	jQuery.get(url, jsonparam).done(function (data) {
		/************ second .done method *******************/
		jQuery.get(tempurl).done(function (data) { //this get is only for reading temp file data which its compressed string is in h js lang variable
			var localdata = eval(JXG.decompress(h)); //decompress data
			deleteTempFile(tempfile); //loaded data in localdata so no need to tempfile this code delete it by calling another get in jquery_general.js function and that func call delete-temp-file.php and the name of file is passed by get method
			/****************************************************************
			all have done in two .done method to make sure localdata is
			available done run when the code finished and result returned
			****************************************************************/
			var columns = [{
					text: "#",
					datafield: "apid",
					width: "3%",
					cellsalign: "center",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {}
				}, {
					text: "تصویر",
					datafield: "aashkhas_tasvire_fard",
					width: "4%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
						if (value) {
							return "<div class='jqx-grid-cell-" + columnproperties['cellsalign'] + "-align''><a href='" + value + "'><img src='" + value + "' width='50' height='50' ></a></div>";
						}
					}
				}, {
					text: "نام خانوادگی",
					datafield: "aashkhas_name_khanevadegi",
					width: "11%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.aid, value);
					}
				}, {
					text: "نام",
					datafield: "aashkhas_nam",
					width: "5%",
					cellsalign: "right",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.aid, value);
					}
				},

				{
					text: "نسبت",
					datafield: "apaddress_phone_nesbat",
					width: "5.66%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "نام منتسب",
					datafield: "apaddress_phone_nam",
					width: "7.66%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "تلفن",
					datafield: "apaddress_phone_phone",
					width: "7.66%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "آدرس",
					datafield: "apaddress_phone_address",
					width: "41.62%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "توضحیات",
					datafield: "apaddress_phone_tozihat",
					width: "7.66%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "اقدامات",
					datafield: "apsave_id",
					width: "6.66%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
						return add_virayesh(columnproperties, value);
					}
				}, {
					text: " save_id نام h",
					datafield: "asave_id",
					hidden: true
				}, {
					text: "اشخاص id",
					datafield: "aid",
					hidden: true
				},
			]
			var source = {
				datatype: "json",
				datafields: [

					{
						name: "aid",
						type: "number"
					}, {
						name: "apid",
						type: "number"
					}, {
						name: "aashkhas_tasvire_fard",
						type: "string"
					}, {
						name: "aashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "apaddress_phone_tozihat",
						type: "string"
					}, {
						name: "apaddress_phone_nesbat",
						type: "string"
					}, {
						name: "apaddress_phone_nam",
						type: "string"
					}, {
						name: "apaddress_phone_phone",
						type: "string"
					}, {
						name: "apaddress_phone_address",
						type: "string"
					}, {
						name: "apsave_id",
						type: "string"
					}, {
						name: "aashkhas_nam",
						type: "string"
					}, {
						name: "asave_id",
						type: "string"
					},
				],
				id: "SSSidSSS",
				localdata: localdata
			};
			var dataAdapter = new jQuery.jqx.dataAdapter(source);
			jQuery("#jqxgrid").jqxGrid({
				localization: localizationobj,
				theme: "energyblue",
				width: "99.8%",
				height: "580px",
				source: dataAdapter,
				sortable: true,
				filterable: true,
				groupable: true,
				altrows: true,
				columnsautoresize: true,
				columnsresize: true,
				rtl: true,
				showfilterrow: true,
				enablebrowserselection: true,
				showtoolbar: true,
				toolbarheight: 40,
				rendertoolbar: function (toolbar) {
					toolbar.append(add_toolbar(form, title));
				},
				columns: columns,
				groups: ['aashkhas_name_khanevadegi', 'aashkhas_nam'],
			});





			//filter_mode
			jQuery("#filter_mode").jqxButton();
			var filter_mode = 'default';
			jQuery('#filter_mode').on('click', function () {
				if (filter_mode == 'default') {
					jQuery('#jqxgrid').jqxGrid({
						showfilterrow: false
					}); //,filtermode: 'advanced'}
					delete jQuery('#jqxgrid').jqxGrid('filtermode');
					jQuery('#filter_mode').jqxButton('val', 'فیلتر پیشرفته');
					filter_mode = 'advanced';
				} else if (filter_mode == 'advanced') {
					jQuery('#jqxgrid').jqxGrid({
						showfilterrow: false,
						filtermode: 'excel'
					});
					jQuery('#filter_mode').jqxButton('val', 'فیلتر اکسل');
					filter_mode = 'excel';
				} else if (filter_mode == 'excel') {
					jQuery('#jqxgrid').jqxGrid({
						showfilterrow: true,
						filtermode: 'default'
					});
					jQuery('#filter_mode').jqxButton('val', 'فیلتر ساده');
					filter_mode = 'default';
				}

			});




			jQuery("#print").jqxButton();
			jQuery('#print').on('click', function () {

				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aid');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'apid');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_tasvire_fard');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_kode_meli');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'apsave_id');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'asave_id');

				var gridContent = jQuery("#jqxgrid").jqxGrid('exportdata', 'html');
				var newWindow = window.open('', '', 'width=800, height=500'),
					document = newWindow.document.open(),
					pageContent =
					'<!DOCTYPE html>' +
					'<html>' +
					'<head>' +
					'<meta charset="utf-8" />' +
					'<title>' + title + '</title>' +
					'</head>' +
					'<body>' + gridContent + '</body></html>';
				document.write(pageContent);
				document.close();
				newWindow.print();

				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aid');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'apid');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_tasvire_fard');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_kode_meli');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'apsave_id');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'asave_id');
			});









			jQuery("#excel").jqxButton();
			jQuery('#excel').on('click', function () {
				var gridContent = jQuery("#jqxgrid").jqxGrid('exportdata', 'xls', title, true, null, true, "http://" + window.location.hostname + "/wp-content/plugins/jqwidget/save-file.php");
			});
			
			
			
			
			
			
			
			
			
		}).then(function(){
			jQuery("#loading").hide();
		});
	});
});

