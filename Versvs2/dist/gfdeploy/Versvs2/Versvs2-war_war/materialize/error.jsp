<%-- 
    Document   : error
    Created on : 10/09/2016, 20:17:57
    Author     : Lucas
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Error</h1>
        <p>$(error)</p>
        <c:set var="error" scope="session" value=" "></c:set>
    </body>
</html>
