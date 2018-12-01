jQuery(document).ready(function ($) {
	var getValues = getSearchParameters();
	var form = 1;
	var title = "لیست کد اشخاص";
	document.title = title;
	var list = "ashkhas_code";
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
					width: "5%",
					cellsalign: "center",
					align: "center",
				}, {
					text: "نام خانوادگی",
					datafield: "aashkhas_name_khanevadegi",
					width: "20%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=soorathesab&shakhs=', rowdata.aid, value);
					}
				},

				{
					text: "نام",
					datafield: "aashkhas_nam",
					width: "13%",
					cellsalign: "right",
					align: "center",
					cellsrenderer: function (row, columnfield, value, defaulthtml, columnproperties, rowdata) {
						return add_link_tolist(columnproperties, 'list=gharardad&shakhs=', rowdata.aid, value);
					}
				}, {
					text: "کد ملی",
					datafield: "aashkhas_kode_meli",
					width: "18%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "معرف ن خ",
					datafield: "moaref_name_khanevadegi",
					width: "20%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "معرف نام",
					datafield: "moaref_nam",
					width: "18%",
					cellsalign: "right",
					align: "center",
				}, {
					text: "اقدامات",
					datafield: "asave_id",
					width: "5.9%",
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
					name: "aid",
					type: "number"
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
					name: "moaref_name_khanevadegi",
					type: "string"
				}, {
					name: "moaref_nam",
					type: "string"
				}, {
					name: "asave_id",
					type: "string"
				} ],
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
			
		}).then(function(){
			jQuery("#loading").hide();
		});
	});
});

