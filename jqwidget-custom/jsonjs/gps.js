jQuery(document).ready(function ($) {
	var form = 25;
	var title = "لیست جی پی اس";
	document.title = title;
	var list = "gps";
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
				datafield: "gid",
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
					return "<div class='jqx-grid-cell-" + columnproperties['cellsalign'] + "-align' style='margin-top:4px;'><a href='http://" + window.location.hostname + "/لیست-ها/?list=gharardad&khodro=" + rowdata.kid + "'>" + value + "</a></div>";
				}
			}, {
				text: "رنگ",
				datafield: "kkhodro_rang",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "نوع دستگاه",
				datafield: "ggps_noe_gps",
				width: "5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شماره سیم کارت",
				datafield: "ggps_shomareh_sim",
				width: "9%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "مالک سیم",
				datafield: "ggps_malek_sim",
				width: "9%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شماره سریال",
				datafield: "ggps_shomareh_serial",
				width: "10%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "محل نصب",
				datafield: "ggps_mahale_nasb",
				width: "12%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "قطع کن",
				datafield: "ggps_ghatkon",
				width: "8%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "برق مستقیم",
				datafield: "ggps_barghe_mostaghim",
				width: "6%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شنود",
				datafield: "ggps_shenood",
				width: "4%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "لینک",
				datafield: "ggps_direct_link",
				width: "4%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					if(value){
						return "<div class='jqx-grid-cell-"+columnproperties['cellsalign']+"-align' style='margin-top:4px;'><a href='"+value+"' target='_blank'>"+"ردیابی"+"</a></div>";
					}else{
						return '';
					}
				}
			}, {
				text: "توضیحات",
				datafield: "ggps_tozihat",
				width: "10%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "kid",
				datafield: "kid",
				hidden: true,
			}, {
				text: "اقدامات",
				datafield: "gsave_id",
				width: "7%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					return add_virayesh(columnproperties, value,'ویرایش');
				}
			}]
			var source = {
				datatype: "json",
				datafields: [{
					name: "gid",
					type: "number"
				}, {
					name: "kkhodro_khodro",
					type: "string"
				}, {
					name: "kkhodro_rang",
					type: "string"
				}, {
					name: "ggps_khodro_id",
					type: "string"
				}, {
					name: "ggps_noe_gps",
					type: "string"
				}, {
					name: "ggps_shomareh_sim",
					type: "string"
				}, {
					name: "ggps_malek_sim",
					type: "string"
				}, {
					name: "ggps_shomareh_serial",
					type: "string"
				}, {
					name: "ggps_mahale_nasb",
					type: "string"
				}, {
					name: "ggps_ghatkon",
					type: "string"
				}, {
					name: "ggps_barghe_mostaghim",
					type: "string"
				}, {
					name: "ggps_shenood",
					type: "string"
				}, {
					name: "ggps_direct_link",
					type: "string"
				}, {
					name: "ggps_tozihat",
					type: "string"
				}, {
					name: "gsave_id",
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
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'ssave_id');
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

