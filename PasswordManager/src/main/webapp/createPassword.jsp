<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ page import="p1.DBcon"%>
<%@page import="java.sql.*"%>
<%@ page import = "java.time.LocalDate" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
DBcon.connect();
String title = request.getParameter("title");
String blog = request.getParameter("blog");
LocalDate currentDate = LocalDate.now();
int dayOfMonth = currentDate.getDayOfMonth();

String s[] = request.getParameterValues("hour");

try{
	int l = s.length;
}catch(Exception e){
	dayOfMonth=0;
}


String in= "insert into passwords values("+DBcon.currentid+", '"+title+"','"+blog+"',"+dayOfMonth+")";
DBcon.st.executeUpdate(in);
out.println("Password Is Stored");
%>
</body>
</html>