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
    <title>Example 77</title>
  </head>
  <body>
    <c:set var = "salary" scope = "session" value = "${2000*2}"/>
    <p>Value of variable "salary": <c:out value = "${salary}"/></p>
    <c:remove var = "salary" />
    <p>After remove, value of "salary" is: <c:out value="${salary}"/></p>
  </body>
</html>
