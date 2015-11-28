$(document).ready(function(){
    $('#preview').click(function(){
        var selectedTable=$('#table').val();
        alert(selectedTable);
        var request;  
    
    var url="tabledata?table="+selectedTable+"";  
      
    if(window.XMLHttpRequest){  
    request=new XMLHttpRequest();  
    }  
    else if(window.ActiveXObject){  
    request=new ActiveXObject("Microsoft.XMLHTTP");  
    }  
    
    try  
    {  
    request.onreadystatechange=getInfo;  
    request.open("POST",url,true);  
    request.send();  
    }  
    catch(e)  
    {  
    alert("Unable to connect to server");  
    }  
   
      
    function getInfo(){  
    if(request.readyState==4){  
                alert('hi successfull');
    var val=request.responseText;  
    if(val=='true'){
        location.href="index.jsp";
    }else{
        document.getElementById('loginresult').innerHTML=val; 
    }
    }   
    }  
       
   
    });
});