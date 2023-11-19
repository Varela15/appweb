package org.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.com.model.Cliente;

public class ClienteDAO {
    Conexion cnx = new Conexion();
    Connection cn=cnx.getCn();
    private final Connection Conexion;
    

    public ClienteDAO(Connection Conexion) {
        this.Conexion = Conexion;
    }

    public ClienteDAO() {
        throw new UnsupportedOperationException("Not supported yet.");  
    }

    public void crearCliente(Cliente cliente) throws SQLException {
        String sql = "INSERT INTO clientes (id, nombre, email) VALUES (?, ?, ?)";
        try (PreparedStatement statement = Conexion.prepareStatement(sql)) {
            
            
            statement.setInt(1, cliente.getCodCliente());
            statement.setString(2, cliente.getApe_Paterno());
            statement.setString(3, cliente.getApe_Materno());
            statement.setString(4, cliente.getNombres());
            statement.setString(5, cliente.getFech_Nacimiento());
            statement.setString(6, cliente.getNacionalidad());
            statement.setString(7, cliente.getDoc_Identidad());
            statement.setString(8, cliente.getNum_Documento());
            statement.setString(9, cliente.getSexo());
            statement.setString(10, cliente.getEstado_Civil());
            statement.setString(11, cliente.getDistrito());
            statement.setString(12, cliente.getDireccion());
            statement.setString(13, cliente.getTelefono());
            statement.setString(14, cliente.getEmail());
            statement.setString(15, cliente.getEstado());            
            statement.executeUpdate();
        }
    }
    
    public Cliente obtenerClientePorId(int id) throws SQLException {
        String sql = "SELECT * FROM clientes WHERE id = ?";
        try (PreparedStatement statement = Conexion.prepareStatement(sql)) {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    int clienteId = resultSet.getInt("id");
                    String nombre = resultSet.getString("nombre");
                    String email = resultSet.getString("email");
                    return new Cliente(clienteId, nombre, email);
                }
            }
        }
        return null; 
    }

    public void actualizarCliente(Cliente cliente) throws SQLException {
        String sql = "UPDATE clientes SET nombre = ?, email = ? WHERE id = ?";
        try (PreparedStatement statement = Conexion.prepareStatement(sql)) {
            statement.setString(1, cliente.getNombre());
            statement.setString(2, cliente.getEmail());
            statement.setInt(3, cliente.getId());
            statement.executeUpdate();
        }
    }

    public void eliminarCliente(int id) throws SQLException {
        String sql = "DELETE FROM clientes WHERE id = ?";
        try (PreparedStatement statement = Conexion.prepareStatement(sql)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        }
    }

    public void editarCliente(Cliente cliente) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
