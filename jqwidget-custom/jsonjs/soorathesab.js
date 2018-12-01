jQuery(document).ready(function ($) {
	var getValues = getSearchParameters();
	var form = 23;
	var title = "لیست صورتحساب"

	document.title = title;
	var list = "soorathesab";
	/************ make json param to send to json.php*******************/
	var jsonparam = {
		list: list,
		tempfile: tempfile
	};
	if (getValues.shakhs) {
		jsonparam.shakhs = getValues.shakhs;
	}
	if (getValues.asli_shakhs) {
		jsonparam.asli_shakhs = getValues.asli_shakhs;
	}
	if (getValues.tarikh) {
		jsonparam.tarikh = getValues.tarikh;
	}
	if (getValues.totarikh) {
		jsonparam.totarikh = getValues.totarikh;
	}
	if (getValues.nogharardad) {
		jsonparam.nogharardad = getValues.nogharardad;
	}
	if (getValues.onlygharardad) {
		jsonparam.onlygharardad = getValues.onlygharardad;
	}
	if (getValues.nojari) {
		jsonparam.nojari = getValues.nojari;
	}
	if (getValues.onlyjari) {
		jsonparam.onlyjari = getValues.onlyjari;
	}
	if (getValues.exclude) {
		jsonparam.exclude = getValues.exclude;
	}
	/************ first .done method *******************/
	//this get run json.php to create data compressed in temp file
	jQuery.get(url, jsonparam).done(function (data) {
		//alert(data);
		/************ second .done method *******************/
		jQuery.get(tempurl).done(function (data) { //this get is only for reading temp file data which its compressed string is in h js lang variable
			var localdata = eval(JXG.decompress(h)); //decompress data
	if (getValues.shakhs) {
			title = title+' '+localdata[0].aashkhas_nam+' '+localdata[0].aashkhas_name_khanevadegi;
			title = title+' با '+localdata[0].aaashkhas_nam+' '+localdata[0].aaashkhas_name_khanevadegi;

	}
	//if (getValues.asli_shakhs) {
	//}
	if (getValues.tarikh) {
			title = title+' '+getValues.tarikh;
	}
	if (getValues.totarikh) {
			title = title+' الی '+getValues.totarikh;
	}
			deleteTempFile(tempfile); //loaded data in localdata so no need to tempfile this code delete it by calling another get in jquery_general.js function and that func call delete-temp-file.php and the name of file is passed by get method
			/****************************************************************
			all have done in two .done method to make sure localdata is
			available done run when the code finished and result returned
			****************************************************************/


			/****************************************************************
			this is a trying experience to manage and calculate data befor sendig
			to grid and this is counting and add gardash and nahayii but this has
			a problem that when we dont shakhs calc all askhas and soorathesab to
			gather for every shakhs seperately
			****************************************************************/

/*
			localdata = localdata.reverse(localdata);

			var lastIndex = localdata.length - 1;
			localdata.forEach(function (currentValue, index, arr) {
				if (currentValue.ssoorathesab_bedehi == '') {
					currentValue.ssoorathesab_bedehi = 0;
				}
				if (currentValue.ssoorathesab_variz == '') {
					currentValue.ssoorathesab_variz = 0;
				}
				var bedehi = parseInt(currentValue.ssoorathesab_bedehi);
var variz = parseInt(currentValue.ssoorathesab_variz);
				var soorat = variz - bedehi;
				
				if (index == 0) {
					localdata[index].testd = '';
					//alert(soorat);
					//alert('sssssssss');
					var gardesh = soorat;
				}else if(index == lastIndex){
					//alert( localdata[index - 1].test);
					var gardesh = soorat + localdata[index - 1].test;
					localdata[index].testd = gardesh;
				} else {
					localdata[index].testd = '';
					//alert(localdata[index - 1].test);
					var gardesh = soorat + localdata[index - 1].test;
					localdata[index].testd = '';
				}
				localdata[index].test = gardesh;
				//alert(localdata[index].test);
				//console.log(localdata[index].test);
			});
			localdata = localdata.reverse(localdata);
			//var_dump(localdata);


*/






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
						//alert(currentValue);

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
					text: "بابت",
					datafield: "ssoorathesab_babat",
					width: "26.7%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "برداشت",
					datafield: "ssoorathesab_bedehi",
					width: "5%",
					cellsalign: "right",
					align: "center",
					cellsformat: 'n',
					aggregates: ['sum'],
					 aggregatesrenderer: function (aggregates) {
                      var value = aggregates['sum'];
                      var renderstring = '<div style="float: right; margin: 2px; overflow: hidden;">' + value + '</div>';
                      return renderstring;
                  }
				},/* {
					text: "test",
					datafield: "test",
					width: "5%",
					cellsalign: "right",
					align: "center",
					cellsformat: 'n',

				}, {
					text: "testd",
					datafield: "testd",
					width: "5%",
					cellsalign: "right",
					align: "center",
					cellsformat: 'n',

				}, */{
					text: "واریز",
					datafield: "ssoorathesab_variz",
					width: "5%",
					cellsalign: "right",
					align: "center",
					cellsformat: 'n',
					aggregates: ['sum'],
					 aggregatesrenderer: function (aggregates) {
                      var value = aggregates['sum'];
                      var renderstring = '<div style="float: right; margin: 2px; overflow: hidden;">' + value + '</div>';
                      return renderstring;
                  }
				}, {
					text: "گردش مالی",
					datafield: "ssoorathesab_gardesh",
					width: "6%",
					cellsalign: "right",
					align: "center",
					cellsformat: 'n',
					aggregates: ['sum'],
					 aggregatesrenderer: function (aggregates) {
                      var value = aggregates['sum'];
                      var renderstring = '<div style="float: right; margin: 2px; overflow: hidden;">' + value + '</div>';
                      return renderstring;
                  }

				}, {
					text: "حساب نهایی",
					datafield: "ssoorathesab_nahayi",
					width: "6%",
					cellsalign: "right",
					align: "center",
					cellsformat: 'n',
					aggregates: ['sum'],
					 aggregatesrenderer: function (aggregates) {
                      var value = aggregates['sum'];
                      var renderstring = '<div style="float: right; margin: 2px; overflow: hidden;">' + value + '</div>';
                      return renderstring;
                  }
				}, {
					text: "توضیحات",
					datafield: "ssoorathesab_tozihat",
					width: "6%",
					cellsalign: "right",
					align: "center",
				},

				{
					text: "اقدامات",
					datafield: "ssave_id",
					width: "4%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties) {
						return add_virayesh(columnproperties, value);
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
				},
			]
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
					name: "ssoorathesab_tozihat",
					type: "string"
				}, {
					name: "ssave_id",
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
				},/* {
					name: "test",
					type: "string"
				}, {
					name: "testd",
					type: "string"
				},*/ ],
				id: "SSSidSSS",
				localdata: localdata
			};
			var dataAdapter = new jQuery.jqx.dataAdapter(source);

			//dump(dataAdapter);
			if (getValues.shakhs) {
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
					//groups: ['aashkhas_name_khanevadegi','aashkhas_nam'],
					showstatusbar: true,
					statusbarheight: 20,
					showaggregates: true,
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
					groups: ['aashkhas_name_khanevadegi', 'aashkhas_nam'],
					showstatusbar: true,
					statusbarheight: 20,
					showaggregates: true,

				});
			}





jQuery("#jqxgrid").on('dblclick', function () {
     /*var rowindex = jQuery('#jqxgrid').jqxGrid('getselectedrowindex');
     //alert("Selected Row Index: " + rowindex);
	

var jqxWidget = jQuery('#jqxWidget');
            var offset = jqxWidget.offset();
            jQuery('#window').jqxWindow({
                position: { x: offset.left + 50, y: offset.top + 50 },
                rtl: true,
                resizable: false,
                width: 500,
                height: 400
            });
	
	//_createWindow();*/
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

