package br.com.alura.gerenciador.acao;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class MostraEmpresa implements Acao{
    public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String paramId = request.getParameter("id");
        Integer id = Integer.valueOf(paramId);

        Banco banco = new Banco();
        Empresa empresa = banco.buscaEmpresaPelaId(id);

        System.out.println("Alterando empresa: " + empresa.getNome());

        request.setAttribute("empresa",empresa);
        return "forward:formAlteraEmpresa.jsp";
    }
}
