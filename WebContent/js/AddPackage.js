function checkPhone() {
	
	var phone = document.getElementById("phone").value;
	
	
	if(phone.length == 10) {
		
		document.getElementById("check_phone").innerText = "";
        document.getElementById("submit").disabled = false;
        
	} else {
		
		document.getElementById("check_phone").innerText = "enter correct phone number...!!!";
        document.getElementById("submit").disabled = true;
        
	}
}

function checkNoN() {
	
	var non = document.getElementById("non").value;
	var price = document.getElementById("price").value;
	var noa = document.getElementById("noc").value;
	var noc = document.getElementById("noc").value;
	var charge;
	
	
	if(non <= 0) {
		
		document.getElementById("check_non").innerText = "enter valid number of night...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_non").innerText = "";
        document.getElementById("submit").disabled = false;
        
        charge = price*noa*non + (price/2)*noc*non;
        
        document.getElementById("charge").innerText = "Your Total Amount : Rs. "+charge+" .00";
        
	}
}

function checkNoA() {
	
	var noa = document.getElementById("noa").value;
	var price = document.getElementById("price").value;
	var non = document.getElementById("non").value;
	var noc = document.getElementById("noc").value;
	var charge;
	
	if(noa <= 0) {
		
		document.getElementById("check_noa").innerText = "enter valid number of adults...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_noa").innerText = "";
        document.getElementById("submit").disabled = false;
        
        charge = price*noa*non + (price/2)*noc*non;
        
        document.getElementById("charge").innerText = "Your Total Amount : Rs. "+charge+" .00";
        
	}
}

function checkNoC() {
	
	var price = document.getElementById("price").value;
	var non = document.getElementById("non").value;
	var noa = document.getElementById("noa").value;
	var noc = document.getElementById("noc").value;
	var charge;
	
	if(noc < 0) {
		
		document.getElementById("check_noc").innerText = "enter valid number of child...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_noc").innerText = "";
        document.getElementById("submit").disabled = false;
        
        charge = price*noa*non + (price/2)*noc*non;
       
        document.getElementById("charge").innerText = "Your Total Amount : Rs. "+charge+" .00";
	}
}

function calculateAmount() {
	alert ("hi");
}