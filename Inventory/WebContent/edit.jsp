<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body style=" background-color:#66ffff">
<div class="row" >


<h2 style="color:"><center>LIQUOR CENTER</center></h2>
<h3 style="color:"><center>EDIT PRODUCT BELOW</center></h3>
</div>
<%


String url="jdbc:mysql://localhost:3306/tanya";
	String username="root";
	String password="";
	
	PreparedStatement state;
	Connection conn=null;
	Statement stmt=null;
	ResultSet res=null;
	
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	 conn=DriverManager.getConnection(url,username,password);
	 

%>


 <form action="" method="post">
 <%
 
stmt=conn.createStatement();
String u=request.getParameter("u");


String data="select * from products where ProductName='"+u+"'";
res=stmt.executeQuery(data);

while (res.next()){
	

 
 
 
 %>
<div class="container " style="width:40%">
<div class="card mx-auto" style="width: 50rem;">
 <img src="" class="card-img-top mx-auto"  alt="...">
  
  <div class="card-body">
	  
	   
	<div class="jumbotron" style="height:60% ;width:120%" >
 	
 		
 					<div class="form-group">
 						<label class="control-label" for ="date">Date</label>
 					    <input type="date" style="padding:30px" name="date" class="form-control" value="<%=res.getString("Date") %>">

 					</div>
 					<div class="form-group">
 						<label class="control-label" for ="product">Product</label>
 					    <input type="text" style="padding:20px"name="product" class="form-control" value="<%=res.getString("Productname") %>">

 					</div>
 					
 					<div class="form-group">
 						<label class="control-label" for ="productQuantity">Product Quantity</label>
 					    <input type="number" name="productQuantity" class="form-control" value="<%=res.getInt("Quanity") %>">

 					</div>
 					
 					<div class="form-group">
 						<label class="control-label" for ="productPrice">Product Price</label>
 					    <input type="number" name="productPrice" class="form-control"  value="<%=res.getDouble("Price") %>">

 					</div>
 					<%
}
 					
 					%>
 					
 			
 					<button type="submit" class="btn btn-warning">UPDATE</button>
 					<a href="Page.jsp" class="btn btn-default">BACK</a>
 					
 					</div>
 				</div>
 			</div>
 		</div>
 		
		 

  

</form>




</body>
</html>

<%

String a=request.getParameter("date");
String b=request.getParameter("product");
String c=request.getParameter("productQuantity");
String d=request.getParameter("productPrice");

if(a!=null ||a!=""&& b!=null ||b!=""&& c!= null||c!=""&& d!=null||d!=""){
	
	try{
		 
		if(Integer.parseInt(c)>0 && Integer.parseInt(d)>0){
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String sql="update products set Date=?, Productname=?, Quanity=?, Price=? where ProductName='"+u+"'";
			
			state=conn.prepareStatement(sql);
			state.setString(1,a);
			state.setString(2,b);
			state.setString(3,c);
			state.setString(4,d);
			
			state.executeUpdate();
			
			response.sendRedirect("Page.jsp");
	}
	}
	catch(Exception e){
		
	}
	}

%>
