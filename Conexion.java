package org.com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    private String url="jdbc:mysql://localhost:3306/bdlavanderia_rojo";
    private String user ="root";
    private String password="";
    private String driver="com.mysql.jdbc.Driver";
    
    public Connection getCn(){
        Connection cn=null;
        
        try {
            Class.forName(driver);
            cn=DriverManager.getConnection(url,user,password);
            System.out.println("Conexion Establecida...");
        }catch(Exception e){
            System.out.print("Error de Conexion...");
        }
        return cn;
    }
    
    public static void main(String[] args) {
            Conexion cn = new Conexion();
            cn.getCn();
    }
    
}
