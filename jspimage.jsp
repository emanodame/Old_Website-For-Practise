 <%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Ordering</title>
  </head>
 <meta http-equiv="Content-Type"
	content="text/html; charset=utf-8" />
	<title> Erehwon | Number 1 Online shopping site!</title>
	<link rel="stylesheet" href="maincss.css" type="text/css" />
	</head>

    
	 <sql:query var="fa">
     select item_image_loc from inventory 
     where item_code='${param.itemCode}';
    </sql:query>
    <c:out value="You have bought the item:" />
    <c:out value="${fa.rows[5]['item_name']}" />
	<c:out value="${fa.rows[0]['item_code']}" />
    <br/>

	


    <div class="footer">
    Homepage---------Sign In/Sign Out
    </div>
    </div>

	
	<div style="position: absolute; top: 0; right: 0; width: 1000px; text-align:right;">
	<% if( session.isNew() ){%>
		<a href="loginpage.jsp">Login<</a>
	<%} else { %>
		<a href="logout.jsp">Logout</a>
	<% } %>
	</div>
	



    <br/>

	
  </body>
</html>
