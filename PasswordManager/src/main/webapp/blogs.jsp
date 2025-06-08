<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="p1.DBcon"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Madimi+One&display=swap"
      rel="stylesheet"
    />
<link rel="stylesheet" href="./styles.css"/>
<title>Blogging</title>
</head>
<style>
    p {
     font-weight: 10;
     width: 500px;
     higth: 40px;
     white-space: nowrap;
     overflow: hidden;
     text-overflow: ellipsis;

    }
</style>
<body>

<h1>Welcome to blogs</h1>



<%
DBcon.connect();

String query1="select * from passwords where name IS NOT NULL and id="+DBcon.currentid;

ResultSet es=DBcon.st.executeQuery(query1);

while(es.next()) {	
    	String title= es.getString("name");
    	String content = es.getString("password");
    	
    	if(!title.equals("null")){
    	
    	out.println("<form action='viewBlog.jsp' method='post'>");
    	out.println("<h2>"+title+"</h2> ");
    	out.println("<p>"+content+"</p>");
    	out.println("<input type='hidden' name='title' value='"+title+"'/>");
    	out.println("</form>");}
}
%>
</body>
</html>