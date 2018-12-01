jQuery(document).ready(function ($) {
	var form = 1;
	var title = "لیست دعاوی";
	document.title = title;
	var list = "daavi";
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
				datafield: "did",
				width: "2%",
				cellsalign: "center",
				align: "center",
			}, {
				text: "وضعیت",
				datafield: "ddaavi_vaziyat",
				width: "3%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "نام خانوادگی ش م",
				datafield: "aashkhas_name_khanevadegi",
				width: "8%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.aid, value);
				}			
			}, {
				text: "نام ش م",
				datafield: "aashkhas_nam",
				width: "5%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.aid, value);
				}
			}, {
				text: "َشاکی",
				datafield: "ddaavi_shaki",
				width: "7%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "متهم",
				datafield: "ddaavi_moteshaki",
				width: "7%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "موضوع",
				datafield: "ddaavi_mozoo",
				width: "11%",
				cellsalign: "right",
				align: "center",
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
				text: "ش شهربانی",
				datafield: "kkhodro_shomare_shahrbani",
				width: "7%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "محل رسیدگی",
				datafield: "ddaavi_mahale_residegi",
				width: "7%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شعبه",
				datafield: "ddaavi_shobe",
				width: "4%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "پرونده",
				datafield: "ddaavi_shomareh_parvandeh",
				width: "9.5%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "بایگانی",
				datafield: "ddaavi_shomareh_baygani",
				width: "4%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "کلانتری",
				datafield: "ddaavi_shomareh_parvandeh_kalantri",
				width: "4%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "مراجعه بعدی",
				datafield: "ddaavi_tarikh_morajeh_badi",
				width: "6%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "مرحله قبل",
				datafield: "mgdsave_id",
				width: "4%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					if(rowdata.ddaavi_marhaleye_ghabl_id){
						return add_virayesh(columnproperties, value,'شماره:'+rowdata.ddaavi_marhaleye_ghabl_id);
					}else{
						return '';
					}
				}
			}, {
				text: "اقدامات",
				datafield: "dsave_id",
				width: "3%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_virayesh(columnproperties, value);
				}
			}, {
				text: "aid",
				datafield: "aid",
				hidden: true,
			}, {
				text: "kid",
				datafield: "kid",
				hidden: true,
			}, {
				text: "ddaavi_marhaleye_ghabl_id",
				datafield: "ddaavi_marhaleye_ghabl_id",
				hidden: true,
			},]

			var source = {
				datatype: "json",
				datafields: [{
					name: "did",
					type: "number"
				}, {
					name: "ddaavi_vaziyat",
					type: "string"
				}, {
					name: "aashkhas_name_khanevadegi",
					type: "string"
				}, {
					name: "aashkhas_nam",
					type: "string"
				}, {
					name: "ddaavi_shaki",
					type: "string"
				}, {
					name: "ddaavi_moteshaki",
					type: "string"
				}, {
					name: "ddaavi_mozoo",
					type: "string"
				}, {
					name: "kkhodro_khodro",
					type: "string"
				}, {
					name: "kkhodro_shomare_shahrbani",
					type: "string"
				}, {
					name: "ddaavi_mahale_residegi",
					type: "string"
				}, {
					name: "ddaavi_shobe",
					type: "string"
				}, {
					name: "ddaavi_shomareh_parvandeh_kalantri",
					type: "string"
				}, {
					name: "ddaavi_shomareh_parvandeh",
					type: "string"
				}, {
					name: "ddaavi_shomareh_baygani",
					type: "string"
				}, {
					name: "ddaavi_tarikh_morajeh_badi",
					type: "string"
				}, {
					name: "ddaavi_marhaleye_ghabl_id",
					type: "string"
				}, {
					name: "dsave_id",
					type: "string"
				}, {
					name: "aid",
					type: "string"
				}, {
					name: "kid",
					type: "string"
				}, {
					name: "mgdsave_id",
					type: "string"
				}, ],
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
				groups: ['ddaavi_vaziyat','aashkhas_name_khanevadegi'],
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

				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'save_id');

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
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'save_id');
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

