
function validate(){  
 var num=document.myform.number.value;
if (isNaN(num)){  
  document.getElementById("numonly").innerHTML="Enter Numeric value only";  
  return false;  
}
else{  
  return true;  
  }  
} 
 function matchpass(){  
var firstpassword=document.myform.password.value;  
var secondpassword=document.myform.password2.value;  
if(firstpassword==secondpassword){  
return true;  
}  
else{  
alert("password must be same!");  
return false;  
}  
}
