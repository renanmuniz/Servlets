package br.com.alura.gerenciador.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

@WebServlet(urlPatterns = "/oi", loadOnStartup=1)
public class OiMundoServlet extends HttpServlet {

    public OiMundoServlet() {
        System.out.println("Criando Oi Mundo Servlet");
    }

    @Override
    public void service(ServletRequest req, ServletResponse resp) throws IOException {

        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<body>");
        out.println("<h1>");
        out.println("Oi mundo servlets!");
        out.println("</h1>");
        out.println("</body>");
        out.println("</html>");

        System.out.println("Executou o servlet OiMundoServlet.java");

    }
}
