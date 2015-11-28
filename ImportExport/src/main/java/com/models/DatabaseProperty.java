
package com.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.JsonArray;
import javax.json.JsonObject;
/**
 *
 * @author Arif Mahmud
 */
public class DatabaseProperty {

  
    private String dbName;
    private String port;
    private String username;
    private String password="";
    private String hostAddress;
   static String sql="";
     static Connection connection=null;
     static Statement statement=null;
     static PreparedStatement stmt = null; 
     static ResultSetMetaData rsmd=null;
    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    public String getPort() {
        return port;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHostAddress() {
        return hostAddress;
    }

    public void setHostAddress(String hostAddress) {
        this.hostAddress = hostAddress;
    }
    
    public Connection getDBConnection(DatabaseProperty property) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://"+property.getHostAddress()+":"+property.getPort()+"/"+property.getDbName()
            ,property.getUsername(),"");   
          
            

            if(connection!=null){
                 return connection;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            Logger.getLogger(DatabaseProperty.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return null;
    }//end method   
    
      public static JsonObject getTable(String table) {
          
            
          try {
            sql="select * from "+table+"";
            stmt=connection.prepareStatement(sql);
            ResultSet rs=stmt.executeQuery();
            rsmd=rs.getMetaData();
            int column=rsmd.getColumnCount();
            System.out.println("number of columns "+column);
            for (int i = 1; i <=column; i++) {
               
            }
            
            return null;
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseProperty.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
    }
    
}
