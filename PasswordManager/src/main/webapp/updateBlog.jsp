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

String title=request.getParameter("title");
String nt=request.getParameter("nt");
String nb=request.getParameter("nb");

String ut="update passwords set password='"+nt+"' where name='"+title+"' and id="+DBcon.currentid;

if (DBcon.st.executeUpdate(ut)>0)
	response.sendRedirect("adminIndex.html");




%>
</body>
</html>