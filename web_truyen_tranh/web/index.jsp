<%-- 
    Document   : index
    Created on : May 14, 2021, 10:47:32 AM
    Author     : hp
--%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="UsersCreate">
            <input class="input" name="username" placeholder="Username" type="text" required="">
            <input class="input" name="password" placeholder="Password" type="password" required="">
            <input class="input" name="fullname" placeholder="Fullname" type="text" required="">
            <input class="input" name="email" placeholder="Email" type="text" required="">
            <input class="input" name="phone" placeholder="Phone number" type="text" required="">
            <button class="button">Submit</button>
        </form>
        
        <form method="GET" action="UsersDelete">
            <input class="input" name="username" placeholder="username" type="text" required="">
            
            <button class="button">Submit</button>
        </form>
    </body>
</html>
<%--<jsp:forward page="/" />--%>