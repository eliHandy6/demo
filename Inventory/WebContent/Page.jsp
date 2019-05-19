
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dash Board</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	
	
</head>
<body>



<div class="row" style="margin-left:30px;">

<h1 style="color:"><center>LIQUOR CENTER</center></h1>
<h2 style="color:"><center>Inventory System</center></h2>


</div>

<div class="row">
<div class="col-md-6" >

<h3 style ="color:red"><center>Products in stock</center> </h3>

<table class="table  table-bordered table-striped table-hover">
  <thead>
    <tr>
		<th scope="col">Date</th>
      <th scope="col">Product Name</th>
      <th scope="col">Quantity</th>
      <th scope="col"> Unit Price</th>
      <th scope="col" class="text-center">Action</th>
     
    </tr>
  </thead>
 
  <%
 try{
	 
	 String url="jdbc:mysql://localhost:3306/tanya";
		String username="root";
		String password="";
		
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet res=null;
		
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn=DriverManager.getConnection(url,username,password);
		stmt=conn.createStatement();
		String data="SELECT * from products order by Date";
		res=stmt.executeQuery(data);
		
		while(res.next()==true ){
	 
 
 
  %>
   <tbody>
 	 <tr>
 	 	<td><%=res.getString (1)%></td>
	   	<td><%=res.getString("Productname") %></td>
	    <td><%=res.getInt(3) %></td>
	   <td><%=res.getDouble(4) %></td>
	  <td class="text-center">
	  
	   <a href="edit.jsp?u=<%=res.getString("Productname") %>" class="btn btn-warning">EDIT</a>
	   <a href="delete.jsp?d=<%=res.getString("Productname") %>" class="btn btn-danger">DELETE</a>
	   
	  </td>
         
  
  		</tr>
  		 </tbody>
  <%
	}
	}catch(Exception ex){
		out.println("error1");
	}finally{
		
	}
  
  %> 
 
</table>
</div>
<div class="col-md-6">

<a href="AddProduct.jsp" class="btn btn-primary"> ADD NEW PRODUCT</a>

</div>

</div>


	 
        
</body>
</html>