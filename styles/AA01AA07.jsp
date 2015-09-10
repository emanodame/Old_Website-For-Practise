<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Ordering</title>
  </head>
  <body>
	<h2> Thanks for shopping with us. </h2>
	<h3> You have bought the item.</h3>

    <sql:query var="fa">
      select item_code from inventory 
      where item_code="AA01-007";
    </sql:query>
    <c:out value="You have bought the item" />
    <c:out value="${fa.rows[5]['item_name']}" />
	<c:out value="${fa.rows[0]['item_code']}" />
    <br/>
	
	<a href="Homepage.jsp">Click to return back to homepage.</a>
  
    <%-- how much stock at the start?? --%>
    <sql:query var="result">
      select item__stock_count from inventory 
        where item_code="AA01-007";
    </sql:query>

    <br/>
    
	<c:catch var="transactionException">
      <sql:transaction isolation="serializable">

        <sql:update var="count">
          <%-- update inventory - take one item from stock --%>
          update inventory set item__stock_count = item__stock_count - 1
            where item_code="AA01-007";
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
            ( "AA01-007", 1014 ,1 );
        </sql:update>

      </sql:transaction>
    </c:catch>

    <%-- how much stock at the end?? --%>
    <sql:query var="result">
      select item__stock_count from inventory 
        where item_code="AA01-007";
    </sql:query>

    <br/>
  </body>
</html>
