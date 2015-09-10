<%@ taglib
 uri="http://java.sun.com/jsp/jstl/core"
 prefix="c" %>
<%@ taglib
 uri="http://java.sun.com/jsp/jstl/sql"
 prefix="sql" %>  
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type"
	content="text/html; charset=utf-8" />
	<title> Erehwon | Number 1 Online shopping site!</title>
	<link rel="stylesheet" href="maincss.css" type="text/css" />
	</head>
 
     <div id ="navbar1" class="center">
    <ul class="navbar1">
		<li class="navbar1"><a class="navbar1" href="DVDs.jsp">DVDs</a></li>
        <li class="navbar1"><a class="navbar1" href="CDs.jsp">CDs</a></li>
        <li class="navbar1"><a class="navbar1" href="Games.jsp">Games</a></li>
        <li class="navbar1"><a class="navbar1" href="Books.jsp">Books</a></li>
     </ul>
     </div>
	 
   <body>
   <div class="container">
   <div class="header">
   <h1 class="header">
   Welcome to Erehwon! </h1>
   </div>
   
    <div class="content">
    <h2>Page will connect to database and display all the Basket</h2>
    <p>Here will be the display of some basket items.
	</p>
	
	<sql:query var="result">
	select * from inventory;
	</sql:query>	
	
	<table border="1" width="100%">
	<tr>
	<th>Code</th>
	<th>Price</th>
	<th>Item Stock</th>
	<th>Order Stock</th>
	<th>Remove Item</th>
	</tr>
	


    <div class="left">
    <div id="navbar2" class="center">
    <ul class="navbar2">
    <li class="navbar2"><a class="navbar2" href="Homepage.jsp">Homepage</li></a>
    </ul>
    </div>
    </div>
	
	<div class="footer">
    Homepage---------Sign In/Sign Out
    </div>
    </div>
	
	<div style="position: absolute; top: 0; right: 0; width: 1000px; text-align:right;">
	<%
	if (session.getAttribute( "username" ) == null) { %>
	<a href="loginpage.jsp">Login</a>
	<%} else { %>
	<a href="logout.jsp">Logout</a>
	<% } %>
	</div>
	
</body>
</html>