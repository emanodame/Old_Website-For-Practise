<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*" %>
<html>
  <head>
    <title>Example 75</title>
  </head>
  <body>
    <%
      Integer hitsCount = 
        (Integer) application.getAttribute( "hitCounter" );
      if( hitsCount == null || hitsCount == 0 )
      {
         /* First visit */
         out.println( "You are the very first visitor to my website!" );
         hitsCount = 1;
      }
      else
      {
         /* return visit */
         out.println( "Welcome back to my website!" );
         hitsCount += 1;
      }
      application.setAttribute( "hitCounter", hitsCount );
    %>
    <p>Total number of visits: <%= hitsCount%></p>
    <p>
      NB: Count increases independently of the browser used and independently
      of the session or user.
    </p> 
  </body>
</html>
