<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkServletNovaEmpresa"/>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>



<form action="${linkServletNovaEmpresa}" method="post">
    <p>Login: <input type="text" name="login"/></p>
    <p>Senha: <input type="password" name="senha"/></p>
    <p><input type="hidden" name="acao" value="Login"></p>
    <button type="submit">ENVIAR</button>
</form>

</body>
</html>