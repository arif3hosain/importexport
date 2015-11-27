<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Connect to your database</title>
          <%@include file="regerence/reference.html" %>
          <link href="site.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="regerence/navbar.html" %>
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
                            <div><input class="form-control" name="databaseName" id="db_name" type="text" placeholder="Database Name" required/></div>
                        </div>
                        <div class="col-sm-4 form-group">
                            <!--<label for="db_name">Port</label>-->
                            <div><input class="form-control" name="port" id="db_port" type="text" placeholder="Port Number " required/></div>
                        </div>
                        <div class="col-sm-6 form-group">
                            <!--<label for="db_username">DB Username</label>-->
                            <div><input class=" form-control" name="username" id="db_username" type="text" placeholder="DB Username" required/></div>
                        </div>
                        <div class="col-sm-6 form-group">
                            <!--<label for="db_password">DB Password</label>-->
                            <div><input class=" form-control" name="password" id="db_password" type="password" placeholder="DB Password" required/></div>
                        </div>
                        <div class="col-sm-12 form-group">
                            <!--<label for="db_host">Host Address</label>-->
                            <div><input class="form-control" name="host" id="db_url" type="text" placeholder="Host Address" required/></div>
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
    </body>
</html>
