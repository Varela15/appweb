package org.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.com.model.OrdenServicio;

public class OrdenServicioDAO {
    Conexion cnx = new Conexion();
    Connection cn=cnx.getCn();
    private final Connection Conexion;

    public OrdenServicioDAO(Connection Conexion) {
        this.Conexion = Conexion;
    }

    public void crearOrdenServicio(OrdenServicio orden) throws SQLException {
        String sql = "INSERT INTO ordenes_servicio (num_orden_servicio = ?, sucursal = ?, cod_cliente = ?, " +
                 "cod_empleado = ?, modalidad_atencion = ?, tipo_entrega = ?, fec_orden_servicio = ?, " +
                 "fec_entrega_programada = ?, fec_entrega_real = ?, total = ?, estado_orden_servicio = ?, " +
                 "obs_estado_orden_servicio = ?)";
        try (PreparedStatement statement = Conexion.prepareStatement(sql)) {
            statement.setInt(1, orden.getNumOrdenServicio());
            statement.setString(2, orden.getSucursal());
            statement.setInt(3, orden.getCodCliente());
            statement.setInt(4, orden.getCodEmpleado());
            statement.setString(5, orden.getModalidad_Atencion());
            statement.setString(6, orden.getTipo_Entrega());
            statement.setString(7, orden.getFec_Orden_Servicio());
            statement.setString(8, orden.getFec_Entrega_Programada());
            statement.setString(9, orden.getFec_Entrega_Real());
            statement.setDouble(10, orden.getTotal());
            statement.setString(11, orden.getEstado_Orden_Servicio());
            statement.setString(12, orden.getObs_Estado_Orden_Servicio());
            statement.executeUpdate();  
            
        }
    }
    
    public OrdenServicio obtenerOrdenServicioPorId(int id) throws SQLException {
    String sql = "SELECT * FROM ordenes_servicio WHERE id = ?";
    try (PreparedStatement statement = Conexion.prepareStatement(sql)) {
        statement.setInt(1, id);
        try (ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                int ordenId = resultSet.getInt("id");
                String Descripcion = resultSet.getString("Descripcion");
                String estado = resultSet.getString("estado");
                int numOrdenServicio = resultSet.getInt("num_orden_servicio");
                String sucursal = resultSet.getString("sucursal");
                int codCliente = resultSet.getInt("cod_cliente");
                int codEmpleado = resultSet.getInt("cod_empleado");
                String modalidadAtencion = resultSet.getString("modalidad_atencion");
                String tipoEntrega = resultSet.getString("tipo_entrega");
                String fecOrdenServicio = resultSet.getString("fec_orden_servicio");
                String fecEntregaProgramada = resultSet.getString("fec_entrega_programada");
                String fecEntregaReal = resultSet.getString("fec_entrega_real");
                double total = resultSet.getDouble("total");
                String estadoOrdenServicio = resultSet.getString("estado_orden_servicio");
                String obsEstadoOrdenServicio = resultSet.getString("obs_estado_orden_servicio");

                OrdenServicio orden = new OrdenServicio(
                    numOrdenServicio,
                    sucursal,
                    codCliente,
                    codEmpleado,
                    modalidadAtencion,
                    tipoEntrega,
                    fecOrdenServicio,
                    fecEntregaProgramada,
                    fecEntregaReal,
                    total,
                    estadoOrdenServicio,
                    obsEstadoOrdenServicio
                );
                
                return orden;
            }
        }
    }
    return null; 
}


    public void actualizarOrdenServicio(OrdenServicio orden) throws SQLException {
    String sql = "UPDATE ordenes_servicio SET descripcion = ?, estado = ?, "
               + "num_orden_servicio = ?, sucursal = ?, cod_cliente = ?, cod_empleado = ?, "
               + "modalidad_atencion = ?, tipo_entrega = ?, fec_orden_servicio = ?, "
               + "fec_entrega_programada = ?, fec_entrega_real = ?, total = ?, "
               + "obs_estado_orden_servicio = ?";
    
    try (PreparedStatement statement = Conexion.prepareStatement(sql)) {
        statement.setString(1, orden.getDescripcion());
        statement.setString(2, orden.getEstado());
        statement.setInt(3, orden.getNumOrdenServicio());
        statement.setString(4, orden.getSucursal());
        statement.setInt(5, orden.getCodCliente());
        statement.setInt(6, orden.getCodEmpleado());
        statement.setString(7, orden.getModalidad_Atencion());
        statement.setString(8, orden.getTipo_Entrega());
        statement.setString(9, orden.getFec_Orden_Servicio());
        statement.setString(10, orden.getFec_Entrega_Programada());
        statement.setString(11, orden.getFec_Entrega_Real());
        statement.setDouble(12, orden.getTotal());
        statement.setString(13, orden.getObs_Estado_Orden_Servicio());
        statement.executeUpdate();
    }
}

        }

    public void eliminarOrdenServicio(int id) throws SQLException {
    String sql = "DELETE FROM ordenes_servicio WHERE id = ?";
    try (PreparedStatement statement = Conexion.prepareStatement(sql)) {
        statement.setInt(1, id);
        statement.executeUpdate();
    }
}

    }

    public List<OrdenServicio> obtenerTodasLasOrdenes() throws SQLException {
        List<OrdenServicio> ordenes = new ArrayList<>();
        String sql = "SELECT * FROM ordenes_servicio";
        try (PreparedStatement statement = Conexion.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                int ordenId = resultSet.getInt("id");
                String descripcion = resultSet.getString("descripcion");
                String estado = resultSet.getString("estado");
                OrdenServicio orden = new OrdenServicio(ordenId, descripcion, estado);
                ordenes.add(orden);
            }
        }
        return ordenes;
    }
}

