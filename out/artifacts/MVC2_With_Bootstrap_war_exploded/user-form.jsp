<%--
  Created by IntelliJ IDEA.
  User: voire
  Date: 10.6.20
  Time: 3:01 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-ad navbar-dark">
        <div>
            <a href="" class="navbar-brand">User Management App</a>
        </div>
        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list">Users List</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:if test="${user != null}">
            <form action="update" method="post">
            </c:if>
            <c:if test="${user == null}">
                <form action="insert" method="post">
            </c:if>
                <caption>
                    <h2>
                        <c:if test="${user != null}">
                            Edit User
                        </c:if>
                        <c:if test="${user == null}">
                            Add New User
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${user != null}">
                    <input type="hidden" name="id" value="<c:out value='${user.id}'/>"/>
                </c:if>
                <fieldset class="form-group">
                    <label>User Name</label> <input type="text" value="<c:out value="${user.name}"/>"
                                                    class="form-control" name="name" required>
                </fieldset>
                    <label>User Email</label> <input type="text" value="<c:out value="${user.email}"/>"
                                                    class="form-control" name="email" required>
                </fieldset>
                    <label>User Country</label> <input type="text" value="<c:out value="${user.country}"/>"
                                                    class="form-control" name="country" required>
                </fieldset>
                <button type="submit" class="btn btn-success">Save</button>
            </form>

        </div>
    </div>
</div>
</body>
</html>
