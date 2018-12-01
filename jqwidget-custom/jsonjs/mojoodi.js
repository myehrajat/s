jQuery(document).ready(function ($) {
	var getValues = getSearchParameters();
	var form = 10;
	var title = "لیست موجودی خودرو";
	document.title = title;

	if (getValues.start) {
		var title = "لیست موجودی خودرو " + getValues.start;
	}
	var list = "mojoodi";

	/************ first .done method *******************/
	//this get run json.php to create data compressed in temp file
	jQuery.get(url, {
		list: list,
		tempfile: tempfile,
		function () {
			if (getValues.start) {
				start: start
			}
		},
		function () {
			if (getValues.end) {
				end: end
			}
		},
		function () {
			if (getValues.vo) {
				vo: vo
			}
		},
		function () {
			if (getValues.min) {
				min: min
			}
		},
		function () {
			if (getValues.max) {
				max: max
			}
		},
		function () {
			if (getValues.brand) {
				brand: brand
			}
		}
	}).done(function (data) {
		//alert(data);
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
				datafield: "id",
				width: "2%",
				cellsalign: "center",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {}
			}, {
				text: "برند",
				datafield: "khodro_brand",
				width: "7%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=mojoodi&brand=', value, value);
				}
			}, {
				text: "خودرو",
				datafield: "khodro_khodro",
				width: "15%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=gharardad&khodro=', rowdata.id, value);
				}
			}, {
				text: "وضعیت موجودی",
				datafield: "status",
				width: "7%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "مدل",
				datafield: "khodro_model",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "رنگ",
				datafield: "khodro_rang",
				width: "7%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شماره شهربانی",
				datafield: "khodro_shomare_shahrbani",
				width: "9%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "قیمت روزانه",
				datafield: "khodro_daily_price",
				width: "9%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "اقدامات",
				datafield: "save_id",
				width: "9%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					return add_virayesh(columnproperties, value);
				}
			}]
			var source = {
				datatype: "json",
				datafields: [{
					name: "id",
					type: "number"
				}, {
					name: "khodro_brand",
					type: "string"
				}, {
					name: "khodro_khodro",
					type: "string"
				}, {
					name: "status",
					type: "string"
				}, {
					name: "khodro_model",
					type: "string"
				}, {
					name: "khodro_rang",
					type: "string"
				}, {
					name: "khodro_shomare_shahrbani",
					type: "string"
				}, {
					name: "khodro_daily_price",
					type: "string"
				}, {
					name: "save_id",
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
				//jQuery("#jqxgrid").jqxGrid('hidecolumn', 'kid');
				//jQuery("#jqxgrid").jqxGrid('hidecolumn', 'ksave_id');

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
				//jQuery("#jqxgrid").jqxGrid('showcolumn', 'kid');
				//jQuery("#jqxgrid").jqxGrid('showcolumn', 'ksave_id');
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

