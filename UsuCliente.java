package org.com.model;

public class UsuCliente {
    
    private int CodCliente;
    private String usuario;
    private String password;
    private String FechaReg;
    private String Estado;

    public int getCodCliente() {
        return CodCliente;
    }

    public void setCodCliente(int CodCliente) {
        this.CodCliente = CodCliente;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFechaReg() {
        return FechaReg;
    }

    public void setFechaReg(String FechaReg) {
        this.FechaReg = FechaReg;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public UsuCliente() {
    }

    public UsuCliente(int CodCliente, String usuario, String password, String FechaReg, String Estado) {
        this.CodCliente = CodCliente;
        this.usuario = usuario;
        this.password = password;
        this.FechaReg = FechaReg;
        this.Estado = Estado;
    }
    
    
}
