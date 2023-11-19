package org.com.dao;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.com.model.Usuario;


public class UsuarioDao {
    Conexion cnx = new Conexion();
    Connection cn=cnx.getCn();
    
    public String validarLogin(String usu, String pas){
        
        String  res="";
        try{
            CallableStatement cs=
                    cn.prepareCall("{call usp_validarLogin(?,?)}");
            cs.setString(1, usu);
            cs.setString(2, pas);
            
            ResultSet rs=cs.executeQuery();
            
            while(rs.next()) {
            res=rs.getString(1);
            }
            
        }catch(Exception e){
            
        }
        return res;
        
    }
    public List listaUsuarios(){
        List lista = new ArrayList();
        try{
            String sql = "select * from usuarios";
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            
            while(rs.next()){
                Object data[]={rs.getInt(1),rs.getString(2),
                        rs.getString(3),rs.getString(4),
                        rs.getString(5),rs.getString(6)}; 
                lista.add(data);
            }  
        }catch(Exception e){
            
        }  
        return lista;
    }
    
    
    public int totalUsuarios(){
        int res=0;
        try {
            String sql="select count(*) from usuarios";
            
            Statement st= cn.createStatement();
            ResultSet rs= st.executeQuery(sql);
            
            while(rs.next()){
               res= rs.getInt(1);
           } 
            
        } catch (Exception e) {
            System.out.println("Error en el conteo de Usuarios..");
        }
        return res;
    }
    
    
    public Usuario datosUsuarioLogin(String usu,String pas){
        Usuario usuario=null;
        
        try {
            CallableStatement cs=
                    cn.prepareCall("{call usp_datosUsuario(?,?)}");
            cs.setString(1, usu);
            cs.setString(2,pas);
            
            ResultSet rs=cs.executeQuery();
            
            while(rs.next()){
                usuario = new Usuario(rs.getInt(1), rs.getString(2),
                                      rs.getString(3),rs.getString(4),
                                      rs.getString(5),rs.getString(6));
                //usuario.setId(rs.getInt(1));
            }
            
        } catch (Exception e) {
            
        }
        return usuario;
    }
    
    
    public boolean agregarUsuario(Usuario usu){
        boolean band=false;
        try {
            CallableStatement cs=
            cn.prepareCall("{call usp_agregarUsuario(?,?,?,?,?,?,?)}");
            
            cs.setInt(1, usu.getCodEmple());
            cs.setString(2, usu.getUsuario());
            cs.setString(3, usu.getPassword());
            cs.setString(4, usu.getPerfil());
            cs.setString(5, usu.getFechaReg());
            cs.setString(6, usu.getEstado());
            
            if(cs.executeUpdate()>0){
                band=true;
            }
        
        } catch (Exception e) {
        }
        
        return band;
    }

public boolean editarUsuario(Usuario usu){
        boolean band=false;
        try {
            CallableStatement cs=
            cn.prepareCall("{call usp_editarUsuario(?,?,?,?,?,?)}");
            
            cs.setInt(1, usu.getCodEmple());
            cs.setString(2, usu.getUsuario());
            cs.setString(3, usu.getPassword());
            cs.setString(4, usu.getPerfil());
            cs.setString(5, usu.getFechaReg());
            cs.setString(6, usu.getEstado());
            
            if(cs.executeUpdate()>0){
                band=true;
            }
        
        } catch (Exception e) {
        }
        
        return band;
    }
     
    public List usuarioCodigo(int cod){
        List lista=new ArrayList();
        String sql="select * from usuarios where id='" + cod+"'";
        
        try {
            Statement st= cn.createStatement();
            ResultSet rs=st.executeQuery(sql);
            
            while(rs.next()){
                Object data[]={rs.getString(1),rs.getString(2),
                               rs.getString(3),rs.getString(4),
                               rs.getString(5),rs.getString(6),
                               rs.getString(7),rs.getString(8)};
                lista.add(data);
            }
        } catch (Exception e) {
            System.out.println("Error al mostra datos: " + e.toString());
        }
        return lista;
    }
    
    
    
}
