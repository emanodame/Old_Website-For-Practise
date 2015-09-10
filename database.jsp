 <%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
	<%
	if (session.getAttribute( "username" ) == ("100")) { %>
	<a href="loginpage.jsp">Please Login to buy this item.</a>
	<%} else { %> 
	<head>
	<meta http-equiv="Content-Type"
	content="text/html; charset=utf-8" />
	<meta charset="utf-8">
	<title> Erehwon | Number 1 Online shopping site!</title>
	<link rel="stylesheet" href="maincss.css" type="text/css" />
	</head>
	   <body>
     <div id ="navbar1" class="center">
    <ul class="navbar1">
		<li class="navbar1"><a class="navbar1" href="DVDs.jsp">DVDs</a></li>
        <li class="navbar1"><a class="navbar1" href="CDs.jsp">CDs</a></li>
        <li class="navbar1"><a class="navbar1" href="Games.jsp">Games</a></li>
        <li class="navbar1"><a class="navbar1" href="Books.jsp">Books</a></li>
     </ul>
     </div>
      


   <div class="container">
   <div class="header">
   <h1 class="header">
   Welcome Manager! </h1>
   </div>
   </div>

    <div class="left">
    <div id="navbar2" class="center">
    <ul class="navbar2">
    <li class="navbar2"><a class="navbar2" href="index.jsp">Homepage</a></li>
    </ul>
    </div>
    </div>
	       

    <div class="content">
    <a href="customerorders.jsp">All Orders</a>
	<br>
	<a href="orderpage.jsp">Customer Orders</a>
	<br>
	<a href="inventory.jsp">Inventory</a>
	<br>
	<a href="customer.jsp">Customers</a>




	
	<div style="position: absolute; top: 0; right: 0; width: 1000px; text-align:right;">
	<%
	if (session.getAttribute( "username" ) == null) { %>
	<a href="loginpage.jsp">Login</a>
	<%} else { %>
	<a href="logout.jsp">Logout</a>
	<% } %>
	</div>
	<%}%>
	
	</div>
    <div class="footer">
    Homepage---------Sign In/Sign Out
    </div>
    
</body>
</html>