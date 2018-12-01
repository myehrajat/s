$(document).ready(function ($) {
            //var url = "http://www.ehrajat.ir/json.php";
            var url = "http://localhost/json.php?tbl=ashkhas";
            //var url = "http://localhost/wp-content/plugins/jqwidget/demos/sampledata/beverages.txt";
            //var url = "http://localhost/wp-content/plugins/jqwidget/demos/sampledata/t.txt";

            // prepare the data
            var source =
            {
                datatype: "json",
                datafields: [
                    { name: 'id_no', type: 'string' },
                    { name: 'nam', type: 'string' },
                    { name: 'name_khanevadegi', type: 'string' },//type: 'int'
                    { name: 'kode_meli', type: 'string' },
                    { name: 'rabete', type: 'string' },
                    { name: 'tozihat', type: 'string' }
                ],
                id: 'id',
                url: url
            };
			
            var dataAdapter = new $.jqx.dataAdapter(source);
			// create jqxgrid.
            $("#jqxgrid").jqxGrid(
            {
				theme: 'energyblue',
                width: 600,
                height: 450,
                source: dataAdapter,
			    sortable: true,
				filterable: true,
				showfilterrow: true,
				groupable: true,
   				//groups: ['type'],
				altrows: true,
				pageable: true,
				columnsresize: true,
                rtl: true,
                columns: [
                  { text: 'شماره',  datafield: 'id_no'/*, width: 250*/, align: 'center', cellsalign: 'right' },
                  { text: 'نام', datafield: 'nam'/*, width: 100*/, align: 'right',  cellsalign: 'right'},
                  { text: 'نام خانوادگی', datafield: 'name_khanevadegi'/*, width: 80*/, align: 'right', cellsalign: 'right' },
                  { text: 'کد ملی', datafield: 'kode_meli', align: 'left'/*,  width: 350*/, cellsalign: 'right' },
                  { text: 'رابطه', datafield: 'rabete'/*, width: 100*/, align: 'right',  cellsalign: 'right' },
                  { text: 'توضیحات', datafield: 'tozihat'/*, width: 100*/, align: 'right',  cellsalign: 'right' }
                ]
            });
        });

                        