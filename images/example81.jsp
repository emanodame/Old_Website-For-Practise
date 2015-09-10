<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Example 81</title>
  </head>
  <body>
    <c:set var = "cost" scope = "session" value = "${4000}"/>
    <c:if test = "${cost > 2000}">
      <p>Cost is: <c:out value = "${cost}"/><p>
    </c:if>
  </body>
</html>
