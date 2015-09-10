 <%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Ordering</title>
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
  
  
  <div class="container">
   <div class="header">
   <h1 class="header">
   Welcome to Erehwon! </h1>
   </div>

    <div class="left">
    <div id="navbar2" class="center">
    <ul class="navbar2">
    <li class="navbar2"><a class="navbar2" href="index.jsp">Homepage</a></li>
    </ul>
    </div>
    </div>
	
	<%
	if (session.getAttribute( "username" ) == null) { %>
	<a href="loginpage.jsp">Please Login to buy this item.</a>

	<%} else { %>                                               
	

	
	<sql:query var="stock">
	select * from inventory where item_code='${param.itemCode}' 
	</sql:query>
	
	<c:choose>
		<c:when test="${stock.rows[0].item__stock_count <= 0}">
			This item is currently out of stock. Please check again later.
		</c:when>
		<c:otherwise>
		
		
			<h2> Thanks for shopping with us. </h2>
			<h3> You have bought the item.</h3>
			
				<sql:query var="fa">
			  select item_code from inventory 
			  where item_code='${param.itemCode}';
			</sql:query>
			<c:out value="You have bought the item:" />
			<c:out value="${fa.rows[5]['item_name']}" />
			<c:out value="${fa.rows[0]['item_code']}" />
			<br/>

			
			<a href="orderreview.jsp">Click here to review your past/present orders</a>
			
			<c:catch var="transactionException">

				<sql:update var="count">
				  <%-- update inventory - take one item from stock --%>
				  update inventory set item__stock_count = item__stock_count - 1
					where item_code='${param.itemCode}';
				</sql:update>

				<sql:update var="count">
				  <%-- add new customer_order --%>
				  insert into customer_order 
				  (order_date,delivered,shipping_date,customer_number) values ("2015-02-24 11:42:30",1,"2015-02-25 11:42:30", 5789);

				</sql:update>

				<sql:update var="count">
				  <%-- add new order_item --%>
				  insert into order_item values
				  select max(order_number) as order_number from customer_order;
					('${param.itemCode}' ,1 );
				</sql:update>

			</c:catch>

			<%-- how much stock at the end?? --%>
			<sql:query var="result">
			  select item__stock_count from inventory 
				where item_code='${param.itemCode}';
			</sql:query>
	
	</c:otherwise>
    </c:choose>
	<%}%>

    </div>

	
	<div style="position: absolute; top: 0; right: 0; width: 1000px; text-align:right;">
	<%
	if (session.getAttribute( "username" ) == null) { %>
	<a href="loginpage.jsp">Login</a>
	<%} else { %>
	<a href="logout.jsp">Logout</a>
	<% } %>
	</div>	
	



    <br/>


	
  </body>
</html>
