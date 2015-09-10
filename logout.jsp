 <%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Refresh" content="3; url=index.jsp"> 
<title>Redirecting to Homepage</title>
<link rel="stylesheet" href="maincss.css" type="text/css" />
 </head>
  <body>
  <%
	session.invalidate();
	%>


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
   <h2> You have successfully logged out. Redirecting to Homepage in 3 seconds.</h2>
  <br>
   <h3> Click <a href="index.jsp">here</a> if you don't get redirected automatically.</h3>
	</div>
  </body>
</html>

