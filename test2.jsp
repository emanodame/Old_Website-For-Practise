<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	<meta http-equiv="Content-Type"
	content="text/html; charset=utf-8" />
	<title> Erehwon | Books! </title>
	<link rel="stylesheet" href="maincss.css" type="text/css" />
	</head>		   


<body>
	
<sql:query var="result">
select * from inventory;
</sql:query>


<table id = "ordertable" class="ordertable" border="1" cellpadding="5">
<tr>
<th>p</th>
<th>Image</th>
<th>Desc</th>
<th>Price</th>
</tr>
<c:forEach var="row" items="${results.row}">
<form method="post" action='functions.jsp>
<tr>
<td> <c:out value="${row.item_name}" /> </td>
<td> <fmt:formatNumber value="${row.item_price}" type="currency"/> </td>

<input type="hidden" name="item" value="${row.item_code}">
<input type="hidden" name="price" value="${row.item_price}">



</form>
</body>
</html>