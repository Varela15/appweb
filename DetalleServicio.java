package org.com.model;

public class DetalleServicio {
  
    private int _IdDetalleServicio;
    private int _NumOrdenServicio;
    private String _Tipo_Servicio;
    private String _UniMed;
    private String _Prenda;
    private String _Descripcion_Prenda;
    private String _Situacion_Prenda;
    private String _Marca;
    private String _Color;
    private double _Prec_Servicio;
    private int _Cantidad_Prenda;
    private double _Importe; 
    private double _Porcentaje_Dscto;
    private double _Dscto; 
    private double _SubTotal; 

    public int getIdDetalleServicio() {
        return _IdDetalleServicio;
    }

    public void setIdDetalleServicio(int _IdDetalleServicio) {
        this._IdDetalleServicio = _IdDetalleServicio;
    }

    public int getNumOrdenServicio() {
        return _NumOrdenServicio;
    }

    public void setNumOrdenServicio(int _NumOrdenServicio) {
        this._NumOrdenServicio = _NumOrdenServicio;
    }

    public String getTipo_Servicio() {
        return _Tipo_Servicio;
    }

    public void setTipo_Servicio(String _Tipo_Servicio) {
        this._Tipo_Servicio = _Tipo_Servicio;
    }

    public String getUniMed() {
        return _UniMed;
    }

    public void setUniMed(String _UniMed) {
        this._UniMed = _UniMed;
    }

    public String getPrenda() {
        return _Prenda;
    }

    public void setPrenda(String _Prenda) {
        this._Prenda = _Prenda;
    }

    public String getDescripcion_Prenda() {
        return _Descripcion_Prenda;
    }

    public void setDescripcion_Prenda(String _Descripcion_Prenda) {
        this._Descripcion_Prenda = _Descripcion_Prenda;
    }

    public String getSituacion_Prenda() {
        return _Situacion_Prenda;
    }

    public void setSituacion_Prenda(String _Situacion_Prenda) {
        this._Situacion_Prenda = _Situacion_Prenda;
    }

    public String getMarca() {
        return _Marca;
    }

    public void setMarca(String _Marca) {
        this._Marca = _Marca;
    }

    public String getColor() {
        return _Color;
    }

    public void setColor(String _Color) {
        this._Color = _Color;
    }

    public double getPrec_Servicio() {
        return _Prec_Servicio;
    }

    public void setPrec_Servicio(double _Prec_Servicio) {
        this._Prec_Servicio = _Prec_Servicio;
    }

    public int getCantidad_Prenda() {
        return _Cantidad_Prenda;
    }

    public void setCantidad_Prenda(int _Cantidad_Prenda) {
        this._Cantidad_Prenda = _Cantidad_Prenda;
    }

    public double getImporte() {
        return _Importe;
    }

    public void setImporte(double _Importe) {
        this._Importe = _Importe;
    }

    public double getPorcentaje_Dscto() {
        return _Porcentaje_Dscto;
    }

    public void setPorcentaje_Dscto(double _Porcentaje_Dscto) {
        this._Porcentaje_Dscto = _Porcentaje_Dscto;
    }

    public double getDscto() {
        return _Dscto;
    }

    public void setDscto(double _Dscto) {
        this._Dscto = _Dscto;
    }

    public double getSubTotal() {
        return _SubTotal;
    }

    public void setSubTotal(double _SubTotal) {
        this._SubTotal = _SubTotal;
    }

    public DetalleServicio() {
    }

    public DetalleServicio(int _IdDetalleServicio, int _NumOrdenServicio, String _Tipo_Servicio, String _UniMed, String _Prenda, String _Descripcion_Prenda, String _Situacion_Prenda, String _Marca, String _Color, double _Prec_Servicio, int _Cantidad_Prenda, double _Importe, double _Porcentaje_Dscto, double _Dscto, double _SubTotal) {
        this._IdDetalleServicio = _IdDetalleServicio;
        this._NumOrdenServicio = _NumOrdenServicio;
        this._Tipo_Servicio = _Tipo_Servicio;
        this._UniMed = _UniMed;
        this._Prenda = _Prenda;
        this._Descripcion_Prenda = _Descripcion_Prenda;
        this._Situacion_Prenda = _Situacion_Prenda;
        this._Marca = _Marca;
        this._Color = _Color;
        this._Prec_Servicio = _Prec_Servicio;
        this._Cantidad_Prenda = _Cantidad_Prenda;
        this._Importe = _Importe;
        this._Porcentaje_Dscto = _Porcentaje_Dscto;
        this._Dscto = _Dscto;
        this._SubTotal = _SubTotal;
    }

}
