<%@page import="com.models.DatabaseProperty"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    DatabaseProperty property=(DatabaseProperty)session.getAttribute("properties");
    if(property!=null){
        response.sendRedirect("connect.jsp");
    }else 
    %>
<!DOCTYPE html>
<html>
    <head>
         <title>Connect to your database</title>
          <%@include file="regerence/reference.html" %>
          <link href="css/site.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="regerence/navbar.html" %>
        <div id="content-body">
             <center>
        <form accept-charset="UTF-8" action="connect" name="db_connect_form" method="post" role="form"  method="POST">
            <div class="container">
                <div class="row connect_db">
             
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="panel-title text-left">
                            Connect Your Database
                        </div>
                    </div>
                    <div class="panel-body text-left">
                        <div class="col-sm-8 form-group">
                            <!--<label for="db_name">Database Name</label>-->
                            <div><input class="form-control" name="databaseName" id="db_name" value="<%if(property!=null)out.print(property.getDbName());else{out.print("olms");}%>" type="text" placeholder="Database Name" required/></div>
                        </div>
                        <div class="col-sm-4 form-group">
                            <!--<label for="db_name">Port</label>-->
                            <div><input class="form-control" name="port" id="db_port" type="text"value="<%if(property!=null)out.print(property.getPort());else{out.print("3306");}%>" placeholder="Port Number " required/></div>
                        </div>
                        <div class="col-sm-6 form-group">
                            <!--<label for="db_username">DB Username</label>-->
                            <div><input class=" form-control" name="username" id="db_username" value="<%if(property!=null)out.print(property.getUsername());else{out.print("root");}%>" type="text" placeholder="DB Username" required/></div>
                        </div>
                        <div class="col-sm-6 form-group">
                            <!--<label for="db_password">DB Password</label>-->
                            <div><input class=" form-control" name="password" id="db_password" value="<%if(property!=null)out.print(property.getPassword());else{out.print("root");}%>" type="password" placeholder="DB Password" required/></div>
                        </div>
                        <div class="col-sm-12 form-group">
                            <!--<label for="db_host">Host Address</label>-->
                            <div><input class="form-control" name="host" id="db_url" type="text" value="<%if(property!=null)out.print(property.getHostAddress());else{out.print("localhost");}%>" placeholder="Host Address" required/></div>
                        </div>
                        <div class="form-group">
                            <!--<label for="db_port">DB Port</label>-->
                            <!--<div><input class="form-control" name="db_port" id="db_url" type="number" placeholder="Port" min="1" required/></div>-->
                        <!--</div>-->
                        <center><button type="submit" class="btn btn-success text-left">Connect Database</button></center>
                    </div>
                </div>
                 </div>
            </div><!--end of panel-->
            </div><!--container-->
        </form>
    </center>
         </div><!--content-body-->
   
  
</body>
</html>
