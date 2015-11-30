package controller;
import com.models.DatabaseProperty;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;

public class SelectedTable extends HttpServlet {
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

          String table=request.getParameter("table");
          JSONObject object=DatabaseProperty.getTable(table);    
          response.setContentType("application/json");
          response.getWriter().write(object.toString());
          
    } 
}