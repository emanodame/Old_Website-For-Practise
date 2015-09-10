<%@ taglib prefix="c" 
    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" 
    uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" 
    uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" 
    uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn"           
    uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Example 79</title>
  </head>
  <body>
    <p>We are in example79.jsp at the moment.</p>
    <c:redirect url = "example80.jsp"/>
    <p>We will never reach this paragraph.</p>
  </body>
</html>
