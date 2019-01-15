jQuery(document).ready(function ($) {
	var form = 29;
	var title = "لیست تعمیرات مورد نیاز";
	document.title = title;
	var list = "tamirat_morede_niyaz";
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
				datafield: "stmnid",
				width: "2%",
				cellsalign: "center",
				align: "center",
			}, {
				text: "تاریخ اعلام",
				datafield: "stmntarikh_elam",
				width: "6%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "تاریخ اقدام",
				datafield: "stmntarikh_shoroe_tamir",
				width: "6%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "تاریخ پایان",
				datafield: "stmntarikh_payane_tamir",
				width: "6%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "خودرو",
				datafield: "kkhodro_khodro",
				width: "9%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شرح خرابی",
				datafield: "stmnsharhe_servis",
				width: "22%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "وضعییت",
				datafield: "stmnvaziyat",
				width: "7%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "کیلومتر",
				datafield: "stmnkilometer_anjam",
				width: "4%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "مکانیک",
				datafield: "amashkhas_name_khanevadegi",
				width: "8%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "نام خانوادگی",
				datafield: "aaashkhas_name_khanevadegi",
				width: "6%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.amid, value);
				}
			}, {
				text: "نام",
				datafield: "amashkhas_nam",
				width: "5%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.amid, value);
				}
			}, {
				text: "فاکتور",
				datafield: "stmntasvire_faktor",
				width: "5%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					if (value) {
						return "<div class='jqx-grid-cell-" + columnproperties['cellsalign'] + "-align'><a href='" + value + "'><img src='" + value + "' width='50' height='50' ></a></div>";
					}
				}
			}, {
				text: "هزینه",
				datafield: "stmnhazineh",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "توضیحات",
				datafield: "stmntozihat",
				width: "6%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "اقدامات",
				datafield: "stmnsave_id",
				width: "3%",
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
						name: "stmnid",
						type: "number"
					}, {
						name: "stmntarikh_elam",
						type: "string"
					}, {
						name: "stmntarikh_shoroe_tamir",
						type: "string"
					}, {
						name: "stmntarikh_payane_tamir",
						type: "string"
					}, {
						name: "kkhodro_khodro",
						type: "string"
					}, {
						name: "stmnsharhe_servis",
						type: "string"
					}, {
						name: "stmnvaziyat",
						type: "string"
					}, {
						name: "stmnkilometer_anjam",
						type: "string"
					}, {
						name: "amashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "aaashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "amashkhas_nam",
						type: "string"
					}, {
						name: "stmntasvire_faktor",
						type: "string"
					}, {
						name: "stmnhazineh",
						type: "string"
					}, {
						name: "stmntozihat",
						type: "string"
					}, {
						name: "stmnsave_id",
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

				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'stmnsave_id');
				//jQuery("#jqxgrid").jqxGrid('hidecolumn', 'kkhodro_shomare_shahrbani');
				//jQuery("#jqxgrid").jqxGrid('hidecolumn', 'sservis_hazine');
				//jQuery("#jqxgrid").jqxGrid('hidecolumn', 'sservis_tasvire_faktor');
				//jQuery("#jqxgrid").jqxGrid('hidecolumn', 'sservis_tozihat');
				//jQuery("#jqxgrid").jqxGrid('hidecolumn', 'ssave_id');



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
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'stmnsave_id');
				//jQuery("#jqxgrid").jqxGrid('showcolumn', 'kkhodro_shomare_shahrbani');
				//jQuery("#jqxgrid").jqxGrid('showcolumn', 'sservis_hazine');
				//jQuery("#jqxgrid").jqxGrid('showcolumn', 'sservis_tasvire_faktor');
				//jQuery("#jqxgrid").jqxGrid('showcolumn', 'sservis_tozihat');
				//jQuery("#jqxgrid").jqxGrid('showcolumn', 'ssave_id');
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

