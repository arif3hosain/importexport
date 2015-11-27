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
                            Sign in
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" name="username" id="username" required/>
                        </div>
                        <div class="form-group">
                            <label for="password">Password <a href="reset.jsp">Forget Password ?</a></label>
                            <input type="password" class="form-control" name="password" id="password" required/>
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
