<%-- 
    Document   : index
    Created on : Dec 22, 2020, 12:49:08 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>waktu saat ini</h1>
        <%=new java.util.Date()%>
        <% 
            out.println("Muhammad Firdaus Iqbal Ramdhani - 19360014<br>");
            out.println("<br>Hallo Selamat Datang, Waktu Sekarang adalah ");
        %>
        <%@include file="/WEB-INF/jspf/header.jspf" %>
    </body>
</html>
