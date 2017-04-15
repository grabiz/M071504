<%-- 
    Document   : home
    Created on : Apr 15, 2017, 7:00:58 PM
    Author     : iviettech
--%>
<!--Trang chu -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show list user</title>
        <link rel="stylesheet" href="<c:url value='webjars/bootstrap/3.3.7/css/bootstrap.min.css'/>" type="text/css" >
        <link rel="stylesheet" href="<c:url value='Resources/css/style.css'/>" type="text/css" >
        <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
        <script type="text/javascript" src=""></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                    <h1>Show All User!</h1>
                    <p>${message}</p>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="table-reponsive">
                        <table class="table table-border table-hover">
                            <tr>
                                <th>Id</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Action</th>
                            </tr>
                            <c:forEach var="u" items="${listUser}">
                                <tr>
                                    <td>${u.id}</td>
                                    <td>${u.firstName}</td>
                                    <td>${u.lastName}</td>
                                    <td>${u.email}</td>
                                    <td class="text-center"><form:form action="updateForm" modelAttribute="user" method="post">
                                           <input hidden name="id" value="${u.id}"/> 
                                           <input hidden name="firstName" value="${u.firstName}"/> 
                                           <input hidden name="lastName" value="${u.lastName}"/> 
                                           <input hidden name="email" value="${u.email}"/> 
                                           <button type="submit" class="btn btn-primary">Edit</button>
                                    </form:form></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>   
        </div>
    </body>
</html>
