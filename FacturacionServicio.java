package org.com.model;

public class FacturacionServicio {
    
    private int _NumFacturacion_Venta;
    private int _NumOrdenServicio;
    private int _CodEmpleado;
    private String _Tipo_Facturacion;
    private String _NumSerie_Comprobante;
    private String _Fec_Emision;
    private double _SubTotal;
    private double _IGV;
    private double _Total;
    private double _Efectivo_Recibido;
    private double _Vuelto;
    private String _Estado_Facturacion;

    public int getNumFacturacion_Venta() {
        return _NumFacturacion_Venta;
    }

    public void setNumFacturacion_Venta(int _NumFacturacion_Venta) {
        this._NumFacturacion_Venta = _NumFacturacion_Venta;
    }

    public int getNumOrdenServicio() {
        return _NumOrdenServicio;
    }

    public void setNumOrdenServicio(int _NumOrdenServicio) {
        this._NumOrdenServicio = _NumOrdenServicio;
    }

    public int getCodEmpleado() {
        return _CodEmpleado;
    }

    public void setCodEmpleado(int _CodEmpleado) {
        this._CodEmpleado = _CodEmpleado;
    }

    public String getTipo_Facturacion() {
        return _Tipo_Facturacion;
    }

    public void setTipo_Facturacion(String _Tipo_Facturacion) {
        this._Tipo_Facturacion = _Tipo_Facturacion;
    }

    public String getNumSerie_Comprobante() {
        return _NumSerie_Comprobante;
    }

    public void setNumSerie_Comprobante(String _NumSerie_Comprobante) {
        this._NumSerie_Comprobante = _NumSerie_Comprobante;
    }

    public String getFec_Emision() {
        return _Fec_Emision;
    }

    public void setFec_Emision(String _Fec_Emision) {
        this._Fec_Emision = _Fec_Emision;
    }

    public double getSubTotal() {
        return _SubTotal;
    }

    public void setSubTotal(double _SubTotal) {
        this._SubTotal = _SubTotal;
    }

    public double getIGV() {
        return _IGV;
    }

    public void setIGV(double _IGV) {
        this._IGV = _IGV;
    }

    public double getTotal() {
        return _Total;
    }

    public void setTotal(double _Total) {
        this._Total = _Total;
    }

    public double getEfectivo_Recibido() {
        return _Efectivo_Recibido;
    }

    public void setEfectivo_Recibido(double _Efectivo_Recibido) {
        this._Efectivo_Recibido = _Efectivo_Recibido;
    }

    public double getVuelto() {
        return _Vuelto;
    }

    public void setVuelto(double _Vuelto) {
        this._Vuelto = _Vuelto;
    }

    public String getEstado_Facturacion() {
        return _Estado_Facturacion;
    }

    public void setEstado_Facturacion(String _Estado_Facturacion) {
        this._Estado_Facturacion = _Estado_Facturacion;
    }

    public FacturacionServicio() {
    }

    public FacturacionServicio(int _NumFacturacion_Venta, int _NumOrdenServicio, int _CodEmpleado, String _Tipo_Facturacion, String _NumSerie_Comprobante, String _Fec_Emision, double _SubTotal, double _IGV, double _Total, double _Efectivo_Recibido, double _Vuelto, String _Estado_Facturacion) {
        this._NumFacturacion_Venta = _NumFacturacion_Venta;
        this._NumOrdenServicio = _NumOrdenServicio;
        this._CodEmpleado = _CodEmpleado;
        this._Tipo_Facturacion = _Tipo_Facturacion;
        this._NumSerie_Comprobante = _NumSerie_Comprobante;
        this._Fec_Emision = _Fec_Emision;
        this._SubTotal = _SubTotal;
        this._IGV = _IGV;
        this._Total = _Total;
        this._Efectivo_Recibido = _Efectivo_Recibido;
        this._Vuelto = _Vuelto;
        this._Estado_Facturacion = _Estado_Facturacion;
    }
    
    
}
