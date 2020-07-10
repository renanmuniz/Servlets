<%@ page import="br.com.alura.gerenciador.modelo.Empresa" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%--
  Created by IntelliJ IDEA.
  User: renan
  Date: 06/07/2020
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <c:import url="logout-parcial.jsp"/>
        <br>
        <c:if test="${not empty empresa}">
            Empresa ${ empresa } cadastrada com sucesso!
        </c:if>
        <br>
        <h1>Empresas cadastradas:</h1>
        <ul>
            <c:forEach items="${empresas}" var="empresa">
                <li>
                        ${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
                            <a href="/web_war_exploded/entrada?acao=MostraEmpresa&id=${empresa.id}">editar</a>
                            <a href="/web_war_exploded/entrada?acao=RemoveEmpresa&id=${empresa.id}">remove</a>
                </li>

            </c:forEach>
        </ul>
    </body>
</html>
