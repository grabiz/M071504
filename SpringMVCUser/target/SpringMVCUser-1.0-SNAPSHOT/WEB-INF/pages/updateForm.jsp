<%-- 
    Document   : updateForm
    Created on : Apr 15, 2017, 9:04:34 PM
    Author     : iviettech
--%>

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
        <script type="text/javascript" src="<c:url value='webjars/bootstrap/3.3.7/js/bootstrap.min.js'/>"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                    <h1>Edit User!</h1>
                    <p class="color-error">${message}</p>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <mvc:form action="update" method="post" modelAttribute="user" >
                        <input name="id" value="${user.id}" hidden/>
                        <div class="form-group">
                            <label for="firstName">First Name </label>
                            <input type="text" name="firstName" class="form-control" id="firstName" value="${user.firstName}" placeholder="First Name"/>
                        </div>
                        <div class="form-group">
                            <label for="lastName">Last Name </label>
                            <input type="text" name="lastName" class="form-control" value="${user.lastName}" id="lastName" placeholder="Last Name"/>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" class="form-control" id="email" value="${user.email}" placeholder="Email"/>
                        </div>
                        <button type="submit" class="btn btn-primary">Update</button>
                    </mvc:form>
                </div>
            </div>   
        </div>
    </body>
</html>

