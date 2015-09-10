 <%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
  <head>
    <title>All Orders</title>
	<meta http-equiv="Content-Type"
	content="text/html; charset=utf-8" />
	<meta charset="utf-8">
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
	 
	 <div class="left">
    <div id="navbar2" class="center">
    <ul class="navbar2">
    <li class="navbar2"><a class="navbar2" href="mindex.jsp">Homepage</a></li>
    </ul>
    </div>
    </div>
       
	<div class="content">
  <h2> Past/Present Orders</h2>
	
	<sql:query var="result">
	select * from order_item;
	</sql:query>
			
    	
	<br>
	
	<sql:query var="result">
	select * from customer_order;
	</sql:query>
			
	<table border="1" style="width:100%;">
	<tr>
	<th>Order Number</th>
	<th>Order Date</th>
	<th>Delivered?</th>
	<th>Shipping Date</th>
	<th>Customer Number</th>
	</tr>
			  
	<c:forEach var = "row" items = "${result.rows}">
	<tr>
	<td><c:out value = "${row.order_number}"/></td>
	<td><c:out value = "${row.order_date}"/></td>
	<td><c:out value = "${row.delivered}"/></td>
	<td><c:out value = "${row.shipping_date}"/></td>
	<td><c:out value = "${row.customer_number}"/></td>
	</tr>
	</c:forEach>
	</table>
	</div>	
    
	
	<br>
	
	</body>
</html>
