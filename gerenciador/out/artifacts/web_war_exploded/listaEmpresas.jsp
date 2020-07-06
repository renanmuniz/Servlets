<%@ page import="br.com.alura.gerenciador.servlet.Empresa" %>
<%@ page import="java.util.List" %>
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


<h1>Empresas cadastradas:</h1>
<ul>
    <%
        List<Empresa> lista = (List)request.getAttribute("empresas");
        for (Empresa empresa: lista) {
     %>
        <li><%= empresa.getNome() %></li>
    <%
        }
    %>
</ul>


</body>
</html>
