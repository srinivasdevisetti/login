function validate(){  
var num=document.myform.number.value;  
if (isNaN(num)){  
  document.getElementById("numonly").innerHTML="Enter Numeric value only";  
  return false;  
}else{  
  return true;  
  }  
}  