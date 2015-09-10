<!DOCTYPE html>
<html>
  <head>
    <title>Example 71</title>
  </head>
  <body>
    <%! int fontSize = 1; %> 
    <%
      while ( fontSize <= 6 )
      {
    %>
        <font color="green" size="<%= fontSize %>">
          Text Size Changing
        </font>
        <br/>
    <%
        fontSize++;
      }
    %>
  </body>
</html>
