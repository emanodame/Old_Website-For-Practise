<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Example 96</title>
  </head>
  <body>
    <c:catch var ="catchException">
      <% int x = 5/0;%>
    </c:catch>

    <c:if test = "${catchException != null}">
      <p>
        The exception is : ${catchException}
      </p>
      <p>
        The exception message is: ${catchException.message}
      </p>
    </c:if>
  </body>
</html>
