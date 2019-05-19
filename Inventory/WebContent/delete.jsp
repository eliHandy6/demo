<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%


String url="jdbc:mysql://localhost:3306/tanya";
	String username="root";
	String password="";
	
	
	Connection conn=null;
	Statement stmt=null;
	ResultSet res=null;
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	 conn=DriverManager.getConnection(url,username,password);
	stmt=conn.createStatement();
	String u=request.getParameter("d");
	stmt.executeUpdate("delete from products where ProductName='"+u+"'");
	
	response.sendRedirect("Page.jsp");
	

%>