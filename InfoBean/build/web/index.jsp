<%-- 
    Document   : index
    Created on : Jan 14, 2021, 7:28:54 PM
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
        <h1>Selamat Datang</h1>
        <h4>Isi Data anda</h4>
        <form name="login" action="sales.jsp" method="post">
            <table width="200" border="1">
                <tr>
                    <td width="56">Nama </td>
                    <td width="128"><input type="text" name="namaUser"></td>
                </tr>
                <tr>
                    <td>ID </td>
                    <td><input type="text" name="idUser"></td>
                </tr>
                <tr>
                    <td>Umur</td>
                    <td><input type="text" name="umur"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="Submit" value="Submit"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
