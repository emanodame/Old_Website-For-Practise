 <%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type"
	content="text/html; charset=utf-8" />
	<meta charset="utf-8">
	<title> Erehwon | Manager Mode </title>
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
    <h1 class="header"> Welcome to Erehwon! </h1>
    </div>
      
	<div class="left">
    <div id="navbar2" class="center">
    <ul class="navbar2">
    <li class="navbar2"><a class="navbar2" href="index.jsp">Homepage</a></li>
    </ul>
    </div>
    </div>	

	<%
	if (session.getAttribute( "username" ) == ("100")) { %>
	<a href="loginpage.jsp">Please Login to buy this item.</a>
	
	<%} else { %> 
    	  
	<div class="content">
    <h2>All items in our database.</h2>

	
		 		
	<sql:query var="result">
	select * from inventory;
	</sql:query>
			
	<table border="1" style="width:100%;">
	<tr>
	<th>Item Code</th>
	<th>Item Name</th>
	<th>Item Description</th>
	<th>Item Author</th>
	<th>Item Image(Loc)</th>
	<th>Item Group</th>
	<th>Item Price</th>
	<th>Item Stock Loc</th>
	<th>Item Stock Count</th>
	<th>Item Order Count</th>
	</tr>
			  
	<c:forEach var = "row" items = "${result.rows}">
	<tr>
	<td><c:out value = "${row.item_code}"/></td>
	<td><c:out value = "${row.item_name}"/></td>
	<td><c:out value = "${row.item_description}"/></td>
	<td><c:out value = "${row.item_author}"/></td>
	<td><c:url value = "${row.item_image_loc}"/>"</td>
	<td><c:out value = "${row.item_group}"/></td>
	<td><c:out value = "${row.item_price}"/></td>
	<td><c:out value = "${row.item_stock_location}"/></td>
	<td><c:out value = "${row.item__stock_count}"/></td>
	<td><c:out value = "${row.item_order_count}"/></td>
	</tr>
	</c:forEach>
	</table>
	</div>	
	<% } %>
	<div style="position: absolute; top: 0; right: 0; width: 1000px; text-align:right;">
	<%
	if (session.getAttribute( "username" ) == null) { %>
	<a href="loginpage.jsp">Login</a>
	<%} else { %>
	<a href="logout.jsp">Logout</a>
	<% } %>
	</div>
		

    </div>	

		  
	</body>
	</html>