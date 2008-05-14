<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>Nested ForEach Update</title>
</head>
<body>
<html:errors/>
<s:form action="/nestedForeachUpdate">
<table border="1">
<c:forEach var="mapItems" varStatus="s" items="${mapItemsItems}">
<tr>
<c:forEach var="m" varStatus="s2" items="${mapItems}">
<td>
<input type="text"
  name="mapItemsItems[${s.index}][${s2.index}].id"
  value="${f:h(m.id)}"/>
</td>
<td>
<input type="text"
  name="mapItemsItems[${s.index}][${s2.index}].name"
  value="${f:h(m.name)}"/>
</td>
</c:forEach>
</tr>
</c:forEach>
</table><br />
<input type="submit" name="submit" value="サブミット"/>
</s:form>
</body>
</html>