<%-- 
    Document   : index
    Created on : Jan 15, 2021, 1:33:20 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="ng" scope="session" class="com.gameangka.JavaBean" />
<jsp:setProperty name="ng" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Permainan Tebak Angka</h1>
        <h3><%
                if (ng.getNumGuesses() == 0){
            %>
            Silahkan tebak sebuah bilangan antara 1 s/d 100.</h3>
            
            <form method="GET" action="index.jsp">
                Tebakan Anda = <input type="text" name="guess"><br>
                <input type="submit" value="Tebak">
                
            </form>
            <% 
                }else{
            %>
            <% if (ng.isMatch()){ %>
                Tebakan = <jsp:getProperty name="ng" property="guess" /><br>
                <jsp:getProperty name="ng" property="hint" /><br>
                Anda tekah mencoba sebanyak <jsp:getProperty name="ng" property="numGuesses"/> kali<br>
                <br>
                Silahkan <a href="index.jsp"> COBA LAGI</a>
            
            <%
                ng.reset();
            }else{
            %>
            Tebakan = <jsp:getProperty name="ng" property="guess"/> <br>
            <jsp:getProperty name="ng" property="hint"/><br>
            Anda telah mencoba sebanyak <jsp:getProperty name="ng" property="numGuesses"/> kali<br>
            Silahkan tebak lagi bilangan antara 1 s/d 10<br>
            <form action="index.jsp" method="GET">
                Tebakan Anda = <input type="text" name="guess"><br>
                <input type="submit" value="tebak">
            </form>
        <% } %>
    <% } %>
    <small> (c) 2020 Muhammad Firdaus Iqbal & Gilang Nur Alfikri </small>
                
    </body>
</html>
