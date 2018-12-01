jQuery(document).ready(function ($) {
	var form = 26;
	var title = "لیست سرویس و تعمیرات";
	document.title = title;
	var list = "servis";
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
				datafield: "sid",
				width: "2%",
				cellsalign: "center",
				align: "center",
			}, {
				text: "خودرو",
				datafield: "kkhodro_khodro",
				width: "13%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=gharardad&khodro=', rowdata.kid, value);
				}
			}, {
				text: "رنگ",
				datafield: "kkhodro_rang",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "نوع سرویس",
				datafield: "sservis_noe_servis",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شرح سرویس",
				datafield: "sservis_sharh",
				width: "9%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "کیلومتر",
				datafield: "sservis_kilometer",
				width: "6%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "تاریخ",
				datafield: "sservis_tarikh",
				width: "7%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "کیلومتر ق",
				datafield: "ggharardad_odo_sanaviye",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "تاریخ ق",
				datafield: "ggharardad_tarikhe_odat",
				width: "8%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "سرویس کار",
				datafield: "sservis_mahale_servis",
				width: "8%",
				cellsalign: "right",
				align: "center",
			},  {
				text: "اختلاف ک",
				datafield: "odo_diff",
				width: "8%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					if (value >= 4000 && value < 4500) {
						return '<span class="yellow" style="margin: 4px; margin-top:8px; float: ' + columnproperties.cellsalign + ';">' + value + '</span>';

					} else if (value >= 4500 && value < 5000) {
						return '<span class="orange" style="margin: 4px; margin-top:8px; float: ' + columnproperties.cellsalign + ';">' + value + '</span>';

					} else if (value >= 5000) {
						return '<span class="red" style="margin: 4px; margin-top:8px; float: ' + columnproperties.cellsalign + ';">' + value + '</span>';
					}
				},

		
			}, {
				text: "اختلاف ت",
				datafield: "date_diff",
				width: "5%",
				cellsalign: "right",
				align: "center",
				/*this is alerting system in color*/
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					if (value >= 15 && value < 20) {
						return '<span class="yellow" style="margin: 4px; margin-top:8px; float: ' + columnproperties.cellsalign + ';">' + value + '</span>';

					} else if (value >= 20 && value < 30) {
						return '<span class="orange" style="margin: 4px; margin-top:8px; float: ' + columnproperties.cellsalign + ';">' + value + '</span>';

					} else if (value >= 30) {
						return '<span class="red" style="margin: 4px; margin-top:8px; float: ' + columnproperties.cellsalign + ';">' + value + '</span>';
					}
				},
			}, {
				text: "مراجعه کننده ن خ",
				datafield: "aashkhas_name_khanevadegi",
				width: "6%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.aid, value);
				}
			}, {
				text: "مراجعه کننده ن",
				datafield: "aashkhas_nam",
				width: "6%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.aid, value);
				}
			}, {
				text: "توضیحات",
				datafield: "sservis_tozihat",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "kid",
				datafield: "ksave_id",
				hidden: true,
			}, {
				text: "asave_id",
				datafield: "asave_id",
				hidden: true,
			}, {
				text: "اقدامات",
				datafield: "ssave_id",
				width: "5%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					if (getValues.noedit != 1) {
						return add_virayesh(columnproperties, value);
					} else {
						return '';
					}
				}
			}]
			var source = {
				datatype: "json",
				datafields: [

					{
						name: "sid",
						type: "number"
					}, {
						name: "kkhodro_khodro",
						type: "string"
					}, {
						name: "kkhodro_rang",
						type: "string"
					}, {
						name: "sservis_noe_servis",
						type: "string"
					}, {
						name: "sservis_sharh",
						type: "string"
					}, {
						name: "sservis_kilometer",
						type: "string"
					}, {
						name: "sservis_tarikh",
						type: "string"
					}, {
						name: "ggharardad_tarikhe_odat",
						type: "string"
					}, {
						name: "ggharardad_odo_sanaviye",
						type: "string"
					}, {
						name: "sservis_mahale_servis",
						type: "string"
					}, {
						name: "sservis_servis_konnadeh",
						type: "string"
					}, {
						name: "odo_diff",
						type: "num"
					}, {
						name: "date_diff",
						type: "string"
					}, {
						name: "sservis_tozihat",
						type: "string"
					}, {
						name: "aashkhas_nam",
						type: "string"
					}, {
						name: "aashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "ssave_id",
						type: "string"
					}, {
						name: "kid",
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
				groups: ['kkhodro_khodro']
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

				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'sid');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'kkhodro_shomare_shahrbani');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'sservis_hazine');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'sservis_tasvire_faktor');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'sservis_tozihat');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'ssave_id');



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
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'sid');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'kkhodro_shomare_shahrbani');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'sservis_hazine');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'sservis_tasvire_faktor');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'sservis_tozihat');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'ssave_id');
			});









			jQuery("#excel").jqxButton();
			jQuery('#excel').on('click', function () {
				var gridContent = jQuery("#jqxgrid").jqxGrid('exportdata', 'xls', title, true, null, true, "http://" + window.location.hostname + "/wp-content/plugins/jqwidgetnew/save-file.php");
			});
		}).then(function(){
			jQuery("#loading").hide();
		});
	});
});

