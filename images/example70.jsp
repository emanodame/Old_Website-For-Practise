<!DOCTYPE html>
<html>
  <head>
    <title>Example 70</title>
  </head>
  <body>
    <%! int fontSize; %> 
    <%
      for ( fontSize = 1; fontSize <= 6; fontSize++ )
      {
    %>
        <font color="green" size="<%= fontSize %>">
          Text Size Changing
        </font>
        <br/>
    <%
      }
    %>
  </body>
</html>
