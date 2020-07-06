package br.com.alura.gerenciador.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/listaEmpresas")
public class ListaEmpresasServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Banco banco = new Banco();
        List<Empresa> lista = banco.getEmpresas();

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>Empresas cadastradas:</h1>");
        out.println("<ul>");

        for (Empresa empresa: lista) {
            out.println("<li>" + empresa.getNome() + "</li>");
        }

        out.println("</ul>");
        out.println("</body></html>");

    }
}
