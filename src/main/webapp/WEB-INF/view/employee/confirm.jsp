<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>Tutorial: Employee Confirm</title>
<link rel="stylesheet" type="text/css" href="${f:url('/css/sa.css')}" />
</head>
<body>

<h1>Tutorial: Employee Confirm</h1>

<html:errors/>
<s:form>
<html:hidden property="id"/>
<html:hidden property="name"/>
<html:hidden property="jobType"/>
<html:hidden property="salary"/>
<html:hidden property="departmentId"/>
<html:hidden property="version"/>
<table>
<tr>
<td>Id</td><td>${f:h(id)}</td>
</tr>
<tr>
<td>Name</td><td>${f:h(name)}</td>
</tr>
<tr>
<td>JobType</td><td>${f:h(jobType)}</td>
</tr>
<tr>
<td>Salary</td>
<td><fmt:formatNumber value="${f:number(salary, '####')}" pattern="#,###"/></td>
</tr>
<tr>
<td>Department</td><td>${f:h(departmentName)}</td>
</tr>
</table>
<input type="submit" name="store" value="更新"/>
<input type="submit" name="backToEdit" value="戻る"/>
</s:form>
</body>
</html>