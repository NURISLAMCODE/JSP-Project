<%-- 
    Document   : registration
    Created on : Aug 29, 2022, 11:07:47 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hello world</title>
    </head>
    <body>
        <sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/stdb" user="root" password="nclc123"/>
        <%
            int id =Integer.parseInt(request.getParameter("id"));
            String name=request.getParameter("name");
            String email =request.getParameter("email");
            String pass =request.getParameter("password");
            
        %>
        <sql:update  var="user" dataSource="${ds}">
            INSERT into student VALUES(<%=id%>,'<%=name%>', '<%=email%>', '<%=pass%>');
        </sql:update>
        <%
            response.sendRedirect("login.jsp");
        %>
    </body>
</html>
