<%--
  Created by IntelliJ IDEA.
  User: great
  Date: 1/9/2021
  Time: 8:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1>Welcome User</h1>
    </div>
    <div >
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <h1>All Books</h1>
        <table>
            <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Language</th>
                <th>Number of Pages</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td><c:out value="${book.title}"/></td>
                    <td><c:out value="${book.description}"/></td>
                    <td><c:out value="${book.language}"/></td>
                    <td><c:out value="${book.numberOfPages}"/></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <a href="/books/new">New Book</a>


    </div>
</div>
</body>
</html>
