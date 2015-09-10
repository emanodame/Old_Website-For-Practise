<%@ taglib
 uri="http://java.sun.com/jsp/jstl/core"
 prefix="c" %>
<%@ taglib
 uri="http://java.sun.com/jsp/jstl/sql"
 prefix="sql" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Refresh" content="4;url=Homepage.jsp"> //redirect after 4 seconds.
 <head>
 <title>Example 88</title>
 </head>
 <body>
 <h1>
 Now logged in as:
 <%= session.getAttribute( "username" ) %>
 </h1>
 <p>
 From now on, the above user is logged on
 from one page to the next. This
 continues until they
 <a href="example89.jsp">log out</a>.
 </p>
 </body>
</html> 