
package com.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
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
    private static Connection connection=null;
    private static Statement statement=null;
     
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
    
    public boolean getDBConnection(DatabaseProperty property) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://"+property.getHostAddress()+":"+property.getPort()+"/"+property.getDbName()
            ,property.getUsername(),"");                      
            if(connection!=null){
                 return true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            Logger.getLogger(DatabaseProperty.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return false;
    }//end method
    
 
}
