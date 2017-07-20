//funciones.js
// Funciones utilizadas en la mayoría de los documentos
// Actualizado: 20/07/06
// bloqueos de teclado
//if (document.event.keyCode == 116) {event.returnValue = false}

//Bloqueador de boton derecho
//document.oncontextmenu = function(){return false}


am = "<----- BookPoint System - Tecla no autorizada ----->";
bV = parseInt(navigator.appVersion)
//alert(navigator.appName)
bNS = navigator.appName == "Netscape"
bIE = navigator.appName == "Microsoft Internet Explorer"
//alert(bNS)
//alert(bIE)
function nrc(e) {
    if (bNS && e.which > 1) {
        // alert(am)
        return false
    } else if (bIE && (event.button > 1)) {
        // alert(am)
        return false;
    }
}

document.onmousedown = nrc;
if (document.layers) window.captureEvents(Event.MOUSEDOWN);
if (bNS && bV < 5) window.onmousedown = nrc;


//MACROMEDIA SWAP IMAGE

function MM_preloadImages() { //v3.0
    var d = document; if (d.images) {
        if (!d.MM_p) d.MM_p = new Array();
        var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
            if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
    }
}

function MM_swapImgRestore() { //v3.0
    var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
}

function MM_findObj(n, d) { //v4.01
    var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
        d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
    }
    if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
    for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
    if (!x && d.getElementById) x = d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
    var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2) ; i += 3)
        if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
}





//funciones de inicio general
document.onkeydown = keyPress;

function keyPress(key) {
    if (window.event.keyCode == 8 && window.event.srcElement.tagName != 'INPUT' && window.event.srcElement.tagName != 'TEXTAREA')
    { alert('En esta página no se admite la tecla BackSpace'); return false; }

}

// layer de ayuda
var ie = document.all ? 1 : 0
var ns = document.layers ? 1 : 0

if (ns) { doc = "document."; sty = "" }
if (ie) { doc = "document.all."; sty = ".style" }

var initialize = 0
var Ex, Ey, topColor, subColor, ContentInfo


if (ie) {
    Ex = "event.x"
    Ey = "event.y"

    topColor = "#F2F2F2"
    subColor = "#FFFFEC"
}

if (ns) {
    Ex = "e.pageX"
    Ey = "e.pageY"
    window.captureEvents(Event.MOUSEMOVE)
    window.onmousemove = overhere

    topColor = "#808080"
    subColor = "#C0C0C0"
}

function MoveToolTip(layerName, FromTop, FromLeft, e) {
    if (ie) { eval(doc + layerName + sty + ".top = " + (eval(FromTop) + document.body.scrollTop)) }
    if (ns) { eval(doc + layerName + sty + ".top = " + eval(FromTop)) }
    eval(doc + layerName + sty + ".left = " + (eval(FromLeft) + 15))
}


function ReplaceContent(layerName) {

    if (ie) { document.all[layerName].innerHTML = ContentInfo }


    if (ns) {

        with (document.layers[layerName].document) {
            open();
            write(ContentInfo);
            close();
        }
    }

}

function Activate() { initialize = 1 }
function deActivate() { initialize = 0 }


function overhere(e) {
    if (initialize) {

        MoveToolTip("ToolTip", Ey, Ex, e)
        eval(doc + "ToolTip" + sty + ".visibility = 'visible'")
    }

    else {
        MoveToolTip("ToolTip", 0, 0)
        eval(doc + "ToolTip" + sty + ".visibility = 'hidden'")
    }

}


function EnterContent(layerName, TTitle, TContent) {

    ContentInfo = '<table border="0" width="150" cellspacing="0" cellpadding="0">' +
    '<tr><td width="100%" bgcolor="#000000">' +

    '<table border="0" width="100%" cellspacing="1" cellpadding="0">' +
    '<tr><td width="100%" bgcolor=' + topColor + '>' +

    '<table border="0" width="90%" cellspacing="0" cellpadding="0" align="center">' +
    '<tr><td width="100%">' +

    '<font class="tooltiptitle">&nbsp;' + TTitle + '</font>' +

    '</td></tr>' +
    '</table>' +

    '</td></tr>' +

    '<tr><td width="100%" bgcolor=' + subColor + '>' +

    '<table border="0" width="90%" cellpadding="0" cellspacing="1" align="center">' +

    '<tr><td width="100%">' +

    '<font class="tooltipcontent">' + TContent + '</font>' +

    '</td></tr>' +
    '</table>' +

    '</td></tr>' +
    '</table>' +

    '</td></tr>' +
    '</table>';


    ReplaceContent(layerName)

}
////////////fin layer help

function MM_openBrWindow(theURL, winName, features) { //v2.0
    window.open(theURL, winName, features);
}

function winBRopen(theURL, Name, popW, popH, scroll, resizable) { // V 1.0
    var winleft = (screen.width - popW) / 2;
    var winUp = (screen.height - popH) / 2;
    winProp = 'width=' + popW + ',height=' + popH + ',left=' + winleft + ',top=' + winUp + ',scrollbars=' + scroll + ',resizable=' + resizable
    Win = window.open(theURL, Name, winProp)
    if (parseInt(navigator.appVersion) >= 4) { Win.window.focus(); }

}

function EsFechaSimple(s) {
    var Tentativa = new Date(s.value);
    if (isNaN(Tentativa) && s.value != '') { alert('Por favor ingrese una fecha con formato dd/mm/aa o dd/mm/aaaa'); s.select(); return false; }
    else { return true; }
}

function EsFecha(field) {
    var checkstr = "0123456789";
    var DateField = field;
    var Datevalue = "";
    var DateTemp = "";
    var seperator = "-";
    var day;
    var month;
    var year;
    var leap = 0;
    var err = 0;
    var i;
    err = 0;
    DateValue = DateField.value;
    /* Delete all chars except 0..9 */
    for (i = 0; i < DateValue.length; i++) {
        if (checkstr.indexOf(DateValue.substr(i, 1)) >= 0) {
            DateTemp = DateTemp + DateValue.substr(i, 1);
        }
    }
    DateValue = DateTemp;
    /* Always change date to 8 digits - string*/
    /* if year is entered as 2-digit / always assume 20xx */
    if (DateValue.length == 6) {
        if (DateValue.substr(4, 2) < 20) {
            DateValue = DateValue.substr(0, 4) + '20' + DateValue.substr(4, 2);
        }
        else {
            DateValue = DateValue.substr(0, 4) + '19' + DateValue.substr(4, 2);
        }
    }
    if (DateValue.length != 8) {
        err = 19;
    }
    /* year is wrong if year = 0000 */
    year = DateValue.substr(4, 4);
    if (year == 0) {
        err = 20;
    }
    /* Validation of month*/
    month = DateValue.substr(2, 2);
    if ((month < 1) || (month > 12)) {
        err = 21;
    }
    /* Validation of day*/
    day = DateValue.substr(0, 2);
    if (day < 1) {
        err = 22;
    }
    /* Validation leap-year / february / day */
    if ((year % 4 == 0) || (year % 100 == 0) || (year % 400 == 0)) {
        leap = 1;
    }
    if ((month == 2) && (leap == 1) && (day > 29)) {
        err = 23;
    }
    if ((month == 2) && (leap != 1) && (day > 28)) {
        err = 24;
    }
    /* Validation of other months */
    if ((day > 31) && ((month == "01") || (month == "03") || (month == "05") || (month == "07") || (month == "08") || (month == "10") || (month == "12"))) {
        err = 25;
    }
    if ((day > 30) && ((month == "04") || (month == "06") || (month == "09") || (month == "11"))) {
        err = 26;
    }
    /* if 00 ist entered, no error, deleting the entry */
    if ((day == 0) && (month == 0) && (year == 00)) {
        err = 0; day = ""; month = ""; year = ""; seperator = "";
    }
    /* if no error, write the completed date to Input-Field (e.g. 13.12.2001) */
    if (err == 0) {
        DateField.value = day + seperator + month + seperator + year;
    }
        /* Error-message if err != 0 */
    else {
        alert("Fecha incorrecta!\nPor favor ingrese fecha en formato dd/mm/aa o dd/mm/aaaa.");
        DateField.select();
        DateField.focus();
        return false;
    }
}


function numerico() {
    var key
    var isNS4 = (navigator.appName == "Netscape") ? 1 : 0;
    //alert(isNS4)	
    if (!isNS4) {
        key = event.keyCode
        //alert('NO es isNS4')
        if ((key < 48 || key > 57) && key != 8 && key != 9 && (key < 96 || key > 105)) event.returnValue = false;
    }
    else {
        //alert('SI es isNS4')
        if (event.button < 45 || event.button > 57) return false;
    }



}


function esInteger(e) {
    var charCode
    if (navigator.appName == "Netscape") // Veo si es Netscape o Explorer (mas adelante lo explicamos)
    {
        charCode = e.which // leo la tecla que ingreso

        status = charCode
        if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 8 && charCode != 9) { // Chequeamos que sea un numero comparandolo con los valores ASCII
            //alert("Esto no es un Numero !!")
            return false
        }
        return true
    }
    else {
        charCode = e.keyCode // leo la tecla que ingreso
        status = charCode
        if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 8 && charCode != 9) { // Chequeamos que sea un numero comparandolo con los valores ASCII
            //alert("Esto no es un Numero !!")
            return false
        }
        return true

    }
}

function esDv(e) {
    var charCode
    if (navigator.appName == "Netscape") // Veo si es Netscape o Explorer (mas adelante lo explicamos)
    {
        charCode = e.which // leo la tecla que ingreso

        status = charCode
        if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 8 && charCode != 9 && charCode != 107) { // Chequeamos que sea un numero comparandolo con los valores ASCII
            //alert("Esto no es un Numero !!")
            return false
        }
        return true
    }
    else {
        charCode = e.keyCode // leo la tecla que ingreso
        status = charCode
        if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 8 && charCode != 9 && charCode != 107) { // Chequeamos que sea un numero comparandolo con los valores ASCII
            //alert("Esto no es un Numero !!")
            return false
        }
        return true

    }
}


function numericoypunto() {
    var key
    var e
    key = (document.all) ? event.keyCode : e.which;
    //alert(key);
    if ((key < 48 || key > 57) && key != 46 && key != 8 && key != 190 && key != 9 && (key < 96 || key > 105)) event.returnValue = false;
}

function numericoycoma() {
    var key
    var e
    key = (document.all) ? event.keyCode : e.which;
    //alert(key);
    if ((key < 48 || key > 57) && key != 46 && key != 8 && key != 188 && key != 9 && (key < 96 || key > 105)) event.returnValue = false;
}

function onKeyPressBlockNumbers(e) {
    var key = window.event ? e.keyCode : e.which;
    var keychar = String.fromCharCode(key);
    reg = /\d/;
    return !reg.test(keychar);
}



// CAMBIA A TEXTO CAPITAL
function changeCase(frmObj) {
    var index;
    var tmpStr;
    var tmpChar;
    var preString;
    var postString;
    var strlen;
    tmpStr = frmObj.value.toLowerCase();
    strLen = tmpStr.length;
    if (strLen > 0) {
        //alert (tmpStr)
        for (index = 0; index < strLen; index++) {
            if (index == 0) {
                tmpChar = tmpStr.substring(0, 1).toUpperCase();
                //alert(tmpChar);
                postString = tmpStr.substring(1, strLen);
                tmpStr = tmpChar + postString;
            }
            else {
                tmpChar = tmpStr.substring(index, index + 1);
                if (tmpChar == " " && index < (strLen - 1)) {
                    tmpChar = tmpStr.substring(index + 1, index + 2).toUpperCase();
                    preString = tmpStr.substring(0, index + 1);
                    postString = tmpStr.substring(index + 2, strLen);
                    tmpStr = preString + tmpChar + postString;
                }
            }
        }
    }
    frmObj.value = tmpStr;
}
//******************************************
// Lleva texto a mayúscula
function mayuscula(frm) {
    frm.value = frm.value.toUpperCase();
}

function minuscula(frm) {
    frm.value = frm.toLowerCase();
}
//***********************************************************
//agrega puntos a un numero
function Comma(valor) {
    var number;
    var output;
    output = ''

    number = valor.value;
    number = '' + number;
    //sacamos todas las comas
    for (i = 0 ; i < number.length ; i++) {
        temp = number.substring(i, i + 1)
        if (temp != ',') { output += temp; }
    }
    //volvemos a agregar comas
    number = output
    if (number.length > 3) {
        var mod = number.length % 3;
        var output = (mod > 0 ? (number.substring(0, mod)) : '');
        for (i = 0 ; i < Math.floor(number.length / 3) ; i++) {
            if ((mod == 0) && (i == 0))
                output += number.substring(mod + 3 * i, mod + 3 * i + 3);
            else
                output += '.' + number.substring(mod + 3 * i, mod + 3 * i + 3);
        }
        //return (output);
        valor.value = output
    }
    else
        //return number;
        valor.value = number;
}
//***********************************************************
//agrega puntos a un numero
function Comma2(valor) {
    var number;
    var output;
    output = ''

    number = valor;
    number = '' + number;
    //sacamos todas las comas
    for (i = 0 ; i < number.length ; i++) {
        temp = number.substring(i, i + 1)
        if (temp != '.') { output += temp; }
    }
    //volvemos a agregar comas
    number = output
    if (number.length > 3) {
        var mod = number.length % 3;
        var output = (mod > 0 ? (number.substring(0, mod)) : '');
        for (i = 0 ; i < Math.floor(number.length / 3) ; i++) {
            if ((mod == 0) && (i == 0))
                output += number.substring(mod + 3 * i, mod + 3 * i + 3);
            else
                output += '.' + number.substring(mod + 3 * i, mod + 3 * i + 3);
        }
        return (output);
        //valor.value = output
    }
    else
        return number;
    //valor.value = number;
}

//***********************************************************
//saca las comas de un número
function SacaPuntos(valor) {
    var number;
    var output;
    var temp;
    number = valor.value;
    output = ''
    for (i = 0 ; i < number.length ; i++) {
        temp = number.substring(i, i + 1)
        if (temp != '.') { output += temp; }
    }
    //alert (output);
    //output = output +''
    valor.value = output
    valor.focus();
    //
}

//***********************************************************
//saca las comas de un número
function SacaPuntos2(valor) {
    var number;
    var output;
    var temp;
    number = valor;
    output = ''
    for (i = 0 ; i < number.length ; i++) {
        temp = number.substring(i, i + 1)
        if (temp != '.') { output += temp; }
    }
    //alert (output);
    //output = output +''
    return output
}

function round(number, X) {
    // rounds number to X decimal places, defaults to 2
    //X = (!X ? 0 : X);
    return Math.round(number * Math.pow(10, X)) / Math.pow(10, X);
}
function Anulador(valor, alt) {
    if (valor == '') { return alt }
    else { return valor }
}
//***********************************************************
//valida email

function emailCheck(emailStr) {
    if (emailStr == '') { return true; }
    var emailPat = /^(.+)@(.+)$/
    var specialChars = "\\(\\)<>@,;:\\\\\\\"\\.\\[\\]"
    var validChars = "\[^\\s" + specialChars + "\]"
    var quotedUser = "(\"[^\"]*\")"
    var ipDomainPat = /^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/
    var atom = validChars + '+'
    var word = "(" + atom + "|" + quotedUser + ")"
    var userPat = new RegExp("^" + word + "(\\." + word + ")*$")
    var domainPat = new RegExp("^" + atom + "(\\." + atom + ")*$")
    var matchArray = emailStr.match(emailPat)
    if (matchArray == null) {
        alert("Dirección de correo inválida (chequee @ y .'s)")
        return false
    }
    var user = matchArray[1]
    var domain = matchArray[2]


    if (user.match(userPat) == null) {

        alert("El username no se ve válido.")
        return false
    }

    var IPArray = domain.match(ipDomainPat)
    if (IPArray != null) {

        for (var i = 1; i <= 4; i++) {
            if (IPArray[i] > 255) {
                alert("Destination IP address is invalid!")
                return false
            }
        }
        return true
    }


    var domainArray = domain.match(domainPat)
    if (domainArray == null) {
        alert("El nombre del dominio no es válido.")
        return false
    }


    var atomPat = new RegExp(atom, "g")
    var domArr = domain.match(atomPat)
    var len = domArr.length
    if (domArr[domArr.length - 1].length < 2 ||
        domArr[domArr.length - 1].length > 3) {

        alert("El correo debe terminar con las tres letras del dominio o las dos letras del país.")
        return false
    }


    if (len < 2) {
        var errStr = "Esta dirección perdió su hostname!"
        alert(errStr)
        return false
    }
    return true;
}

function showBlank(field, obj) {
    msg = "Se ha omitido un campo requerido.\n" + field + " se dejó en blanco.\n";
    alert(msg);
    obj.focus();
}

function showError(showmsg, obj) {
    alert(showmsg);
    obj.focus();
}

function focusLanguage(obj) {
    obj.style.backgroundColor = "#eeeeee"
}

function blurLanguage(obj) {
    obj.style.backgroundColor = ""
}


function filaSelected(obj) {
    document.getElementById(obj).style.backgroundColor = "#FFFF66"
}

function filaUnselected(obj) {
    document.getElementById(obj).style.backgroundColor = ""
}


// inicio descripcion en layer
function setupDescriptions() {
    var x = navigator.appVersion;
    y = x.substring(0, 4);
    if (y >= 4) setVariables();
}
var x, y, a, b;
function setVariables() {
    if (navigator.appName == "Netscape") {
        h = ".left=";
        v = ".top=";
        dS = "document.";
        sD = "";
    }
    else {
        h = ".pixelLeft=";
        v = ".pixelTop=";
        dS = "";
        sD = ".style";
    }
}
var isNav = (navigator.appName.indexOf("Netscape") != -1);
function popLayer(a, detalle) {
    desc = "<table width=250 cellpadding=2 border=0 class='tabla'><tr><td><b>" + a + "</b></td></tr><td>";
    desc += detalle;
    desc += "</td></tr></table>";

    if (isNav) {
        document.object1.document.write(desc);
        document.object1.document.close();
        document.object1.left = x + 5;
        document.object1.top = y;
    }
    else {
        object1.innerHTML = desc;
        eval(dS + "object1" + sD + h + (x + 5));
        eval(dS + "object1" + sD + v + y);
    }
}
function hideLayer(a) {
    if (isNav) {
        eval(document.object1.top = a);
    }
    else object1.innerHTML = "";
}
function handlerMM(e) {
    x = (isNav) ? e.pageX : event.clientX;
    y = (isNav) ? e.pageY : event.clientY;
}
if (isNav) {
    document.captureEvents(Event.MOUSEMOVE);
}
document.onmousemove = handlerMM;
// fin funcion descripcion en layer


//deshabilita botones de form cuando hace submit
function disableForm(form1) {
    if (document.all || document.getElementById) {
        for (i = 0; i < form1.length; i++) {
            var tempobj = form1.elements[i];
            if (tempobj.type.toLowerCase() == "submit" || tempobj.type.toLowerCase() == "reset" || tempobj.type.toLowerCase() == "button" || tempobj.type.toLowerCase() == "image")
                //tempobj.disabled = true;
                tempobj.style.visibility = "hidden";
        }
        return true;
    }
}

function confirma(txt) {
    if (!confirm(txt) == true) { return false };
    return true;
}

//Función para calendario
function calendar_open(campo) {
    var newWindow;
    var urlstring = 'Calendar/Calendar.asp?campo=' + campo
    //newWindow = window.open(urlstring,'','height=200,width=270,toolbar=no,minimize=no,status=no,memubar=no,location=no,scrollbars=no')

    newWindow = winBRopen(urlstring, '', '260', '200', 'no', 'no')
}

function formatCurrency(num) {
    num = num.toString().replace(/\$|\,/g, '');
    if (isNaN(num))
        num = "<%= xdecimales %>";
    sign = (num == (num = Math.abs(num)));
    num = Math.floor(num * 100 + 0.50000000001);
    cents = num % 100;
    num = Math.floor(num / 100).toString();
    if (cents < 10)
        cents = "0" + cents;
    for (var i = 0; i < Math.floor((num.length - (1 + i)) / 3) ; i++)
        num = num.substring(0, num.length - (4 * i + 3)) + '.' +
        num.substring(num.length - (4 * i + 3));
    return (((sign) ? '' : '-') + '' + num + ',' + cents);
    //return (((sign)?'':'-') + '' + num);
}

function Comparar_Fecha(Obj1, Obj2) {
    String1 = Obj1;
    String2 = Obj2;
    // Si los dias y los meses llegan con un valor menor que 10 
    // Se concatena un 0 a cada valor dentro del string 
    if (String1.substring(1, 2) == "-") {
        String1 = "0" + String1
    }
    if (String1.substring(4, 5) == "-") {
        String1 = String1.substring(0, 3) + "0" + String1.substring(3, 9)
    }

    if (String2.substring(1, 2) == "-") {
        String2 = "0" + String2
    }
    if (String2.substring(4, 5) == "-") {
        String2 = String2.substring(0, 3) + "0" + String2.substring(3, 9)
    }

    dia1 = String1.substring(0, 2);
    mes1 = String1.substring(3, 5);
    anyo1 = String1.substring(6, 10);
    dia2 = String2.substring(0, 2);
    mes2 = String2.substring(3, 5);
    anyo2 = String2.substring(6, 10);


    if (dia1 == "08") // parseInt("08") == 10 base octogonal
        dia1 = "8";
    if (dia1 == '09') // parseInt("09") == 11 base octogonal
        dia1 = "9";
    if (mes1 == "08") // parseInt("08") == 10 base octogonal
        mes1 = "8";
    if (mes1 == "09") // parseInt("09") == 11 base octogonal
        mes1 = "9";
    if (dia2 == "08") // parseInt("08") == 10 base octogonal
        dia2 = "8";
    if (dia2 == '09') // parseInt("09") == 11 base octogonal
        dia2 = "9";
    if (mes2 == "08") // parseInt("08") == 10 base octogonal
        mes2 = "8";
    if (mes2 == "09") // parseInt("09") == 11 base octogonal
        mes2 = "9";

    dia1 = parseInt(dia1);
    dia2 = parseInt(dia2);
    mes1 = parseInt(mes1);
    mes2 = parseInt(mes2);
    anyo1 = parseInt(anyo1);
    anyo2 = parseInt(anyo2);

    if (anyo1 > anyo2) {
        return false;
    }

    if ((anyo1 == anyo2) && (mes1 > mes2)) {
        return false;
    }
    if ((anyo1 == anyo2) && (mes1 == mes2) && (dia1 > dia2)) {
        return false;
    }

    return true;
}

function EsTexto(e) {
    var val;
    if (typeof e.which != 'undefined') {
        val = e.which;
    }
    else {
        val = e.keyCode;
    }
    //alert(val);
    switch (val) {
        case 0:  //navigation keys in Mozilla
        case 8:  //backspace
        case 13: //enter
        case 32: //espacio
        case 45: //- (guión)			
        case 46: //. (period)
        case 65: //A
        case 66: //B
        case 67: //C
        case 68: //D
        case 69: //E
        case 70: //F
        case 71: //G
        case 72: //H
        case 73: //I
        case 74: //J
        case 75: //K
        case 76: //L
        case 77: //M
        case 78: //N
        case 79: //O
        case 80: //P
        case 81: //Q
        case 82: //R
        case 83: //S
        case 84: //T
        case 85: //U
        case 86: //V
        case 87: //W
        case 88: //X
        case 89: //Y
        case 90: //Z
        case 209: //Ñ
        case 97: //a
        case 98: //b
        case 99: //c
        case 100: //d
        case 101: //e
        case 102: //f
        case 103: //g
        case 104: //h
        case 105: //1
        case 106: //j
        case 107: //k
        case 108: //l
        case 109: //m
        case 110: //n
        case 111: //o
        case 112: //p
        case 113: //q
        case 114: //r
        case 115: //s
        case 116: //t
        case 117: //u
        case 118: //v
        case 119: //w
        case 120: //x
        case 121: //y
        case 122: //z
        case 241: //ñ
        case 192: // À
        case 193: // Á
        case 200: // È
        case 201: // É
        case 204: // Ì
        case 205: // Í
        case 210: // Ò
        case 211: // Ó
        case 217: // Ù
        case 218: // Ú
        case 224: // à
        case 225: // á
        case 232: // è
        case 233: // é
        case 236: // ì
        case 236: // í
        case 242: // ò
        case 243: // ó
        case 249: // ù
        case 250: // ú
        case 246: // ö
        case 228: // ä
        case 252: // ü			

            return true;
        default:
            return false;
    }
}

function NumeroEntero(e) {
    var val;
    if (typeof e.which != 'undefined') {
        val = e.which;
    }
    else {
        val = e.keyCode;
    }
    //alert(e.which);
    switch (val) {
        case 0:  //navigation keys in Mozilla
        case 8:  //backspace
        case 13: //enter
        case 48: //0
        case 49: //1
        case 50: //2
        case 51: //3
        case 52: //4
        case 53: //5
        case 54: //6
        case 55: //7
        case 56: //8
        case 57: //9
        case 96: //0 teclado lateral
        case 97: //1 teclado lateral
        case 98: //2 teclado lateral
        case 99: //3 teclado lateral
        case 100: //4 teclado lateral
        case 101: //5 teclado lateral
        case 102: //6 teclado lateral
        case 103: //7 teclado lateral
        case 104: //8 teclado lateral         
        case 105: //9 teclado lateral		
            return true;
        default:
            return false;
    }
}

function EsDvRut(e) {
    var val;
    if (typeof e.which != 'undefined') {
        val = e.which;
    }
    else {
        val = e.keyCode;
    }
    // alert(val);
    switch (val) {
        case 0:  //navigation keys in Mozilla
        case 8:  //backspace
        case 9:  //tab
        case 13: //enter
        case 48: //0
        case 49: //1
        case 50: //2
        case 51: //3
        case 52: //4
        case 53: //5
        case 54: //6
        case 55: //7
        case 56: //8
        case 57: //9
        case 75: //K
        case 96: //0 teclado lateral
        case 97: //1 teclado lateral
        case 98: //2 teclado lateral
        case 99: //3 teclado lateral
        case 100: //4 teclado lateral
        case 101: //5 teclado lateral
        case 102: //6 teclado lateral
        case 103: //7 teclado lateral
        case 104: //8 teclado lateral         
        case 105: //9 teclado lateral		


            return true;
        default:
            return false;
    }
}


function NumeroDecimal(e) {
    var val;
    if (typeof e.which != 'undefined') {
        val = e.which;
    }
    else {
        val = e.keyCode;
    }
    //alert(e.which);
    switch (val) {
        case 0:  //navigation keys in Mozilla
        case 8:  //backspace
        case 13: //enter
        case 44: //, (period)
        case 48: //0
        case 49: //1
        case 50: //2
        case 51: //3
        case 52: //4
        case 53: //5
        case 54: //6
        case 55: //7
        case 56: //8
        case 57: //9
        case 96: //0 teclado lateral
        case 97: //1 teclado lateral
        case 98: //2 teclado lateral
        case 99: //3 teclado lateral
        case 100: //4 teclado lateral
        case 101: //5 teclado lateral
        case 102: //6 teclado lateral
        case 103: //7 teclado lateral
        case 104: //8 teclado lateral         
        case 105: //9 teclado lateral		
            return true;
        default:
            return false;
    }
}


// Funciones para Ayuda en Layer
var identificador;
var fechafirmas;
var mie5 = 1;
var noesayuda = 1;
function show_layer(texto) {
    document.getElementById('lay_describe').style.visibility = "visible";
    document.getElementById('lay_describe').style.top = event.clientY + 20;
    document.getElementById('lay_describe').style.left = event.clientX - 10;
    document.getElementById("txt_describe").innerHTML = texto;
}

function hide_layer() {
    document.getElementById('lay_describe').style.visibility = "hidden";
}


function Procesados(val, total) {
    if (total != '') {
        window.defaultStatus = "Registros procesados: " + val + " de " + total
    }
    else {
        window.defaultStatus = "Registros procesados: " + val
    }
}

function CambiaComaPunto(str) {
    var index;
    var tmpStr;
    var strLen;
    var tmpChar;
    var postString = ''
    tmpStr = str;
    //alert(tmpStr)
    strLen = tmpStr.length;
    //alert(strLen)
    for (index = 0; index < strLen; index++) {
        tmpChar = tmpStr.substring(index, index + 1);
        if (tmpChar == ',') { tmpChar = '.' }
        postString = postString + tmpChar;
    }
    return postString;
}

function CambiaPuntoComa(str) {
    var index;
    var tmpStr;
    var strLen;
    var tmpChar;
    var postString2 = ''
    tmpStr = str;
    //alert(tmpStr)
    strLen = tmpStr.length;
    //alert(strLen)
    for (index = 0; index < strLen; index++) {
        tmpChar = tmpStr.substring(index, index + 1);
        if (tmpChar == '.') { tmpChar = ',' }
        postString2 = postString2 + tmpChar;
    }
    return postString2;
}

function round(number, X) {
    // rounds number to X decimal places, defaults to 2
    //X = (!X ? 0 : X);
    return Math.round(number * Math.pow(10, X)) / Math.pow(10, X);
}

function newwindow(mypage, myname, w, h, scroll, parametro) {
    var winl = (screen.width - w) / 2;
    var wint = (screen.height - h) / 2;
    winprops = 'height=' + h + ',width=' + w + ',top=' + wint + ',left=' + winl + ',scrollbars=' + scroll + ',resizable'
    win = window.open(mypage, myname, winprops)
    if (parseInt(navigator.appVersion) >= 4) { win.window.focus(); }
}


