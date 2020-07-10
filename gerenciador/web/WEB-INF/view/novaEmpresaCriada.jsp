<%--
  Created by IntelliJ IDEA.
  User: renan
  Date: 06/07/2020
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>novaEmpresaCriada.jsp</title>
</head>
<body>
<br>
<c:import url="logout-parcial.jsp"/>
<br>
    <c:if test="${not empty empresa}">
        Empresa ${ empresa } cadastrada com sucesso!
    </c:if>
    <c:if test="${empty empresa}">
        Nenhuma empresa cadastrada!
    </c:if>

</body>
</html>
