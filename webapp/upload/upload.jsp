<html>
<head>
<title>Upload</title>
</head>
<body>
<html:messages id="m" message="true">
${f:h(m)}<br />
</html:messages>

<s:form action="/upload" enctype="multipart/form-data">
<input type="file" name="formFile" /><br />
<c:forEach varStatus="s" begin="0" end="1">
<input type="file" name="formFiles[${s.index}]" /><br />
</c:forEach>

<input type="submit" name="upload" value="アップロード"/>
</s:form>
</body>
</html>