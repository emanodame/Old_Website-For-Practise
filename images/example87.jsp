<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Example 87</title>
  </head>
  <body>
    <h3>Basic login with hardcoded username=richard password=abcd</h3>
    <%
      if ( session.isNew() )
      {
        out.println( "New session starting</br" );
      }
      else
      {
        session.invalidate();
    %>
        <jsp:forward page="example87.jsp" />
    <%
      }
    %>

    <%= request.getParameter( "username" )%>
    <%= request.getParameter( "password" )%>
    </br>

    <% 
      if ( request.getParameter( "username" ) == null )
      {
        out.println( "Please login:" );
      }
      else if ( request.getParameter( "username" ).equals( "richard" ) &&
                request.getParameter( "password" ).equals( "abcd" ) )
      {
        out.println( "Login successful" );
        String usernameID = new String( "username" );
        String usernameVAL = new String( "richard" );
        session.setAttribute(
          usernameID, usernameVAL );
    %>
        <jsp:forward page="example88.jsp" />
    <%
      }
      else
      {
        out.println( "Login failed, please try again:" );
      }
    %>

    <form action="example87.jsp" method="POST">
      Username: <input type="text" name="username">
      <br />
      Password: <input type="text" name="password" />
      <br />
      <input type="submit" value="Login" />
    </form>
  </body>
</html>
