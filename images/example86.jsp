<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Example 86</title>
  </head>
  <body>
    <h1>Database Update then Access Demonstration</h1>

    <sql:update>
      insert into inventory values
      ( 'AA01-008', 'JSTL Explained', 'Very good book', 'Jane Smith',
        NULL, 1001, '8.99', 'A7-34', 4,10 );

    </sql:update>

    <sql:query var="result">
      select * from inventory;
    </sql:query>

    <table border="1" width="100%">
      <tr>
        <th>Code</th>
         <th>Author</th>
         <th>Description</th>
      </tr>

      <c:forEach var = "row" items = "${result.rows}">
        <tr>
          <td><c:out value = "${row.item_code}"/></td>
          <td><c:out value = "${row.item_author}"/></td>
          <td><c:out value = "${row.item_description}"/></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
