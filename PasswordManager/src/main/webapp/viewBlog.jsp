<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="p1.DBcon"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Madimi+One&display=swap"
      rel="stylesheet"
    />
<link rel="stylesheet" href="./styles.css"/>
<style>
p{
width:600px
}
</style>
</head>
<body>
<%

DBcon.connect();

String title=request.getParameter("title");

String query1="select * from post where title='"+title+"' and id="+DBcon.currentid;

ResultSet es=DBcon.st.executeQuery(query1);

if(es.next()) {
	String t = es.getString("title");
	String c = es.getString("blog");
	out.println("<h1>"+t+"</h1>");
	out.println("<p>"+c+"</p>");
}


%>
</body>
</html>