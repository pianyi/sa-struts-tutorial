<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>Form Second</title>
</head>
<body>
<html:errors/>
<s:form action="/form">
<table>
<tr><td>First</td><td>${f:h(first)}</td></tr>
<tr><td>Second</td><td><html:text property="second"/></td></tr>
</table>
<input type="submit" name="goThird" value="Thirdへ"/>
<input type="submit" name="index" value="戻る"/>
</s:form>
</body>
</html>