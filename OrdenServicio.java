package org.com.model;

public class OrdenServicio {
   
    private int _NumOrdenServicio;
    private String _Sucursal;
    private int _CodCliente;
    private int _CodEmpleado;
    private String _Modalidad_Atencion;
    private String _Tipo_Entrega;
    private String _Fec_Orden_Servicio;
    private String _Fec_Entrega_Programada;
    private String _Fec_Entrega_Real;
    private double _Total;
    private String _Estado_Orden_Servicio;
    private String _Obs_Estado_Orden_Servicio;

    public int getNumOrdenServicio() {
        return _NumOrdenServicio;
    }

    public void setNumOrdenServicio(int _NumOrdenServicio) {
        this._NumOrdenServicio = _NumOrdenServicio;
    }

    public String getSucursal() {
        return _Sucursal;
    }

    public void setSucursal(String _Sucursal) {
        this._Sucursal = _Sucursal;
    }

    public int getCodCliente() {
        return _CodCliente;
    }

    public void setCodCliente(int _CodCliente) {
        this._CodCliente = _CodCliente;
    }

    public int getCodEmpleado() {
        return _CodEmpleado;
    }

    public void setCodEmpleado(int _CodEmpleado) {
        this._CodEmpleado = _CodEmpleado;
    }

    public String getModalidad_Atencion() {
        return _Modalidad_Atencion;
    }

    public void setModalidad_Atencion(String _Modalidad_Atencion) {
        this._Modalidad_Atencion = _Modalidad_Atencion;
    }

    public String getTipo_Entrega() {
        return _Tipo_Entrega;
    }

    public void setTipo_Entrega(String _Tipo_Entrega) {
        this._Tipo_Entrega = _Tipo_Entrega;
    }

    public String getFec_Orden_Servicio() {
        return _Fec_Orden_Servicio;
    }

    public void setFec_Orden_Servicio(String _Fec_Orden_Servicio) {
        this._Fec_Orden_Servicio = _Fec_Orden_Servicio;
    }

    public String getFec_Entrega_Programada() {
        return _Fec_Entrega_Programada;
    }

    public void setFec_Entrega_Programada(String _Fec_Entrega_Programada) {
        this._Fec_Entrega_Programada = _Fec_Entrega_Programada;
    }

    public String getFec_Entrega_Real() {
        return _Fec_Entrega_Real;
    }

    public void setFec_Entrega_Real(String _Fec_Entrega_Real) {
        this._Fec_Entrega_Real = _Fec_Entrega_Real;
    }

    public double getTotal() {
        return _Total;
    }

    public void setTotal(double _Total) {
        this._Total = _Total;
    }

    public String getEstado_Orden_Servicio() {
        return _Estado_Orden_Servicio;
    }

    public void setEstado_Orden_Servicio(String _Estado_Orden_Servicio) {
        this._Estado_Orden_Servicio = _Estado_Orden_Servicio;
    }

    public String getObs_Estado_Orden_Servicio() {
        return _Obs_Estado_Orden_Servicio;
    }

    public void setObs_Estado_Orden_Servicio(String _Obs_Estado_Orden_Servicio) {
        this._Obs_Estado_Orden_Servicio = _Obs_Estado_Orden_Servicio;
    }

    public OrdenServicio() {
    }

    public OrdenServicio(int _NumOrdenServicio, String _Sucursal, int _CodCliente, int _CodEmpleado, String _Modalidad_Atencion, String _Tipo_Entrega, String _Fec_Orden_Servicio, String _Fec_Entrega_Programada, String _Fec_Entrega_Real, double _Total, String _Estado_Orden_Servicio, String _Obs_Estado_Orden_Servicio) {
        this._NumOrdenServicio = _NumOrdenServicio;
        this._Sucursal = _Sucursal;
        this._CodCliente = _CodCliente;
        this._CodEmpleado = _CodEmpleado;
        this._Modalidad_Atencion = _Modalidad_Atencion;
        this._Tipo_Entrega = _Tipo_Entrega;
        this._Fec_Orden_Servicio = _Fec_Orden_Servicio;
        this._Fec_Entrega_Programada = _Fec_Entrega_Programada;
        this._Fec_Entrega_Real = _Fec_Entrega_Real;
        this._Total = _Total;
        this._Estado_Orden_Servicio = _Estado_Orden_Servicio;
        this._Obs_Estado_Orden_Servicio = _Obs_Estado_Orden_Servicio;
    }

    public String getDescripcion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getEstado() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
