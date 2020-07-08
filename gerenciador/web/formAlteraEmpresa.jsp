<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/entrada" var="linkServletAlteraEmpresa"/>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>



<form action="${linkServletAlteraEmpresa}" method="post">
    <p>Nome: <input type="text" name="nome" value="${empresa.nome}"/></p>
    <p>Data Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"></p>
    <p><input type="hidden" name="id" value="${empresa.id}"></p>
    <p><input type="hidden" name="acao" value="AlteraEmpresa"></p>

    <button type="submit">ENVIAR</button>
</form>

</body>
</html>