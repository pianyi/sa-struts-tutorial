<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>Tutorial: Form Third</title>
<link rel="stylesheet" type="text/css" href="${f:url('/css/sa.css')}" />
</head>
<body>

<h1>Tutorial: Form Third</h1>

<s:form>
<table>
<tr><td>First</td><td>${f:h(first)}</td></tr>
<tr><td>Second</td><td>${f:h(second)}</td></tr>
</table><br />
<input type="submit" name="backSecond" value="戻る"/>
</s:form>
</body>
</html>