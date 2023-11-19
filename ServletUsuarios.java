package org.com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.com.dao.UsuarioDao;
import org.com.model.Usuario;

public class ServletUsuarios extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            // Crear una sesión
            HttpSession sesion = request.getSession();

            String usu = request.getParameter("CodUsuario");
            String pas = request.getParameter("Password");

            UsuarioDao usuDao = new UsuarioDao();

            // Validar el inicio de sesión
            String resultadoLogin = usuDao.validarLogin(usu, pas);

            if ("ok".equals(resultadoLogin)) {
                // Cargar datos a la sesión
                Usuario user = usuDao.datosUsuarioLogin(usu, pas);
                sesion.setAttribute("datosUsuario", user);
                out.print("ok");
            } else {
                out.print(resultadoLogin);
            }
        } catch (Exception e) {
            // Manejo de errores
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error en el servidor");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }



    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
