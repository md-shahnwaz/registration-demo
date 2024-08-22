<%@page import="connect.DbManager"%>
<%
    String name = request.getParameter("name");
    String contact = request.getParameter("contact");
    String email = request.getParameter("email");
    DbManager db = new DbManager();
    String query = "insert into reg values ('"+name+"','"+contact+"','"+email+"')";
    if (db.insertUpdateDelete(query) == true){
        out.print("<script>alert('success');window.location.href='index.jsp';</script>");
    }else{
        out.print("<script>alert('failed');window.location.href='index.jsp';</script>");
    }
%>