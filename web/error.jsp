<%--
  Created by IntelliJ IDEA.
  User: voire
  Date: 10.6.20
  Time: 3:15 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Error Page</title>
</head>
<body>
    <h1 style="color: red">Error</h1>
    <h2><%=exception.getMessage()%></h2>
</body>
</html>
