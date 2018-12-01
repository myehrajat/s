jQuery(document).ready(function ($) {
	var form = 27;
	var title = "لیست تحویل و عودت";
	document.title = title;
	var list = "tahvil_odat";
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
					datafield: "toid",
					width: "10%",
					cellsalign: "center",
					align: "center",
				}, {
					text: "تاریخ",
					datafield: "totarikh",
					width: "15%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "خودرو",
					datafield: "kkhodro_khodro",
					width: "15%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "نام",
					datafield: "aashkhas_nam",
					width: "15%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "نام خانوادگی",
					datafield: "aashkhas_name_khanevadegi",
					width: "15%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "اقدامات",
					datafield: "tosave_id",
					width: "12%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
						return add_virayesh(columnproperties, value);
					}
				},


			]
			var source = {
				datatype: "json",
				datafields: [{
						name: "toid",
						type: "number"
					}, {
						name: "kkhodro_khodro",
						type: "string"
					},
					//{ name: "kkhodro_model", type: "string" },
					//{ name: "kkhodro_rang", type: "string" },
					//{ name: "kkhodro_shomare_shahrbani", type: "string" },
					{
						name: "aashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "aashkhas_nam",
						type: "string"
					},
					//{ name: "aashkhas_kode_meli", type: "string" },
					{
						name: "totarikh",
						type: "string"
					},
					//{ name: "totozihat", type: "string" },
					//{ name: "asave_id", type: "string" },
					//{ name: "ksave_id", type: "string" },
					{
						name: "tosave_id",
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

				//jQuery("#jqxgrid").jqxGrid('hidecolumn', 'save_id');

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
				//jQuery("#jqxgrid").jqxGrid('showcolumn', 'save_id');
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

