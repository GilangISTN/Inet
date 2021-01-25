<%-- 
    Document   : Random
    Created on : Jan 14, 2021, 8:55:18 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/header.jspf" %>
<jsp:useBean id = "random" scope="request" class="com.infobean.RandomNumber" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Angka Acak ini menunjukkan tingkah laku Java Bean dengan scope =
        request;
        <h3>
            <jsp:getProperty name="random" property="rndNumber2" />
        </h3>
        Angka Acak berikut ini menunjukkan method JavaBean tanpa memakai
        property
        <h3>
            <%=random.getRandomNumber() %>
        </h3>
        Pilihan berikut ini akan membawa ke error page, jika Anda salah menebak.
        <form action="index.jsp" method="POST">
            <select name="language" size="4">
                <option value="java">JAVA</option>
                <option value="C" >C</option>
                <option value="Pascal" >PASCAL</option>
                <option value="Basic">BASIC</option>
        </select>
        <input type="submit" value="submit" />
        </form>
        <h1>Hello World!</h1>
    </body>
</html>
