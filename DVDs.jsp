 <%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type"
	content="text/html; charset=utf-8" />
	<meta charset="utf-8">
	<title> Erehwon | DVDs! </title>
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
	</div>
	

	<div class="left">
    <div id="navbar2" class="center">
    <ul class="navbar2">
    <li class="navbar2"><a class="navbar2" href="index.jsp">Homepage</a></li>
    </ul>
    </div>
    </div>		

    <div class="content">
    <h2>Here is a list of DVDs for sale!</h2>

		 		
	<sql:query var="result">
	select * from inventory where item_group=1004;
	</sql:query>
	
			
	<table border="1" style="width:100%;">
	<tr>
	<th>Code</th>
	<th>Author</th>
	<th>Name</th>
	<th>Description</th>
	<th>Price</th>
	
	</tr>
			  
	<c:forEach var = "row" items = "${result.rows}">
	<tr>
	<td><c:out value = "${row.item_code}"/></td>
	<td><c:out value = "${row.item_author}"/></td>
	<td><c:out value = "${row.item_name}"/></td>
	<td><c:out value = "${row.item_description}"/></td>
	<td><c:out value = "${row.item_price}"/></td>
	<td> <a href="jsporder.jsp?itemCode=${row.item_code}">Buy! </a> </td>
	<td> <img src="<c:url value = "${row.item_image_loc}"/>" height="50" style="border:none; background:none; overflow:none; width:35%" alt="Connection to mySQL for pictures"/>   </td>
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

	
	<div class="footer">
    Homepage                   Sign In/Sign Out
    </div>
  	
</body>
</html>

