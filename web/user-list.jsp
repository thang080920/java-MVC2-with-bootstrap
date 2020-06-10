<%--
  Created by IntelliJ IDEA.
  User: voire
  Date: 10.6.20
  Time: 2:44 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Management Application</title>
    <!-- CSS only -->
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
<div class="row">
    <div class="container">
        <h3 class="text-center">Users List</h3>
        <br>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new">Add New User</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Email</td>
                <td>Country</td>
                <td>Action</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td>
                        <c:out value="${user.id}"/>
                    </td>
                    <td>
                        <c:out value="${user.name}"/>
                    </td>
                    <td>
                        <c:out value="${user.email}"/>
                    </td>
                    <td>
                        <c:out value="${user.country}"/>
                    </td>
                    <td><a href="edit?id=<c:out value='${user.id}'/>">Edit</a>
                        <a href="delete?id=<c:out value='${user.id}'/>">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
