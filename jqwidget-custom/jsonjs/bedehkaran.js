jQuery(document).ready(function ($) {
	var getValues = getSearchParameters();
	var form = 23;
	var title = "لیست بدهکاران";
	document.title = title;
	var list = "bedehkaran";
	/************ fmake json param to send to json.php*******************/
	var jsonparam = {
		list: list,
		tempfile: tempfile
	};
	if (getValues.asli_shakhs) {
		jsonparam.asli_shakhs = getValues.asli_shakhs;
	}

	/************ first .done method *******************/
	//this get run json.php to create data compressed in temp file
	jQuery.get(url, jsonparam).done(function (data) {
		/************ second .done method *******************/
		jQuery.get(tempurl).done(function (data) { //this get is only for reading temp file data which its compressed string is in h js lang variable
			var localdata = eval(JXG.decompress(h)); //decompress data
			if (getValues.asli_shakhs) {
				title = title + ' به ' + localdata[0].aaashkhas_nam + ' ' + localdata[0].aaashkhas_name_khanevadegi;

			}
			deleteTempFile(tempfile); //loaded data in localdata so no need to tempfile this code delete it by calling another get in jquery_general.js function and that func call delete-temp-file.php and the name of file is passed by get method
			/****************************************************************
			all have done in two .done method to make sure localdata is
			available done run when the code finished and result returned
			****************************************************************/
			var columns = [{
						text: "#",
						datafield: "sid",
						width: "4%",
						cellsalign: "center",
						align: "center",
						cellsformat: 'n'
					}, {
						text: "نام خانوادگی",
						datafield: "aashkhas_name_khanevadegi",
						width: "7%",
						cellsalign: "right",
						align: "center",
						cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
							return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.aid, value);
						}
					}, {
						text: "نام",
						datafield: "aashkhas_nam",
						width: "5%",
						cellsalign: "right",
						align: "center",
						cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
							return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.aid, value);
						}
					},

					{
						text: "تاریخ",
						datafield: "ssoorathesab_tarikh",
						width: "7%",
						cellsalign: "right",
						align: "center",
					}, {
						text: "خودرو",
						datafield: "kkhodro_khodro",
						width: "11%",
						cellsalign: "right",
						align: "center",
						cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
							return add_link_tolist(columnproperties, 'list=gharardad&khodro=', rowdata.kid, value);
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
						width: "4%",
						cellsalign: "right",
						align: "center",
					}, {
						text: "شماره شهربانی",
						datafield: "kkhodro_shomare_shahrbani",
						width: "8%",
						cellsalign: "right",
						align: "center",
						hidden: true,
					}, {
						text: "بابت",
						datafield: "ssoorathesab_babat",
						width: "20.7%",
						cellsalign: "right",
						align: "center",
					}, {
						text: "برداشت",
						datafield: "ssoorathesab_bedehi",
						width: "5%",
						cellsalign: "right",
						align: "center",
						cellsformat: 'n'
					}, {
						text: "واریز",
						datafield: "ssoorathesab_variz",
						width: "5%",
						cellsalign: "right",
						align: "center",
						cellsformat: 'n'
					}, {
						text: "گردش مالی",
						datafield: "ssoorathesab_gardesh",
						width: "6%",
						cellsalign: "right",
						align: "center",
						cellsformat: 'n'
							//cellsrenderer:
							//function(row,columnfield,value,defaulthtml,columnproperties,rowdata){
							//var index=rowdata.jqxindex;
							//var i=parseInt(index);
							//var allrows = jQuery('#jqxgrid').jqxGrid('getrows');
							//var allrowsLen = parseInt(allrows.length-1);
							//alert('allrows.length'+parseInt(allrowsLen));
							//alert(rowdata.ssoorathesab_variz);
							//alert(rowdata.ssoorathesab_variz);
							//alert(rowdata.ssoorathesab_bedehi);
							//alert('parseInt(index)'+parseInt(i));
							//alert('rowdata.ssoorathesab_variz'+rowdata.ssoorathesab_variz);
							//alert('rowdata.ssoorathesab_bedehi'+rowdata.ssoorathesab_bedehi);
							//alert('soorathesab'+parseInt(rowdata.ssoorathesab_variz-rowdata.ssoorathesab_bedehi));
							//alert("parseInt(allrowsLen)"+parseInt(allrowsLen));
							//var result;
							//result = parseInt(rowdata.ssoorathesab_variz-rowdata.ssoorathesab_bedehi);
							//alert('result'+result);
							//while (parseInt(allrowsLen) > parseInt(i)){
							//i = parseInt(i+1);
							//alert("i"+i);
							//	if(rowdata.aid == allrows[i].aid){
							//	result = parseInt(allrows[i].ssoorathesab_variz-allrows[i].ssoorathesab_bedehi+result);
							//	//alert('p'+result);
							//	}
							//}
							//alert(result);
							//return String(result);
							//}
					}, {
						text: "حساب نهایی",
						datafield: "ssoorathesab_nahayi",
						width: "6%",
						cellsalign: "right",
						align: "center",
						cellsformat: 'n'
					}, {
						text: "وضعببت حساب",
						datafield: "aashkhas_vaziyat_hesab",
						width: "6%",
						cellsalign: "right",
						align: "center",
						cellsformat: 'n'
					}, {
						text: "توضیحات",
						datafield: "ssoorathesab_tozihat",
						width: "5%",
						cellsalign: "right",
						align: "center",
					},

					{
						text: "اقدامات",
						datafield: "asave_id",
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
					}, {
						text: "index",
						datafield: "jqxindex",
						hidden: true,
					}, {
						text: "aid",
						datafield: "aid",
						hidden: true,
					}, {
						text: "خودرو kid",
						datafield: "kid",
						hidden: true,
					}, {
						text: " save_id صورتحساب h",
						datafield: "ssave_id",
						hidden: true
					}, {
						text: " save_id آدرس تلفن h",
						datafield: "address_phones",
						hidden: true
					},
				]
				//alert();
			var source = {
				datatype: "json",
				datafields: [{
						name: "sid",
						type: "number"
					}, {
						name: "aashkhas_name_khanevadegi",
						type: "string"
					}, {
						name: "aashkhas_nam",
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
					}, {
						name: "kkhodro_shomare_shahrbani",
						type: "string"
					}, {
						name: "ssoorathesab_tarikh",
						type: "string"
					}, {
						name: "ssoorathesab_variz",
						type: "number"
					}, {
						name: "ssoorathesab_bedehi",
						type: "number"
					}, {
						name: "ssoorathesab_babat",
						type: "string"
					}, {
						name: "aashkhas_vaziyat_hesab",
						type: "string"
					}, {
						name: "ssoorathesab_tozihat",
						type: "string"
					}, {
						name: "ssave_id",
						type: "string"
					}, {
						name: "asave_id",
						type: "string"
					}, {
						name: "ssoorathesab_gardesh",
						type: "number"
					}, {
						name: "ssoorathesab_nahayi",
						type: "number"
					}, {
						name: "jqxindex",
						type: "string"
					}, {
						name: "aid",
						type: "string"
					}, {
						name: "kid",
						type: "string"
					}, {
						name: "address_phones",
						type: "string"
					},

				],
				id: "SSSidSSS",
				localdata: localdata
			};
			var initrowdetails = function (index, parentElement, gridElement, datarecord) {
								var details = jQuery(jQuery(parentElement).children()[0]);

				//var_dump(datarecord['address_phones']);
				text = "<table dir='rtl' border='1px' style='max-width: 100% !important'>";
					text += "<tr dir='rtl'>";
					text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px;' >نسبت</div></th>";
					text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>نام و نام خانوادگی</div></th>";
					text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>تلفن</div></th>";
					text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>آدرس</div></th>";
					text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>توضیحات</div></th>";
					//text += "<th><div class='jqx-grid-cell-right-align' style='margin-top:4px; '>اقدامات</div></th>";
					text += "</tr>";
				datarecord['address_phones'].forEach(myFunction);
				function myFunction(item, index) {	
					//alert(item.address_phone_nesbat);
				text += "<tr>";
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >" + return_not_null(item.address_phone_nesbat) + "</div></td>";    				
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >" + return_not_null(item.address_phone_nam) + "</div></td>";    				
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >" + return_not_null(item.address_phone_phone) + "</div></td>";    				
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >" + return_not_null(item.address_phone_address) + "</div></td>";    				
				text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >" + return_not_null(item.address_phone_tozihat) + "</div></td>";    
					//if (getValues.noedit != 1) {var virayesh =  add_virayesh(NULL, item.save_id);} else {var virayesh =  '';}
			//	text += "<td><div class='jqx-grid-cell-right-align' style='margin-top:4px;  ' >" + virayesh + "</div></td>";    
							

					text += "</tr>";
					//alert(item.address_phone_phone); 
				}
				text += "</table>";
				details.html(text);
			}
			var dataAdapter = new jQuery.jqx.dataAdapter(source);
			//dump(dataAdapter);
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
				groups: ['aashkhas_vaziyat_hesab'],
				rowdetails: true,
				rowdetailstemplate: {
					rowdetails: "<div style='margin: 10px;'>اطلاعات قرارداد</div>",
					rowdetailsheight: 800,
				},
					initrowdetails: initrowdetails,
			});









			//filter_mode
			jQuery("#filter_mode").jqxButton();
			jQuery('#filter_mode').on('click', function () {
				var filtermode = $('#jqxgrid').jqxGrid('filtermode');
				if (filtermode == 'default') {
					$('#jqxgrid').jqxGrid({
						showfilterrow: false
					});
					$('#jqxgrid').jqxGrid({
						filtermode: 'excel'
					});
				} else if (filtermode == 'excel') {
					$('#jqxgrid').jqxGrid({
						showfilterrow: true
					});
					$('#jqxgrid').jqxGrid({
						filtermode: 'default'
					});
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
				var gridContent = jQuery("#jqxgrid").jqxGrid('exportdata', 'xls', title, true, null, true, "http://" + window.location.hostname + "/wp-content/plugins/jqwidgetnew/save-file.php");
			});
		}).then(function () {
			jQuery("#loading").hide();
		});
	});
});
