<%-- 
    Document   : index
    Created on : Nov 22, 2023, 10:55:50 AM
    Author     : Digito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='lat10.css' rel='stylesheet' type='text/css'/>
        <title>Perusahaan Ikan PelFish</title>
    </head>
    <body bgcolor="#808080">
        <%
            String menu="<br><b>Master Data</b><br>"
            + "<a href=.>Profil</a><br>"
            + "<a href=.>Lokasi</a><br><br>"
            + "<b>Transaksi</b><br>"
            + "<a href=.>Jumlah</a><br><br>"
            + "<b>Laporan</b><br>"
            + "<a href=.>Jumlah</a><br><br>"
            + "<a href=LoginController>Login</a><br><br>";
            String topMenu="<nav><ul>"
            +"<li><a href=.>Home</a></li>"
            +"<li><a href=#>Master Data</a>"
            +"<ul>"
            +"<li><a href=.>Profil</a></li>"
            +"<li><a href=.>Lokasi</a></li>"
            +"</ul>"
            +"</li>"
            +"<li><a href=#>Transaksi</a>"
            +"<ul>"
            +"<li><a href=.>Jumlah</a></li>"
            +"</ul>"
            +"</li>"
            +"<li><a href=#>Keranjang</a>"
            +"<ul>"
            +"<li><a href=.>Item</a></li>"
            +"</ul>"
            +"<li>"
            +"<li><a href=LoginController>Login</a></li>"
            +"</ul>"
            +"</nav>";
            String konten="<br><h1>Welcome To Toko</h1>";
            String userName="";
            
            if (!session.isNew()){
            try {
                userName = session.getAttribute("userName").toString();
            } catch (Exception ex){}
            if (!((userName == null) || userName.equals(""))){
                konten += "<h2>"+userName+"</h2>";
                
                try {
                    menu = session.getAttribute("menu").toString();
                } catch (Exception ex){}
                
                try {
                    topMenu = session.getAttribute("topMenu").toString();
                } catch (Exception ex){}
            }
            }
        %>
    <center>
        <table width="80%" bgcolor="#FFFACD">
            <tr>
                <td colspan="2" align="center">
                    <br>
                    <h2 style="margin-bottom:0px; margin-top:0px;">
                        Toko Kecatikan
                    </h2>
                    <h1 style="margin-bottom:0px; margin-top:0px;">
                        Togs
                    </h1>
                    <h4 style="margin-bottom:0px; margin-top:0px;">
                        Jl. Jasingga No 5, Bogor Selaran, Banten 
                    </h4>
                </td>
            </tr>
            <tr>
            <tr height="400">
                <td width="200" align="center" valign="top" bgcolor="#eeffee">
                    <br>
                    <div id='menu'>
                        <%= menu %>
                    </div>
                </td>
                
                <td align="center" valign="top" bgcolor="#ffffff">
                    <%=topMenu%>
                    <br>
                    <%=konten %>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" bgcolor="eeeeff">
                    <small>
                        Copyright &copy; Durotul Aini<br>
                         Jl. Jasingga No 5, Bogor Selaran, Banten<br>
                    </small>
                </td>
            </tr>
        </table>
    </center>
    </body>
</html>