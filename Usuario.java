
package org.com.model;


public class Usuario {
    private int CodEmple;
    private String usuario;
    private String password;
    private String Perfil;
    private String FechaReg;
    private String estado;

    public int getCodEmple() {
        return CodEmple;
    }

    public void setCodEmple(int CodEmple) {
        this.CodEmple = CodEmple;
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

    public String getPerfil() {
        return Perfil;
    }

    public void setPerfil(String Perfil) {
        this.Perfil = Perfil;
    }

    public String getFechaReg() {
        return FechaReg;
    }

    public void setFechaReg(String FechaReg) {
        this.FechaReg = FechaReg;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Usuario() {
    }

    public Usuario(int CodEmple, String usuario, String password, String Perfil, String FechaReg, String estado) {
        this.CodEmple = CodEmple;
        this.usuario = usuario;
        this.password = password;
        this.Perfil = Perfil;
        this.FechaReg = FechaReg;
        this.estado = estado;
    }

    public Usuario(String usuario, String password, String Perfil, String FechaReg, String estado) {
        this.usuario = usuario;
        this.password = password;
        this.Perfil = Perfil;
        this.FechaReg = FechaReg;
        this.estado = estado;
    }

}
