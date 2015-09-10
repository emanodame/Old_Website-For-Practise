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

    	  
	<div class="content">
    <h2>All Customers in our database.</h2>

	
		 		
	<sql:query var="result">
	select * from customer;
	</sql:query>
			
	<table border="1" style="width:100%;">
	<tr>
	<th>Customer Number</th>
	<th>Surname</th>
	<th>Initials</th>
	<th>First name</th>
	<th>Title(Loc)</th>
	<th>Address 1</th>
	<th>Address 2</th>
	<th>City</th>
	<th>County</th>
	<th>Postcode</th>
	<th>Password</th>
	<th>Passphrase</th>
	</tr>
			  
	<c:forEach var = "row" items = "${result.rows}">
	<tr>
	<td><c:out value = "${row.customer_number}"/></td>
	<td><c:out value = "${row.surname}"/></td>
	<td><c:out value = "${row.initials}"/></td>
	<td><c:out value = "${row.firstname}"/></td>
	<td><c:out value = "${row.title}"/></td>
	<td><c:out value = "${row.address1}"/></td>
	<td><c:out value = "${row.address2}"/></td>
	<td><c:out value = "${row.city}"/></td>
	<td><c:out value = "${row.county}"/></td>
	<td><c:out value = "${row.postcode}"/></td>
	<td><c:out value = "${row.passwd}"/></td>
	<td><c:out value = "${row.passphrase}"/></td>
	</tr>
	</c:forEach>
	</table>
	</div>	

	<div style="position: absolute; top: 0; right: 0; width: 1000px; text-align:right;">
	<%
	if (session.getAttribute( "username" ) == null) { %>
	<a href="loginpage.jsp">Login</a>
	<%} else { %>
	<a href="logout.jsp">Logout</a>
	<% } %>
	</div>
		

    </div>	
	<div class="footer">
    Homepage---------Sign In/Sign Out
    </div>
		  
	</body>
	</html>