<%-- 
    Document   : index
    Created on : Jan 14, 2021, 9:25:47 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page errorPage="eror.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String lang = request.getParameter("language");
            if (lang.equalsIgnoreCase("java")){
        %>
            <h3> Pilihan Anda Benar ! (<%=lang%>) </h3>
        <% }
            else
            {
                throw new Exception("Pilihan Anda Salah !");
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
