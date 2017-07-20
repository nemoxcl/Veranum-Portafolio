var f=false;
var t=true;
var whitespace = " \t\n\r";
var decimalPointDelimiter = ","

function checkLoginAfiliado(){
  var form1 = document.getElementById('login');
  var rutFull = document.getElementById('rut_completo').value; 
  var OrutFull = document.getElementById('rut_completo')
  var pass = document.getElementById('clave_sat').value;  
  var rut = document.getElementById('rut').value; 
  var dig = document.getElementById('digito_verificador').value; 

	if (rutFull==''){alert('Ingrese su Rut');	return f;}
  if (!checkRut2(OrutFull,'Rut de usuario invalido',t)){return f;}
	if (pass==''){alert('Ingrese clave de usuario');return f;}
  if (!isInteger(pass)){alert('La clave debe ser numerica');return f;}
	if (pass.length != 4){alert('La clave debe ser de 4 digitos');return f;}

	rut  = rutFull.substr(0,rutFull.indexOf("."));
	rutFull = rutFull.substr(rutFull.indexOf(".")+1,rutFull.length);
	rut += rutFull.substr(0,rutFull.indexOf("."));
	rutFull = rutFull.substr(rutFull.indexOf(".")+1,rutFull.length);	
	rut += rutFull.substr(0,rutFull.indexOf("-"));
  dig = rutFull.substr(rutFull.indexOf("-")+1,rutFull.length);

	form1.submit();
}

function checkLoginEmpresa(){
	var form1 = document.getElementById('form_Empresa');
  var rutFullEmp = document.getElementById('rut_empleador'); 
  var rutFullUsu = document.getElementById('rut_usuario'); 
  var pass = document.getElementById('clave').value;  
  
	if (rutFullEmp.value==''){alert('Ingrese su Rut Empresa');return f;}
  if (!checkRut2(rutFullEmp,'Rut de usuario invalido Empresa',t)){return f;}
	if (rutFullUsu.value==''){alert('Ingrese su Rut Representa');return f;}
  if (!checkRut2(rutFullUsu,'Rut de usuario invalido Representante',t)){return f;}
	if (pass==''){alert('Ingrese clave de usuario');return f;}
  if (!isInteger(pass)){alert('La clave debe ser numerica');return f;}
  if (pass.length != 4){alert('La clave debe ser de 4 digitos');return f;}

	form1.submit();
}

function formatRut10Digits(rutDigits,checkDigit){
	var tmpStr;

	tmpStr = Trim(rutDigits);
	newRut = getNChars(9 - tmpStr.length,"0") + tmpStr + checkDigit;
	
	return newRut;
}

function formatRut(rut){
	var rutDigits,checkDigit,rutValue,newRut;
	
	rutValue = Trim(rut)
	if (rutValue.length!=10){	return "###.###.###-#";}
	rutDigits = rutValue.substr(0,rutValue.length-1);
	checkDigit = rutValue.substr(rutValue.length-1,1);
	newRut = rutDigits.substr(0,3)+".";
	newRut = newRut + rutDigits.substr(3,3)+".";
	newRut = newRut + rutDigits.substr(6,3);
	while (newRut.substr(0,1) == "0" || newRut.substr(0,1) == "."){
	   newRut = newRut.substr(1,newRut.length);
	}

	return newRut+"-"+checkDigit;
}

function digito(rut) {
	var i,total,cnt,div, resto,c,digver;

	total = 0;
	cnt = 2;
	for (i = rut.length - 1; i >= 0; i--) {
		c = rut.charAt(i);
		if (c < "0" || "9" < c)	return "";
		total += parseInt(c, 10) * cnt;
		cnt++;
		if (cnt == 8){
			cnt = 2;
		}
	}
	div = Math.round(total / 11 - 0.5);
	resto = total - div * 11;
	if ((11 - resto) == 10){
		digver = "K";
	}else if ((11 - resto) == 11){
		digver = "0";
	}else{
		digver = (11 - resto) + "";
	}

	return digver;
}

function doError(theField,doingSubmit,errorMessage){
	if ( (doingSubmit) && (theField.value != "") ){
		alert(errorMessage)
		theField.value = "";
		theField.focus();
	}

	return f;
}

function removeChar(s,ch){
	var i,c,newStr;

	newStr = "";
	for (i = 0; i < s.length; i++){
		var c = s.charAt(i);
		if (c != ch){
			newStr = newStr + c
		}
	}
	
	return newStr;
}

function checkRut2(rutFull,errorMessage,doingSubmit){
	var rutField,rutDigits,checkDigit,rutValue,minusChar
	rutField = eval(rutFull);
	if (typeof(rutField) == "undefined"){alert("Campo no existe en form");return f;}
	rutValue = rutField.value;
	rutDigits = rutValue.substr(0,rutValue.length-1);
	rutDigits = removeChar(rutDigits,'.');
	checkDigit = rutValue.substr(rutValue.length-1,1).toUpperCase();
	if (isEmpty(rutDigits) || isEmpty(checkDigit)){	return doError(rutField,doingSubmit,errorMessage);}
	minusChar = rutDigits.substr(rutDigits.length-1,1);
	if (minusChar == '-'){rutDigits = rutDigits.substr(0,rutDigits.length-1);}
	if (rutDigits.length > 9){return doError(rutField,doingSubmit,errorMessage);}
	if (!isInteger(rutDigits)){return doError(rutField,doingSubmit,errorMessage);}
	if (checkDigit !=  digito(rutDigits)){return doError(rutField,doingSubmit,errorMessage);}
	rutField.value = formatRut(formatRut10Digits(rutDigits,checkDigit));
	return t;
}

function LTrim(str){	
	while(str.length > 0 && str.charAt(0) == " "){
		str = str.substr(1,str.length)
	}

	return str
}

function RTrim(str){
	while(str.length > 0 && str.charAt(str.length-1) == " "){
		str = str.substr(0,str.length-1);
	}
	
	return str
}

function Trim(theStr){
	theStr = RTrim(theStr);
	theStr = LTrim(theStr);
	
	return theStr 
}

function isEmpty(s){
	return ((s == null) || (s.length == 0));
}

function isDigit(c){
	return ((c >= "0") && (c <= "9"));
}

function isInteger(s){
	var i;

	if (isEmpty(s)) {return f;}
	for (i = 0; i < s.length; i++){   
		if (!isDigit(s.charAt(i))){return f;}
	}

	return t;
}

function getNChars(n,ch){
	var i,newStr;

	newStr = "";
	for (i = 0; i < n; i++){
		newStr = newStr + ch;
	}
	
	return newStr;
}