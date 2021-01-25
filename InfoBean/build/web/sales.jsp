<%-- 
    Document   : sales
    Created on : Jan 14, 2021, 8:03:56 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/header.jspf" %>
<jsp:useBean id="userData" scope="session" class="com.infobean.UserData" />
<jsp:setProperty name="userData" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2> Selamat Datang , <%=userData.getNamaUser()%> </h2>
        ID Anda = <jsp:getProperty name="userData" property="idUser" /> <br>
        USIA Anda = <jsp:getProperty name="userData" property="umur" /> <br>
        
        <p> </p>
        <a href="index.jsp">Kembali</a>
    </body>
</html>
