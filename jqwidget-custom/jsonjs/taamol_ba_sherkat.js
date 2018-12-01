jQuery(document).ready(function ($) {
	var form = 3;
	var list = "taamol_ba_sherkat";
	var title = "لیست تعامل اشخاص با شرکت";
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
				datafield: "tbsid",
				width: "4%",
				cellsalign: "center",
				align: "center",
			}, {
				text: "نوع تعامل",
				datafield: "ttaamol_taamol",
				width: "10%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "نام خانوادگی",
				datafield: "aashkhas_name_khanevadegi",
				width: "13%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.aid, value);
				}
			}, {
				text: "نام",
				datafield: "aashkhas_nam",
				width: "10%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
					return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.aid, value);
				}
			}, {
				text: "کد ملی",
				datafield: "aashkhas_kode_meli",
				width: "10%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "شماره شناسنامه",
				datafield: "aashkhas_shomare_shenasname",
				width: "9%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "نام پدر",
				datafield: "aashkhas_name_pedar",
				width: "10%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "صادره از",
				datafield: "aashkhas_sadere_az",
				width: "10%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "تاریخ تولد",
				datafield: "aashkhas_tarikhe_tavalod",
				width: "12%",
				cellsalign: "right",
				align: "center",
			}, {
				text: "اقدامات",
				datafield: "tbssave_id",
				width: "12%",
				cellsalign: "right",
				align: "center",
				cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
					return add_virayesh(columnproperties, value);
				}
			}, {
				text: "save_id اشخاص h",
				datafield: "asave_id",
				hidden: true,

			}, {
				text: "id اشخاص h",
				datafield: "aid",
				hidden: true,

			}, ]
			var source = {
				datatype: "json",
				datafields: [{
						name: "tbsid",
						type: "number"
					}, {
						name: "ttaamol_taamol",
						type: "string"
					}, {
						name: "aashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "aashkhas_kode_meli",
						type: "string"
					}, {
						name: "aashkhas_shomare_shenasname",
						type: "string"
					}, {
						name: "aashkhas_name_pedar",
						type: "string"
					}, {
						name: "aashkhas_sadere_az",
						type: "string"
					}, {
						name: "aashkhas_tarikhe_tavalod",
						type: "string"
					}, {
						name: "tbssave_id",
						type: "string"
					}, {
						name: "asave_id",
						type: "string"
					}, {
						name: "aashkhas_nam",
						type: "string"
					}, {
						name: "aid",
						type: "number"
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
				groups: ['ttaamol_taamol'],
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

				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'tbsid');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_shomare_shenasname');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_kode_meli');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_shomare_shenasname');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_name_pedar');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_sadere_az');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_tarikhe_tavalod');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'tbssave_id');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'asave_id');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aid');

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
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'tbsid');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_shomare_shenasname');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_kode_meli');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_shomare_shenasname');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_name_pedar');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_sadere_az');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_tarikhe_tavalod');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'tbssave_id');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'asave_id');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aid');
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

