/*function ValidateContact()
{
	var contact = document.getElementById("UserContact").value;	
	var lblError= document.getElementById("lblError1");
	var phoneno = /^\d{10}$/;
	 var goodColor = "#0C6";
	    var badColor = "#FF9B37";

	    if(phoneno.value.length!=10){

	        phoneno.style.backgroundColor = badColor;
	        lblError.style.color = badColor;
	        lblError.innerHTML = "required 10 digits, match requested format!"
	    }
	/*if(contact.lenght<10 || contact.lenght>10){
		
        lblError.innerHTML = "Enter 10 digit number";

		
	}
	
}*/

function ValidateContact(){
		var isEmpty=false;
		var a=document.getElementById("UserContact").value;
		var x=document.getElementById("lblError1");
		
		  var number = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
		if(!number.test(a)){
		    lblError1.innerHTML = "";
	
	        lblError1.innerHTML = "Enter 10 digit number";
				isEmpty=true;
		}
		return isEmpty;
	}



function ValidateEmail() {
    var email = document.getElementById("UserEmail").value;
    var lblError = document.getElementById("lblError");
    lblError.innerHTML = "";
    var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (!expr.test(email)) {
        lblError.innerHTML = "Invalid email address.";
    }
}

function ValidateEmail2() {
    var email = document.getElementById("UserEmail2").value;
    var lblError = document.getElementById("lblError1");
    lblError.innerHTML = "";
    var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (!expr.test(email)) {
        lblError.innerHTML = "Invalid email address. ";
    }
}

function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : evt.keyCode
    return !(charCode > 31 && (charCode < 48 || charCode > 57));
}

function alphaOnly(evt) {
    
    var charCode = (evt.which) ? evt.which : window.event.keyCode;

    if (charCode <= 13 || charCode==32) {
        return true;
    }
    else {
        var keyChar = String.fromCharCode(charCode);
        var re = /^[a-zA-Z]+$/
        return re.test(keyChar);
    }
}

