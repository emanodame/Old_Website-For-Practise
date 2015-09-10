<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Example 84</title>
  </head>
  <body>
    <h1>Database Access Demonstration</h1>

    <sql:query var="result">
      select item_description from inventory where item_code="AA01-002";
    </sql:query>

    <c:out value="${result.rows[0]['item_description']}" />
  </body>
</html>
