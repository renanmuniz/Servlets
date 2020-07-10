package br.com.alura.gerenciador.servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/entrada")
public class MonitoramentoFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void destroy() {

    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws ServletException, IOException {
        System.out.println("MonitoramentoFilter");

        long antes = System.currentTimeMillis();

        String acao = request.getParameter("acao");


        //executa a acao
        chain.doFilter(request, response);


        long depois = System.currentTimeMillis();

        System.out.println("MonitoramentoFilter: Tempo de execução da ação " + acao + ": " + (depois - antes) + "ms");

    }

}
