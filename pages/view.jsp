<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../styles/style.css" type="text/css" />
<title>CE154 - JSTL</title>
</head>
<body>
<h1>CE154 - View</h1>
<p style="text-align:center;"><a href="../index.jsp">back to index</a></p>

<sql:query var="result" sql="SELECT * FROM ${param.table}" />
<table>
	<caption>Table: <c:out value="${param.table}"/></caption>
	<tr>
		<c:forEach var="head" items="${result.columnNames}">
			<th><c:out value="${head}"/></th>
		</c:forEach>
	</tr>
	<c:forEach var="row" items="${result.rows}">
		<tr>
			<c:forEach var="head" items="${result.columnNames}">
				<td>
					<c:out value="${row[head]}"/>
				</td>
			</c:forEach>
		</tr>
	</c:forEach>
</table>

</body>
</html>