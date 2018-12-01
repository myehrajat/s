jQuery(document).ready(function ($) {
	var form = 24;
	var title = "لیست بیمه";
	document.title = title;
	var list = "bime";
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
				datafield: "bid",
				width: "2%",
				cellsalign: "center",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {}
			}, {
				text: "خودرو",
				datafield: "kkhodro_khodro",
				width: "9%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=gharardad&khodro=', rowdata.kid, value);
				}
			}, {
				text: "شماره شهربانی",
				datafield: "kkhodro_shomare_shahrbani",
				width: "9%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "مدل",
				datafield: "kkhodro_model",
				width: "4%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "رنگ",
				datafield: "kkhodro_rang",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "نوع بیمه",
				datafield: "bbime_noe_bime",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شرکت",
				datafield: "bbime_sherkate_bime",
				width: "9%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "کد نمایندگی",
				datafield: "bbime_kode_namyandegi",
				width: "8%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شماره بیمه",
				datafield: "bbime_shomareh_bime",
				width: "12%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "انقضا",
				datafield: "bbime_tarikhe_engheza",
				width: "8%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "بیمه",
				datafield: "bbime_tasvire_bime",
				width: "6%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					if (value) {
						return "<div class='jqx-grid-cell-" + columnproperties['cellsalign'] + "-align'><a href='" + value + "'><img src='" + value + "' width='50' height='50' ></a></div>";
					}
				}
			}, {
				text: "گواهی صدور",
				datafield: "bbime_tasvire_govahi_sodoor",
				width: "6%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					if (value) {
						return "<div class='jqx-grid-cell-" + columnproperties['cellsalign'] + "-align'><a href='" + value + "'><img src='" + value + "' width='50' height='50' ></a></div>";
					}
				}
			}, {
				text: "توضیحات",
				datafield: "bbime_tozihat",
				width: "10%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "kid",
				datafield: "kid",
				hidden: true,
			}, {
				text: "اقدامات",
				datafield: "bsave_id",
				width: "7%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					if (getValues.noedi != 1) {
						return add_virayesh(columnproperties, value);
					} else {
						return '';
					}
				}

			}]
			var source = {
				datatype: "json",
				datafields: [{
					name: "bid",
					type: "number"
				}, {
					name: "kkhodro_khodro",
					type: "string"
				}, {
					name: "kkhodro_shomare_shahrbani",
					type: "string"
				}, {
					name: "kkhodro_model",
					type: "string"
				}, {
					name: "kkhodro_rang",
					type: "string"
				}, {
					name: "bbime_noe_bime",
					type: "string"
				}, {
					name: "bbime_sherkate_bime",
					type: "string"
				}, {
					name: "bbime_kode_namyandegi",
					type: "string"
				}, {
					name: "bbime_shomareh_bime",
					type: "string"
				}, {
					name: "bbime_tarikhe_engheza",
					type: "string"
				}, {
					name: "bbime_tasvire_bime",
					type: "string"
				}, {
					name: "bbime_tasvire_govahi_sodoor",
					type: "string"
				}, {
					name: "bbime_tozihat",
					type: "string"
				}, {
					name: "bsave_id",
					type: "string"
				}, {
					name: "kid",
					type: "string"
				}],
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
				groups: ['bbime_noe_bime'],
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

				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'bid');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'bbime_kode_namyandegi');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'bbime_tasvire_bime');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'bbime_tasvire_govahi_sodoor');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'bsave_id');

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

				jQuery("#jqxgrid").jqxGrid('showcolumn', 'bid');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'bbime_kode_namyandegi');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'bbime_tasvire_bime');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'bbime_tasvire_govahi_sodoor');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'bsave_id');
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

