<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Example 82</title>
  </head>
  <body>
    <c:set var = "cost" scope = "session" value = "${550}"/>
    <c:choose>
      <c:when test="${cost <= 500}">
       Cost is low.
      </c:when>
      <c:when test="${cost > 500 and
                      cost <= 1000}">
        Cost is medium.
      </c:when>
      <c:otherwise>
        Cost is high.
      </c:otherwise>
    </c:choose>
  </body>
</html>
