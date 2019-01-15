jQuery(document).ready(function ($) {
	var form = 20;
	var title = "لیست قرارداد بایگانی";
	document.title = title;
	var list = "gharardad-bayegani";
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
					width: "3%",
					cellsalign: "center",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {}
				}, {
					text: "ش ق",
					datafield: "ggharardad_shomare_gharardad",
					width: "3%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "خودرو",
					datafield: "kkhodro_khodro",
					width: "12%",
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
				},
				/*{
					text:"شماره شهربانی" ,
					datafield:"kkhodro_shomare_shahrbani",
					width:"7%",
					cellsalign:"right" ,
					align:"center" ,
				},*/
				{
					text: "مستاجر",
					datafield: "mostajerashkhas_name_khanevadegi",
					width: "8%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return "<div class='jqx-grid-cell-" + columnproperties['cellsalign'] + "-align' style='margin-top:4px;'><a href='http://" + window.location.hostname + "/لیست-ها/?list=soorathesab&shakhs=" + rowdata.ggharardad_mostajer_id + "'>" + value + "</a></div>";
					},
				}, {
					text: "مستاجر",
					datafield: "mostajerashkhas_nam",
					width: "8%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "موجر",
					datafield: "mojerashkhas_name_khanevadegi",
					width: "8%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return "<div class='jqx-grid-cell-" + columnproperties['cellsalign'] + "-align' style='margin-top:4px;'><a href='http://" + window.location.hostname + "/لیست-ها/?list=soorathesab&shakhs=" + rowdata.ggharardad_mojer_id + "'>" + value + "</a></div>";
					},
				}, {
					text: "موجر",
					datafield: "mojerashkhas_nam",
					width: "8%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "تحویل",
					datafield: "ggharardad_tarikhe_tahvil",
					width: "12%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "عودت",
					datafield: "ggharardad_tarikhe_odat",
					width: "12%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "و عودت",
					datafield: "ggharardad_vadeye_tarikhe_odat",
					width: "7%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "ق روزانه",
					datafield: "ggharardad_gheymate",
					width: "5%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "ک مجاز روزانه",
					datafield: "ggharardad_odo_mojaz",
					hidden: true,

				}, {
					text: "ک رفت",
					datafield: "ggharardad_odo_avaliye",
					hidden: true,
				},

				{
					text: "ک برگشت",
					datafield: "ggharardad_odo_sanaviye",
					hidden: true,

				}, {
					text: "هر کیلومتر اضافه",
					datafield: "ggharardad_odo_hazine",
					hidden: true,

				}, {
					text: "ب رفت",
					datafield: "ggharardad_benzin_avaliye",
					hidden: true,

				}, {
					text: "ب برگشت",
					datafield: "ggharardad_benzin_sanaviye",
					hidden: true,

				}, {
					text: "تحویل دهنده",
					datafield: "gharardad_tahvil_dahandeashkhas_name_khanevadegi",
					hidden: true,

				}, {
					text: "تحویل دهنده",
					datafield: "gharardad_tahvil_dahandeashkhas_nam",
					hidden: true,

				}, {
					text: "تحویل گیرنده",
					datafield: "gharardad_tahvil_girandeashkhas_name_khanevadegi",
					hidden: true,

				}, {
					text: "تحویل گیرنده",
					datafield: "gharardad_tahvil_girandeashkhas_nam",
					hidden: true,

				}, {
					text: "مستاجر ID",
					datafield: "ggharardad_mostajer_id",
					hidden: true,

				}, {
					text: "موجر ID",
					datafield: "ggharardad_mojer_id",
					hidden: true,

				}, {
					text: "اقدامات",
					datafield: "gsave_id",
					width: "5%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
						return add_virayesh(columnproperties, value);
					}
				}
			]
			var source = {
				datatype: "json",
				datafields: [{
						name: "gid",
						type: "number"
					}, {
						name: "ggharardad_shomare_gharardad",
						type: "string"
					}, {
						name: "kkhodro_khodro",
						type: "string"
					}, {
						name: "kkhodro_model",
						type: "string"
					}, {
						name: "kkhodro_rang",
						type: "string"
					},
					//{ name: "kkhodro_shomare_shahrbani", type: "string" },
					{
						name: "mojerashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "mojerashkhas_nam",
						type: "string"
					}, {
						name: "mostajerashkhas_nam",
						type: "string"
					}, {
						name: "mostajerashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "ggharardad_tarikhe_tahvil",
						type: "string"
					}, {
						name: "ggharardad_tarikhe_odat",
						type: "string"
					}, {
						name: "ggharardad_vadeye_tarikhe_odat",
						type: "string"
					}, {
						name: "ggharardad_gheymate",
						type: "string"
					}, {
						name: "ggharardad_odo_mojaz",
						type: "string"
					}, {
						name: "ggharardad_odo_avaliye",
						type: "string"
					}, {
						name: "ggharardad_odo_sanaviye",
						type: "string"
					}, {
						name: "ggharardad_odo_hazine",
						type: "string"
					}, {
						name: "gsave_id",
						type: "string"
					}, {
						name: "ggharardad_benzin_avaliye",
						type: "string"
					}, {
						name: "ggharardad_benzin_sanaviye",
						type: "string"
					}, {
						name: "gharardad_tahvil_dahandeashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "gharardad_tahvil_dahandeashkhas_nam",
						type: "string"
					}, {
						name: "gharardad_tahvil_girandeashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "gharardad_tahvil_girandeashkhas_nam",
						type: "string"
					}, {
						name: "ggharardad_mostajer_id",
						type: "string"
					}, {
						name: "ggharardad_mojer_id",
						type: "string"
					},
				],
				id: "SSSidSSS",
				localdata: localdata
			};
			var initrowdetails = function (index, parentElement, gridElement, datarecord) {
				var details = jQuery(jQuery(parentElement).children()[0]);
				text = "<table dir='rtl'><tr dir='rtl'><th><div class='jqx-grid-cell-right-align' style='margin-top:4px;' >کیلومتر مجاز روزانه</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>کیلومتر اولیه</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>کیلومتر ثانویه</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>هر کیلومتر اضافه</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>بنزین اولیه</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>بنزین ثانویه</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>تحویل دهنده</div></th><th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>تحویل گیرنده</div></th></tr>";
				text += "<tr><td><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >" + datarecord.ggharardad_odo_mojaz + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_odo_avaliye + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_odo_sanaviye + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_odo_hazine + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_benzin_avaliye + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_benzin_sanaviye + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.gharardad_tahvil_dahandeashkhas_nam + " " + datarecord.gharardad_tahvil_dahandeashkhas_name_khanevadegi + "</div></td><td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.gharardad_tahvil_girandeashkhas_nam + " " + datarecord.gharardad_tahvil_girandeashkhas_name_khanevadegi + "</div></td></tr>";
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
					rowdetails: "<div style='margin: 10px;'>اطلاعات قرارداد</div>",
					rowdetailsheight: 1000,
				},
				initrowdetails: initrowdetails,
				groups: ['kkhodro_khodro'],
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

