<%-- 
    Document   : eror
    Created on : Jan 14, 2021, 9:28:19 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Exception : </h1>
        <h3> <%=exception.getMessage() %>
    </body>
</html>
