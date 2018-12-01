//var tempurl = location.protocol+"//"+window.location.hostname+"/wp-content/plugins/jqwidget-custom/tempbin/"+tempfile+".js";
//var url = location.protocol + "//" + window.location.hostname + "/wp-content/plugins/jqwidget-custom/json.php";
var tempfile = randomStr(50);
<?php
	require_once( $_SERVER['DOCUMENT_ROOT'] . '/wp-load.php' );
//var url = location.protocol + "//" + window.location.hostname + "/wp-content/plugins/jqwidget-custom/json.php";
echo 'var url = "'.sst_get_option('json_file').'";'."\n";
echo 'var tempurl = "'.sst_get_option('json_url').'tempbin/"';?>+tempfile+<?php echo '".js";';
echo 'var saveFile = "'.sst_get_option('save_file').'";'."\n";
?>

//alert(tempurl);
function randomStr(m) {
	var m = m || 9; s = '', r = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
	for (var i=0; i < m; i++) { s += r.charAt(Math.floor(Math.random()*r.length)); }
	return s;
}
function deleteTempFile(file_name)
{
	var urltodo = "<?php echo sst_get_option('json_url'); ?>delete-temp-file.php";
        jQuery.get(urltodo,
         {'file' : file_name }
        ).done(function(data) {
			console.log('temporary file deleted');
		});
}
var getValues = getSearchParameters();



/**
 * Does a PHP var_dump'ish behavior.  It only dumps one variable per call.  The
 * first parameter is the variable, and the second parameter is an optional
 * name.  This can be the variable name [makes it easier to distinguish between
 * numerious calls to this function], but any string value can be passed.
 * 
 * @param mixed var_value - the variable to be dumped
 * @param string var_name - ideally the name of the variable, which will be used 
 *       to label the dump.  If this argumment is omitted, then the dump will
 *       display without a label.
 * @param boolean - annonymous third parameter. 
 *       On TRUE publishes the result to the DOM document body.
 *       On FALSE a string is returned.
 *       Default is TRUE.
 * @returns string|inserts Dom Object in the BODY element.
 */
function var_dump (var_value, var_name)
{
    // Check for a third argument and if one exists, capture it's value, else
    // default to TRUE.  When the third argument is true, this function
    // publishes the result to the document body, else, it outputs a string.
    // The third argument is intend for use by recursive calls within this
    // function, but there is no reason why it couldn't be used in other ways.
    var is_publish_to_body = typeof arguments[2] === 'undefined' ? true:arguments[2];

    // Check for a fourth argument and if one exists, add three to it and
    // use it to indent the out block by that many characters.  This argument is
    // not intended to be used by any other than the recursive call.
    var indent_by = typeof arguments[3] === 'undefined' ? 0:arguments[3]+3;

    var do_boolean = function (v)
    {
        return 'Boolean(1) '+(v?'TRUE':'FALSE');
    };

    var do_number = function(v)
    {
        var num_digits = (''+v).length;
        return 'Number('+num_digits+') '+v;
    };

    var do_string = function(v)
    {
        var num_chars = v.length;
        return 'String('+num_chars+') "'+v+'"';
    };

    var do_object = function(v)
    {
        if (v === null)
        {
            return "NULL(0)";
        }

        var out = '';
        var num_elem = 0;
        var indent = '';

        if (v instanceof Array)
        {
            num_elem = v.length;
            for (var d=0; d<indent_by; ++d)
            {
                indent += ' ';
            }
            out = "Array("+num_elem+") \n"+(indent.length === 0?'':'|'+indent+'')+"(";
            for (var i=0; i<num_elem; ++i)
            {
                out += "\n"+(indent.length === 0?'':'|'+indent)+"|   ["+i+"] = "+var_dump(v[i],'',false,indent_by);
            }
            out += "\n"+(indent.length === 0?'':'|'+indent+'')+")";
            return out;
        }
        else if (v instanceof Object)
        {
            for (var d=0; d<indent_by; ++d)
            {
                indent += ' ';
            }
            out = "Object \n"+(indent.length === 0?'':'|'+indent+'')+"(";
            for (var p in v)
            {
                out += "\n"+(indent.length === 0?'':'|'+indent)+"|   ["+p+"] = "+var_dump(v[p],'',false,indent_by);
            }
            out += "\n"+(indent.length === 0?'':'|'+indent+'')+")";
            return out;
        }
        else
        {
            return 'Unknown Object Type!';
        }
    };

    // Makes it easier, later on, to switch behaviors based on existance or
    // absence of a var_name parameter.  By converting 'undefined' to 'empty 
    // string', the length greater than zero test can be applied in all cases.
    var_name = typeof var_name === 'undefined' ? '':var_name;
    var out = '';
    var v_name = '';
    switch (typeof var_value)
    {
        case "boolean":
            v_name = var_name.length > 0 ? var_name + ' = ':''; // Turns labeling on if var_name present, else no label
            out += v_name + do_boolean(var_value);
            break;
        case "number":
            v_name = var_name.length > 0 ? var_name + ' = ':'';
            out += v_name + do_number(var_value);
            break;
        case "string":
            v_name = var_name.length > 0 ? var_name + ' = ':'';
            out += v_name + do_string(var_value);
            break;
        case "object":
            v_name = var_name.length > 0 ? var_name + ' => ':'';
            out += v_name + do_object(var_value);
            break;
        case "function":
            v_name = var_name.length > 0 ? var_name + ' = ':'';
            out += v_name + "Function";
            break;
        case "undefined":
            v_name = var_name.length > 0 ? var_name + ' = ':'';
            out += v_name + "Undefined";
            break;
        default:
            out += v_name + ' is unknown type!';
    }

    // Using indent_by to filter out recursive calls, so this only happens on the 
    // primary call [i.e. at the end of the algorithm]
    if (is_publish_to_body  &&  indent_by === 0)
    {
        var div_dump = document.getElementById('div_dump');
        if (!div_dump)
        {
            div_dump = document.createElement('div');
            div_dump.id = 'div_dump';

            var style_dump = document.getElementsByTagName("style")[0];
            if (!style_dump)
            {
                var head = document.getElementsByTagName("head")[0];
                style_dump = document.createElement("style");
                head.appendChild(style_dump);
            }
            // Thank you Tim Down [http://stackoverflow.com/users/96100/tim-down] 
            // for the following addRule function
            var addRule;
            if (typeof document.styleSheets != "undefined" && document.styleSheets) {
                addRule = function(selector, rule) {
                    var styleSheets = document.styleSheets, styleSheet;
                    if (styleSheets && styleSheets.length) {
                        styleSheet = styleSheets[styleSheets.length - 1];
                        if (styleSheet.addRule) {
                            styleSheet.addRule(selector, rule)
                        } else if (typeof styleSheet.cssText == "string") {
                            styleSheet.cssText = selector + " {" + rule + "}";
                        } else if (styleSheet.insertRule && styleSheet.cssRules) {
                            styleSheet.insertRule(selector + " {" + rule + "}", styleSheet.cssRules.length);
                        }
                    }
                };
            } else {
                addRule = function(selector, rule, el, doc) {
                    el.appendChild(doc.createTextNode(selector + " {" + rule + "}"));
                };
            }

            // Ensure the dump text will be visible under all conditions [i.e. always
            // black text against a white background].
            addRule('#div_dump', 'background-color:white', style_dump, document);
            addRule('#div_dump', 'color:black', style_dump, document);
            addRule('#div_dump', 'padding:15px', style_dump, document);

            style_dump = null;
        }

        var pre_dump = document.getElementById('pre_dump');
        if (!pre_dump)
        {
            pre_dump = document.createElement('pre');
            pre_dump.id = 'pre_dump';
            pre_dump.innerHTML = out+"\n";
            div_dump.appendChild(pre_dump);
            document.body.appendChild(div_dump);
        }  
        else
        {
            pre_dump.innerHTML += out+"\n";
        }
    }
    else
    {
        return out;
    }
}
/************************************/
function return_not_null(myvar){
	if(myvar!=null){
		return myvar;
	}else{
		return '';
	}
}

function getSearchParameters() {
      var prmstr = window.location.search.substr(1);
      return prmstr != null && prmstr != "" ? transformToAssocArray(prmstr) : {};
}
function transformToAssocArray( prmstr ) {
    var params = {};
    var prmarr = prmstr.split("&");
    for ( var i = 0; i < prmarr.length; i++) {
        var tmparr = prmarr[i].split("=");
        params[tmparr[0]] = tmparr[1];
    }
    return params;
}
function delete_confirm(list,save_id){
	var con = confirm("آیا مطمئن هستید که می خواهید این اطلاعات را حذف کنید؟");
	if(con){
		window.location.href = location.protocol+"//"+window.location.hostname+"/?list="+list+"&delete-record="+save_id;
	}
}
function add_another(form){
	window.location.href = location.protocol+"//"+window.location.hostname+"/فرمها/?form="+form;
}
function add_virayesh(columnproperties,value,custom_text){
	  custom_text = typeof custom_text !== 'undefined' ? custom_text : 'ویرایش';

	var getValues = getSearchParameters();
	if(getValues.noedit==1){
		return '';
	}else{
		return "<div class='jqx-grid-cell-"+columnproperties['cellsalign']+"-align' style='margin-top:4px;'><a href='"+location.protocol+"//"+window.location.hostname+"/فرمها/?mode=edit&record_id="+value+"'>"+custom_text+"</a></div>";
	}
}
function add_link_tolist(columnproperties,uri,id,value){
	return "<div class='jqx-grid-cell-"+columnproperties['cellsalign']+"-align' style='margin-top:4px;'><a href='"+location.protocol+"//"+window.location.hostname+"/لیست-ها/?"+uri+id+"'>"+value+"</a></div>";			
}
	
function add_toolbar(form,title){
	var getValues = getSearchParameters();
	if(getValues.noedit==1){
		var add ="";
	}else{
		var add = "<a href='#' target='_blank' onclick='add_another("+form+");return false;'> افزودن </a>";
	}
	 var gridTitle = "<div style='width: 100%; height: 100%; text-align: center; margin-top:4px; font-size:24px;'>"+add+"     <span>"+title+"</span></div>";

	return gridTitle;
			
}

		var localizationobj = {
			"/":"/",
			":":":",
			firstDay:7,
			days:{
				names:["یکشنبه","دوشنبه","سه شنبه","چهارشنبه","پنجشنبه","جمعه","شنبه"],
				namesAbbr:["یکشنبه","دوشنبه","سه شنبه","چهارشنبه","پنجشنبه","جمعه","شنبه"],
				namesShort:["یکشنبه","دوشنبه","سه شنبه","چهارشنبه","پنجشنبه","جمعه","شنبه"]
		},
		months:{
			names:["January","February","March","April","May","June","July","August","September","October","November","December",""],
			namesAbbr:["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec",""]
		},
		AM:["ق.ط","ق.ط","ق.ط"],
		PM:["ب.ظ","ب.ظ","ب.ظ"],
		eras:[{name:"A.D.",start:null,offset:0}],
		twoDigitYearMax:2029,
		patterns:{d:"M/d/yyyy",D:"dddd, MMMM dd, yyyy",t:"h:mm tt",T:"h:mm:ss tt",f:"dddd, MMMM dd, yyyy h:mm tt",F:"dddd, MMMM dd, yyyy h:mm:ss tt",M:"MMMM dd",Y:"yyyy MMMM",S:"yyyyu0027-u0027MMu0027-u0027ddu0027Tu0027HHu0027:u0027mmu0027:u0027ss",ISO:"yyyy-MM-dd hh:mm:ss",ISO2:"yyyy-MM-dd HH:mm:ss",d1:"dd.MM.yyyy",d2:"dd-MM-yyyy",d3:"dd-MMMM-yyyy",d4:"dd-MM-yy",d5:"H:mm",d6:"HH:mm",d7:"HH:mm tt",d8:"dd/MMMM/yyyy",d9:"MMMM-dd",d10:"MM-dd",d11:"MM-dd-yyyy"},
		percentsymbol:"%",
		currencysymbol:"تومان",
		currencysymbolposition:" after",
		decimalseparator:".",
		thousandsseparator:",",
		pagergotopagestring:":برو به صفحه",
		pagershowrowsstring:":تعداد نمایش ردیف ها",
		pagerrangestring:" از ",
		pagerpreviousbuttonstring:"قبلی",
		pagernextbuttonstring:"بعدی",
		pagerfirstbuttonstring:"اولین",
		pagerlastbuttonstring:"آخرین",
		groupsheaderstring:".ستون مورد نظر را برای گروه بندی بر مبنای آن را به اینجا بکشید",
		sortascendingstring:"مرتب سازی از زیاد به کم",
		sortdescendingstring:"مرتب سازی از کم به زیاد",
		sortremovestring:"حذف مرتب سازی",
		groupbystring:"گروه بندی بر مبنای این ستون",
		groupremovestring:"حذف گروه بندی بر منبای این ستون",
		filterclearstring:"حذف فلیتر",
		filterstring:"فیلتر",
		filtershowrowstring:":نمایش ردیف هایی که",
		filterorconditionstring:"یا",
		filterandconditionstring:"و",
		filterselectallstring:"(انتخاب همه)",
		filterchoosestring:":لطفاً انتخاب کنید",

		filterstringcomparisonoperators:["خالی","پر","دارای","دارای - حساس به حروف","فاقد","فاقد - حساس به حروف","شروع با","شروع با - حساس به حروف","پایان با","پایان با - حساس به حروف","برابر","برابر - حساس به حروف","فاقد مقدار","دارای مقدار"],
		filternumericcomparisonoperators:["برابر","نا برابر","کمتر از","کمتر یا برابر","بیشتر","بیشتر یا برابر","فاقد مقدار","دارای مقدار"],
		filterdatecomparisonoperators:["برابر","نا برابر","کمتر از","کمتر یا برابر","بیشتر","بیشتر یا برابر","فاقد مقدار","دارای مقدار"],
		filterbooleancomparisonoperators:["برابر","نا برابر"],
		validationstring:".مقدار وارد شده معتبر نمی باشد",
		emptydatastring:".اطلاعاتی برای نمایش وجود ندارد",
		filterselectstring:"انتخاب فیلتر",
		loadtext:"...در حال بار گیری",
		clearstring:"حذف فلیتر",
		todaystring:"امروز"
	};
