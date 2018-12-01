jQuery(document).ready(function ($) {
	var getValues = getSearchParameters();
	var form = 1;
	var title = "لیست اشخاص";
	document.title = title;
	var list = "ashkhas";
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
					datafield: "aid",
					width: "4%",
					cellsalign: "center",
					align: "center",
				}, {
					text: "تصویر",
					datafield: "aashkhas_tasvire_fard",
					width: "4%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
						if (value) {
							return "<div class='jqx-grid-cell-" + columnproperties['cellsalign'] + "-align'><a href='" + value + "'><img src='" + value + "' width='50' height='50' ></a></div>";
						}
					}
				}, {
					text: "تعاملات",
					datafield: "all_taamol",
					width: "14%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "نام خانوادگی",
					datafield: "aashkhas_name_khanevadegi",
					width: "11.5%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.aid, value);
					}
				},

				{
					text: "نام",
					datafield: "aashkhas_nam",
					width: "7.5%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.aid, value);
					}
				}, {
					text: "کد ملی",
					datafield: "aashkhas_kode_meli",
					width: "7.5%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "شماره شناسنامه",
					datafield: "aashkhas_shomare_shenasname",
					width: "9.5%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "نام پدر",
					datafield: "aashkhas_name_pedar",
					width: "7.5%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "صادره از",
					datafield: "aashkhas_sadere_az",
					width: "5%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "تاریخ تولد",
					datafield: "aashkhas_tarikhe_tavalod",
					width: "11.5%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "معرف ن خ",
					datafield: "moaref_name_khanevadegi",
					width: "6.5%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "معرف نام",
					datafield: "moaref_nam",
					width: "6.5%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "اقدامات",
					datafield: "asave_id",
					width: "5%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
						return add_virayesh(columnproperties, value);
					}
				}, {
					text: "ap",

					datafield: "ap",
					hidden: true,
				},
			]
			var source = {
				datatype: "json",
				datafields: [{
					name: "aid",
					type: "number"
				}, {
					name: "aashkhas_tasvire_fard",
					type: "string"
				}, {
					name: "all_taamol",
					type: "string"
				}, {
					name: "aashkhas_name_khanevadegi",
					type: "string"
				}, {
					name: "aashkhas_nam",
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
					name: "moaref_name_khanevadegi",
					type: "string"
				}, {
					name: "moaref_nam",
					type: "string"
				}, {
					name: "asave_id",
					type: "string"
				}, {
					name: "ap",
					type: "string"
				}, ],
				id: "SSSidSSS",
				localdata: localdata
			};
			var initrowdetails = function (index, parentElement, gridElement, datarecord) {
				var details = jQuery(jQuery(parentElement).children()[0]);
				Len = datarecord.ap.length;
				text = "<table dir='rtl'><tr dir='rtl'><th><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >#</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>نسبت</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>نام و نام خانوادگی</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>تلفن</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>آدرس</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>توضیحات</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>اقدامات</div></th></tr>";
				for (i = 0; i < Len; i++) {
					if (getValues.noedit == 1) {
						var virayesh = '';
					} else {
						var virayesh = "<a href='http://" + window.location.hostname + "/?page_id=2&mode=edit&record_id=" + datarecord.ap[i].save_id + "'>ویرایش</a>";
					}
					text += "<tr><td><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >" + datarecord.ap[i].id + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ap[i].address_phone_nesbat + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ap[i].address_phone_nam + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ap[i].address_phone_phone + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ap[i].address_phone_address + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ap[i].address_phone_tozihat + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px;'>" + virayesh + "</div></td></tr>";

				}
				text += "</table>";
				details.html(text);
			}
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
				rowdetails: true,
				rowdetailstemplate: {
					rowdetails: "<div style='margin: 10px;'>اطلاعات تماس</div>",
					rowdetailsheight: 1000,
				},
				initrowdetails: initrowdetails,


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

				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_tasvire_fard');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_shomare_shenasname');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_name_pedar');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_sadere_az');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'aashkhas_tarikhe_tavalod');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'asave_id');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'ap');

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
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_tasvire_fard');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_shomare_shenasname');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_name_pedar');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_sadere_az');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'aashkhas_tarikhe_tavalod');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'asave_id');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'ap');
			});









			jQuery("#excel").jqxButton();
			jQuery('#excel').on('click', function () {
				var gridContent = jQuery("#jqxgrid").jqxGrid('exportdata', 'xls', title, true, null, true, saveFile);
			});
			
			
		}).then(function(){
			jQuery("#loading").hide();
		});
	});
});

