 <%@ tagliburi="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ tagliburi="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
 <head>
	<meta http-equiv="Content-Type"
	content="text/html; charset=utf-8" />
	<meta charset="utf-8">
	<title>Erehwon | Manager Login</title>
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
		<h1 class="header"> Manager login! </h1>
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
		<form action="managerlogin.jsp"
			  name="userform"
			  onsubmit="return AllowAlphabet() && emptypassword();"
			  method="POST">
		Customer Number:
		<input type="text" name="username" onkeyup="AllowAlphabet()">
		<script type="text/javascript">document.onload = ctck();</script>
		<br />
		Password:
		<input type="password" name="password" />
		<br />
		<input type="submit" value="Login" />
		</form>	
		</div>


		
		<div class="footer">
		Homepage                   Sign In/Sign Out
		</div>
		

 <%
 if ( session.isNew() )
 {
 out.println(
 "" ); 
 }
 else
 {
 session.invalidate();
 %>
 <jsp:forward page="managerlogin.jsp" />
 <%
 }
 %>
 <%
 if ( request.getParameter(
 "username" ) == null ) 
 {
 out.println(
 "" );
 }
 else
 {
 pageContext.setAttribute(
 "customerNumberString",
 request.getParameter( "username" ) );
 pageContext.setAttribute(
 "customerPasswordString",
 request.getParameter( "password" ) );
 %>
 <sql:query var="result">
 select * from manager where
 manager_number =
 "${customerNumberString}" and
 passwd =
 MD5(
 "${customerPasswordString}" );
 </sql:query>
 <c:set var = "numResults"
 scope = "page"
 value = "${result.rowCount}"/>
 <%
 Object o =
 pageContext.getAttribute(
 "numResults" );
 Integer obj = new Integer( 1 );
 int i = obj.intValue();
 if ( pageContext.getAttribute(
 "numResults" ).equals( obj ) )
 {
 String usernameID = new String( "username" );
 String usernameVAL =
 new String( request.getParameter(
 "username" ) );
 session.setAttribute(
 usernameID, usernameVAL );
 %>
 <jsp:forward page="redirectpage1.jsp" />
	
 <%
 }
 else
 {
 out.println("WRONG PASSWORD, PLEASE TRY AGAIN" );
 }
 }
 %>
 
	
		<script type="text/javascript">
		function AllowAlphabet(){
		if (!userform.username.value.match(/^[0123456789]+$/) && userform.username.value !="")
		{
		userform.username.value="";
		userform.username.focus();
		alert("Please enter only numerials for the Customer number.");
			return false;
		}
		return true;
		}
		</script>
		
		<script type="text/javascript">
		function emptypassword(){
		var pwd = userform.password.value;
		if(pwd=="")
		{
		alert("Please enter a password");
		return false;
		}
		return true;
		}
		</script>



 </body>
</html> 