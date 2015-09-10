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
    <title>Example 78</title>
  </head>
  <body>
    <c:import var = "data" url = "example63.jsp" />
    <c:out value = "${data}" />
  </body>
</html>
