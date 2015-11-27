<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login To Your Account</title>
        <%@include file="regerence/reference.html" %>
     </head>
    <body>
      <%@include file="regerence/navbar.html" %>
        <form role="form" action="#" method="post" accept-charset="UTF-8 ">
        <div class="container">
            <center>
            <div class="row text-left" id="login">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">
                            Your E-mail
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" class="form-control" name="email" id="email" placeholder="Enter your email" required/>
                        </div>
                        
                        <button type="submit" class="btn btn-info">Sign in</button>
                    </div>
                </div>
            </div>
            </center>
        </div>
        </form>

    </body>
</html>
