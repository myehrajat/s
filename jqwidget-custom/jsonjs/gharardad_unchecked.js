jQuery(document).ready(function ($) {
	var getValues = getSearchParameters();
	var form = 20;
	var title = "لیست قرارداد چک نشده";
	document.title = title;
	var list = "gharardad_unchecked";

	/************ make json param to send to json.php*******************/
	var jsonparam = {
		list: list,
		tempfile: tempfile
	};
	if (getValues.shakhs) {
		jsonparam.shakhs = getValues.shakhs;
	}
	if (getValues.khodro) {
		jsonparam.khodro = getValues.khodro;
	}
	/************ first .done method *******************/
	//this get run json.php to create data compressed in temp file
	jQuery.get(url, jsonparam).done(function (data) {
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
					datafield: "gid",
					width: "4%",
					cellsalign: "center",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {}
				}, {
					text: "ش ق",
					datafield: "ggharardad_shomare_gharardad",
					width: "3%",
					cellsalign: "right",
					align: "center",
					hidden: true,
				}, {
					text: "خودرو",
					datafield: "kkhodro_khodro",
					width: "12%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return "<div class='jqx-grid-cell-" + columnproperties['cellsalign'] + "-align' style='margin-top:4px;'><a href='http://" + window.location.hostname + "/لیست-ها/?list=gharardad&khodro=" + rowdata.ggharardad_khodro_id + "'>" + value + "</a></div>";

					}
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
					width: "7%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.ggharardad_mostajer_id, value);
					}
				}, {
					text: "مستاجر",
					datafield: "mostajerashkhas_nam",
					width: "7%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.ggharardad_mostajer_id, value);
					}
				}, {
					text: "موجر",
					datafield: "mojerashkhas_name_khanevadegi",
					width: "7%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.ggharardad_mojer_id, value);
					}
				}, {
					text: "موجر",
					datafield: "mojerashkhas_nam",
					width: "7%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.ggharardad_mojer_id, value);
					}
				}, {
					text: "تحویل",
					datafield: "ggharardad_tarikhe_tahvil",
					width: "11%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "عودت",
					datafield: "ggharardad_tarikhe_odat",
					width: "11%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "و عودت",
					datafield: "ggharardad_vadeye_tarikhe_odat",
					width: "6%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "ق روزانه",
					datafield: "ggharardad_gheymate",
					width: "5%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						if (rowdata.ggharardad_mostajer_id == 11) {
							return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.ggharardad_mojer_id + "&khodro=" + rowdata.ggharardad_khodro_id, value)
						} else if (rowdata.ggharardad_mojer_id == 11) {
							return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.ggharardad_mostajer_id + "&khodro=" + rowdata.ggharardad_khodro_id, value)
						} else {

						};
					}
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
					text: "خودرو ID",
					datafield: "ggharardad_khodro_id",
					hidden: true,

				}, {
					text: "soorathesab",
					datafield: "soorathesab",
					hidden: true,

				}, {
					text: "چک",
					datafield: "ggharardad_check",
					width: "10%",
					cellsalign: "right",
					align: "center",

				}, {
					text: "اقدامات",
					datafield: "gsave_id",
					width: "4%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
						if (getValues.noedit != 1) {
							return add_virayesh(columnproperties, value);
						} else {
							return '';
						}
					}
				},
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
					}, {
						name: "ggharardad_khodro_id",
						type: "string"
					}, {
						name: "soorathesab",
						type: "string"
					}, {
						name: "ggharardad_check",
						type: "string"
					},
				],
				id: "SSSidSSS",
				localdata: localdata
			};
			var initrowdetails = function (index, parentElement, gridElement, datarecord) {
				var details = jQuery(jQuery(parentElement).children()[0]);

				text = "<table dir='rtl' border='1px'>";
				text += "<tr dir='rtl'>";
				text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px;' >کیلومتر مجاز روزانه</div></th>";
				text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>کیلومتر اولیه</div></th>";
				text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>کیلومتر ثانویه</div></th>";
				text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>هر کیلومتر اضافه</div></th>";
				text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>بنزین اولیه</div></th>";
				text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>بنزین ثانویه</div></th>";
				text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>تحویل دهنده</div></th>";
				text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>تحویل گیرنده</div></th>";
				text += "</tr>";
				text += "<tr>";
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >" + datarecord.ggharardad_odo_mojaz + "</div></td>";
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_odo_avaliye + "</div></td>";
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_odo_sanaviye + "</div></td>";
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_odo_hazine + "</div></td>";
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_benzin_avaliye + "</div></td>";
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.ggharardad_benzin_sanaviye + "</div></td>";
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.gharardad_tahvil_dahandeashkhas_nam + " " + datarecord.gharardad_tahvil_dahandeashkhas_name_khanevadegi + "</div></td>";
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + datarecord.gharardad_tahvil_girandeashkhas_nam + " " + datarecord.gharardad_tahvil_girandeashkhas_name_khanevadegi + "</div></td>";
				text += "</tr>";
				text += "</table>";

				if (typeof datarecord.soorathesab[0] !== 'undefined') {
					//str = JSON.stringify(datarecord.soorathesab[0], null, 4); // (Optional) beautiful indented output.
					//console.log(str); // Logs output to dev tools console.
					//alert(str);
					// alert
					var total = 0;
					text += "<table dir='rtl' border='1px'>";
					text += "<tr dir='rtl'>";
					text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px;' >بابت</div></th>";
					text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>برداشت</div></th>";
					text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>واریز</div></th>";
					text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>جمع کل</div></th>";
					text += "</tr>";

					for (s of datarecord.soorathesab) {
						if (s['soorathesab_variz'] == '') {
							total = parseFloat(parseFloat(total) - parseFloat(s['soorathesab_bedehi']));
						} else if (s['soorathesab_bedehi'] == '') {
							total = parseFloat(parseFloat(total) + parseFloat(s['soorathesab_variz']));
						} else if (s['soorathesab_bedehi'] != '' && s['soorathesab_variz'] != '') {
							total = parseFloat(parseFloat(total) + parseFloat(s['soorathesab_variz']) - parseFloat(s['soorathesab_bedehi']));
						} else {
							total = total;
						}
						text += "<tr dir='rtl'>";

						text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + s['soorathesab_babat'] + "</div></td>";
						text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + s['soorathesab_bedehi'] + "</div></td>";
						text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + s['soorathesab_variz'] + "</div></td>";
						text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>" + total + "</div></td>";
						text += "</tr>";


					}
					text += "</table>";
					//alert(text);
				}

				details.html(text);
			}
			var dataAdapter = new jQuery.jqx.dataAdapter(source);
			if (getValues.khodro && getValues.shakhs) {
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
						toolbar.append(add_toolbar(form, title + " شخص و خودروی خاص"));
					},
					columns: columns,
					rowdetails: true,
					rowdetailstemplate: {

						rowdetails: "<div style='margin: 10px;'>اطلاعات قرارداد</div>",
						rowdetailsheight: 300,
					},
					initrowdetails: initrowdetails,
					groups: ['kkhodro_khodro','ggharardad_tarikhe_tahvil','ggharardad_tarikhe_odat'],
					// sortcolumn: 'ggharardad_tarikhe_odat',
					//sortdirection: 'asc',
				});

			} else if (getValues.khodro && !getValues.shakhs) {
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
						toolbar.append(add_toolbar(form, title + " شخص خاص"));
					},
					columns: columns,
					rowdetails: true,
					rowdetailstemplate: {

						rowdetails: "<div style='margin: 10px;'>اطلاعات قرارداد</div>",
						rowdetailsheight: 400,
					},
					initrowdetails: initrowdetails,
					//groups: ['kkhodro_khodro'],
					// sortcolumn: 'ggharardad_tarikhe_odat',
					//sortdirection: 'asc',
				});
			} else if (getValues.shakhs && !getValues.khodro) {
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
						toolbar.append(add_toolbar(form, title + " شخص خاص"));
					},
					columns: columns,
					rowdetails: true,
					rowdetailstemplate: {
						rowdetails: "<div style='margin: 10px;'>اطلاعات قرارداد</div>",
						rowdetailsheight: 400,
					},
					initrowdetails: initrowdetails,
					// groups: ['kkhodro_khodro'],
					// sortcolumn: 'ggharardad_tarikhe_odat',
					//sortdirection: 'asc',
				});
			} else {
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
						rowdetailsheight: 400,
					},
					initrowdetails: initrowdetails,
					groups: ['kkhodro_khodro','ggharardad_tarikhe_tahvil','ggharardad_tarikhe_odat'],
					// sortcolumn: 'ggharardad_tarikhe_odat',
					//sortdirection: 'asc',
				});
			}



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

				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'gid');
				jQuery("#jqxgrid").jqxGrid('hidecolumn', 'gsave_id');

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
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'gid');
				jQuery("#jqxgrid").jqxGrid('showcolumn', 'gsave_id');
			});









			jQuery("#excel").jqxButton();
			jQuery('#excel').on('click', function () {
				var gridContent = jQuery("#jqxgrid").jqxGrid('exportdata', 'xls', title, true, null, true, "http://" + window.location.hostname + "/wp-content/plugins/jqwidgetnew/save-file.php");
			});









			jQuery('#jqxgrid').on('rowexpand', function (event) {
				// GET ALL SELECTE ROW INDEX (RETURNS ARRAY)
				var prev_row = jQuery('#jqxgrid').jqxGrid('selectedrowindexes');
				// IF PREV ROW NOT NOT BLANK LOOP THROUGH ARRAY HIDING selectedrowindexes
				if (prev_row != '') {
					for (var i = 0; i < prev_row.length; i++) {
						jQuery('#jqxgrid').jqxGrid('hiderowdetails', prev_row[i]);
					}
				};
				// GET INDEX
				var index = jQuery('#jqxgrid').jqxGrid('getrowboundindex', event.args.rowindex);
				// SET CURRENT ROW AS SELECTED
				jQuery('#jqxgrid').jqxGrid({
					selectedrowindexes: [index]
				});
			});

			jQuery('#jqxgrid').on('rowcollapse', function (event) {
				//CLEAR SELECTION TO REOPEN AGAIN
				jQuery('#jqxgrid').jqxGrid('clearselection');
			});
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		}).then(function(){
			jQuery("#loading").hide();
		});
	});
});

