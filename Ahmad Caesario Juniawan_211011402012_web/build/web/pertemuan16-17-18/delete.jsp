<%-- 
    Document   : delete
    Created on : Dec 15, 2023, 6:03:32 PM
    Author     : Digito
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@page import="java.sql.*"%>
         <%
            String nim=request.getParameter("nim");
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/unpamjavaweb","root","");
            Statement st = conn.createStatement();
            int i=st.executeUpdate("DELETE FROM mahasiswa WHERE nim="+nim+"");
            response.sendRedirect("index2.jsp");
            } catch (Exception e) {
            response.sendRedirect("index2.jsp");
            }
            %>
    </body>
</html>