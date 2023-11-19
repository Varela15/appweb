package org.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.com.dao.ClienteDAO;
import org.com.model.Cliente;


public class ServletCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
        Cliente cliente = null;
        ClienteDAO ClienteDAO = new ClienteDAO();

        String accion = request.getParameter("accion");

        if (accion.equals("ACTUALIZAR")) {
            
            String CodCliente = request.getParameter("CodCliente");
            String APaterno = request.getParameter("ediApe_Paterno");
            String AMaterno = request.getParameter("ediApe_Materno");
            String Nombres = request.getParameter("ediNombres");
            String Fech_Nacimiento = request.getParameter("ediFech_Nacimiento");
            String Nacionalidad = request.getParameter("ediNacionalidad");
            String Doc_Identidad = request.getParameter("ediDoc_Identidad");
            String Num_Documento = request.getParameter("ediNum_Documento");
            String Sexo = request.getParameter("ediSexo");
            String Estado_Civil = request.getParameter("ediEstado_Civil");
            String Distrito = request.getParameter("ediDistrito");
            String Direccion = request.getParameter("ediDireccion");
            String Telefono = request.getParameter("ediTelefono");
            String Email = request.getParameter("ediEmail");
            String Estado = request.getParameter("ediEstado");

            cliente = new clientes(CodCliente, APaterno, AMaterno, Nombres, Fech_Nacimiento, Nacionalidad,
                    Doc_Identidad, Num_Documento, Sexo, Estado_Civil, Distrito, Direccion, Telefono, Email, Estado);
            ClienteDAO.editarCliente(cliente);

            response.sendRedirect("/WebAppCorp_Lavanderia/vistas/clientes.jsp");    
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private static class clientes extends Cliente {

        public clientes(String CodCliente, String APaterno, String AMaterno, String Nombres, String Fech_Nacimiento, String Nacionalidad, String Doc_Identidad, String Num_Documento, String Sexo, String Estado_Civil, String Distrito, String Direccion, String Telefono, String Email, String Estado) {
        }
    }

}
