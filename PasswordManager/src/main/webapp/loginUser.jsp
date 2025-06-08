<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="p1.DBcon"%>
    <%@page import="java.sql.*"%>
    <%@page import="p1.PassGen"%>
    
<%@ page import = "java.time.LocalDate" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheets" href="styles.css"/>
<title>Insert title here</title>
</head>
<body>

<%
DBcon.connect();

int id = Integer.parseInt(request.getParameter("id"));
String password = request.getParameter("password");

String query1="select *from users where idusers="+id;

ResultSet es=DBcon.st.executeQuery(query1);

boolean flag = false;

if(es.next()) {
    	String i = es.getString("idusers");
    	String p = es.getString("password");
    	if(p.equals(password)){
    		
    		flag=true;
    	}
    	
    	else{
    		out.println("Invalid Password");}
}
else{
	out.println("No account Found");
}

if (flag){
	DBcon.currentid=id;
	String qu = "select * from passwords where id="+id;
	
	LocalDate currentDate = LocalDate.now();
	int dayOfMonth = currentDate.getDayOfMonth();
	ResultSet rs = DBcon.st.executeQuery(qu);
	
	try{
		while(rs.next()){
			int toDay = rs.getInt("day");
    		if ( toDay != dayOfMonth && rs.getInt("day") != 0){
    			
    			out.println("Ok");
        		String pas = rs.getString("name");
        		String ut = "UPDATE passwords SET password='" + PassGen.generatePassword(12) + "', day=" + dayOfMonth + " WHERE name='" + pas + "' AND id=" + id;
        		//String ut="update passwords set password='"+PassGen.generatePassword(12)+"', set day="+dayOfMonth+" where name='"+pas+"' and id="+id;
        		DBcon.st.executeUpdate(ut);
    		}

	}}
	catch(Exception e){
		out.println(e);
	}
	response.sendRedirect("adminIndex.html");
}
%>
</body>
</html>