/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.models.DatabaseProperty;
import com.models.RetrieveTable;
import java.io.IOException;
import java.io.PrintWriter;
import javax.json.JsonObject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SelectedTable extends HttpServlet {
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          response.setContentType("text/html");
          PrintWriter out = response.getWriter(); 
          String table=request.getParameter("table");
          JsonObject object=DatabaseProperty.getTable(table);
          
     }
  
}
