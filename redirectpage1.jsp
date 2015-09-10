 <%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
 <head>
<meta http-equiv="Refresh" content="4; url=mindex.jsp"> 
	<meta charset="utf-8">

 <title>Successful Login - Welcome</title>
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
 <h1>
 You are now logged in as:
 <%= session.getAttribute( "username" ) %>
 </h1>
 <h3>
 Welcome Manager!-Redirecting to Homepage in 4 seconds.
 </h3>

 <h3> Click <a href="mindex.jsp">here</a> if you don't get redirected automatically.</h3>
 </div>
 </body>
 
</html> 