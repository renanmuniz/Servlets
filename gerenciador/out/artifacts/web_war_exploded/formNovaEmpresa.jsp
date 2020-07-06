<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>



<form action="${linkServletNovaEmpresa}" method="post">
    <p>Nome: <input type="text" name="nome"/></p>
    <p>Data Abertura: <input type="text" name="data"/></p>

    <button type="submit">ENVIAR</button>
</form>

</body>
</html>