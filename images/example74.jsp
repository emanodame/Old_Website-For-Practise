<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*" %>
<%
   if (session!=null)
   {
      session.invalidate();
   }
%>
<html>
  <head>
    <title>Example 74</title>
  </head>
  <body>
    <h1>Session Terminated</h1>
  </body>
</html>
