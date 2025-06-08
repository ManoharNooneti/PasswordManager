<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="p1.DBcon"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
DBcon.connect();

int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String password = request.getParameter("password");

String in= "insert into users values("+id+", '"+name+"','"+password+"')";


DBcon.st.executeUpdate(in);

out.println("User Is Created");
%>
</body>
</html>