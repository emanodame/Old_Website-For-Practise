<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Example 97</title>
  </head>
  <body>
    <%-- how much stock at the start?? --%>
    <sql:query var="result">
      select item__stock_count from inventory 
        where item_code="AA01-002";
    </sql:query>
    <c:out value="Before updates, item__stock_count=" />
    <c:out value="${result.rows[0]['item__stock_count']}" />
    <br/>
    <c:catch var="transactionException">

        <sql:update var="count">
          <%-- update inventory - take one item from stock --%>
          update inventory set item__stock_count = item__stock_count - 1
            where item_code="AA01-002";
        </sql:update>

        <sql:update var="count">
          <%-- add new customer_order --%>
          insert into customer_order values
            ( 1014, "2015-02-24 11:42:30", 1, 
              "2015-02-25 11:42:30", 5789 );
        </sql:update>

        <sql:update var="count">
          <%-- add new order_item --%>
          insert into order_item values
            ( "AA01-002", 1014 ,1 );
        </sql:update>

    </c:catch>

    <%-- how much stock at the end?? --%>
    <sql:query var="result">
      select item__stock_count from inventory 
        where item_code="AA01-002";
    </sql:query>
    <c:out value="After updates, item__stock_count=" />
    <c:out value="${result.rows[0]['item__stock_count']}" />

    <br/>
    <c:out value= "Exception is \"${transactionException}\"" />
  </body>
</html>
