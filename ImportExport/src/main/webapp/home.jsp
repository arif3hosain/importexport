<%-- 
    Document   : home
    Created on : Nov 26, 2015, 9:12:24 PM
    Author     : Arif Mahmud
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DatabaseMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.models.DatabaseProperty"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>

<%
    DatabaseProperty property=(DatabaseProperty)session.getAttribute("properties");
   ArrayList tablelist=new ArrayList();

    if(property==null){
        response.sendRedirect("connect.jsp");
    }else
    {
    java.sql.Connection conn=(Connection)session.getAttribute("connection");
    String pass="";
    if(property.getPassword()!=null)
    pass=property.getPassword();
%>

<%  
ResultSet rs = null;
    DatabaseMetaData meta = conn.getMetaData();
    rs = meta.getTables(null, null, null, new String[]{"TABLE"});          
%>
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://<%=property.getHostAddress()%>:<%=property.getPort()%>/<%=property.getDbName()%>"
    user="<%=property.getUsername()%>"  password="<%=pass%>"/>
 <!DOCTYPE html>
<html>
    <head>
        <title>Database Home Page</title>
         <%@include file="regerence/reference.html" %>
        <link href="css/simple-sidebar.css" rel="stylesheet">
        <link href="css/site.css" rel="stylesheet" type="text/css">
        <script src="js/ajax.js"></script>
    </head>
    <body>
       
        <%@include file="regerence/navbar.html" %>
         <div id="content-body">
        <div class="container-fluid">
            <div id="table-nav">
                <ul>
                    <%
                    while (rs.next()) {
                     String tableName = rs.getString("TABLE_NAME");
                     tablelist.add(tableName);
                    %>                                   
                     <li><a href="#"><%=tableName%></a></li>
                 <%}  
                %>
                </ul>
            </div>
                <div id="import">
                    <form accept-charset="UTF-8" name="preview">
                        <table id="export-table">
                        <tr>
                            <td width><h4>Database Name: </h4></td>
                            <td><h4><%=property.getDbName()%></h4></td>
                        </tr>
                        <tr>
                            <td>Object Name</td>
                            <td>
                                <select name="object">
                                    <option value="">Select</option>
                                    <option value="">One</option>
                                    <option value="">Two</option>
                                 </select>
                            </td>
                        
                        </tr>
                        <tr>
                            <td>Table Name</td>
                            <td>
                                <select id="table">
                                    <option>Select Object</option>
                                    <%
                                        for(int i=0; i<tablelist.size(); i++){%>
                                        <option value="<%=tablelist.get(i)%>"><%=tablelist.get(i)%></option>
                                        <%}
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Export Type</td>
                            <td><input type="radio" name="exportType" value="csv" id="byCSV" />CSV <input type="radio" name="exportType" value="excel" id="byXLSX" />Excel</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><button type="button" id="preview" class="btn btn-info btn-sm">Preview</button> &nbsp;<button  type="button" id="export" class="btn btn-info btn-sm" id="export">Export</button>&nbsp;<button  type="button" id="export" class="btn btn-info btn-sm" id="export">Import</button></td>
                        </tr>                       
                        </table>
                    </form>
                </div>
        </div>
<!--       <div id="wrapper">

         Sidebar 
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        <%=property.getDbName()%>
                    </a>
                </li>
                 <%
                    while (rs.next()) {
                     String tableName = rs.getString("TABLE_NAME");%>      

                     <li><a href="#"><%=tableName%></a></li>
                 <%}  
                %>
            </ul>
        </div>
         /#sidebar-wrapper 
         Page Content 
        <div id="page-content-wrapper">
 
            <div id="import">
                 <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Database</a>
            </div>
            
            <div class="container-fluid">              
                ---div class="row">
                        <div class="col-lg-12">
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Database</a>
                        <button type="button" >Click</button>
                    </div>
            </div>
            </div>-->
         <!-- /#page-content-wrapper -->
         <div class="clearfix"></div>
         <div id="preview-data">
             
         </div>
         </div>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    
    </script>
    </body>
</html>
<%}%>