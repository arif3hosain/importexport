package controller;

import com.models.DatabaseProperty;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ConnectDatabase extends HttpServlet {
    private DatabaseProperty connection=new DatabaseProperty();
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             response.setContentType("text/html;charset=UTF-8");
 
             connection.setDbName(request.getParameter("databaseName"));
             connection.setUsername(request.getParameter("username"));
             connection.setPassword(request.getParameter("password"));
             connection.setPort(request.getParameter("port"));
             connection.setHostAddress(request.getParameter("host"));
             
             System.out.println("Database name: "+connection.getHostAddress());
              System.out.println("Database port: "+connection.getPort());
             boolean isConnection=connection.getDBConnection(connection);
             
             if(isConnection){
                 response.sendRedirect("home.jsp");
             }else{
                 response.sendRedirect("login.jsp");
             }
    }//end method
}//end connectDatabase

  