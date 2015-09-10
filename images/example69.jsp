<!DOCTYPE html>
<html>
  <head>
    <title>Example 69</title>
  </head>
  <body>
    <%!
      java.util.Calendar calendar = java.util.Calendar.getInstance();
      int day = calendar.get( java.util.Calendar.DAY_OF_WEEK );
    %>
    <% 
      switch( day )
      {
        case 1:  out.println( "It\'s Sunday." ); break;
        case 2:  out.println( "It\'s Monday." ); break;
        case 3:  out.println( "It\'s Tuesday." ); break;
        case 4:  out.println( "It\'s Wednesday." ); break;
        case 5:  out.println( "It\'s Thursday." ); break;
        case 6:  out.println( "It\'s Friday." ); break;
        default: out.println( "It's Saturday." );
      }
    %>
  </body>
</html>
