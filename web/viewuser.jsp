<%-- 
    Document   : viewuser
    Created on : 16 May, 2024, 7:38:56 AM
    Author     : mshah
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
    </head>
    <body class="bg-info">
        <table class="table table-bordered mt-5" style="width: 60%; margin: auto">
            <tr>
                <th>Name</th>
                <th>Contact</th>
                <th>Email</th>
            </tr>
            <% 
                DbManager db = new DbManager();
                String query = "select * from reg";
                ResultSet rs = db.select(query);
                while (rs.next()){
            %>
            <tr>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("contact")%></td>
                <td><%=rs.getString("email")%></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
