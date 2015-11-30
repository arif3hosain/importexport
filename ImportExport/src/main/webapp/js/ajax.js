var columnNames;
var rows;
  
$(document).ready(function(){
    $('#preview').click(function(){
        var selectedTable=$('#table').val();
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
    
    document.getElementById('preview-data').innerHTML='';
    var tabledata=request.responseText;
    var obj = JSON.parse(tabledata);
    columnNames=obj.columns;
     rows=obj.rows; 
      
  
    var content = "<table border=1  cellpadding='10'>";
    content+='<thead><tr>';
    for(i=0; i<columnNames.length; i++){
        content += '<th>'+  columnNames[i] + '</th>';
    }
     content+='</tr></thead><tbody>';
                for (var i=0; i<rows.length; i++){
                   var aRow=rows[i];
                   content+='<tr>';
                    for (var j=0; j<aRow.length; j++){
                        content+='<td>'+aRow[j]+'</td>';
                    }
                    content+='</tr>';
                }
    
    
    
    content += "</tbody><br></table>"
     $('#preview-data').append(content);
content='';
columnNames='';
rows='';

                 
    
    }   
    }  
       
   
    });
});