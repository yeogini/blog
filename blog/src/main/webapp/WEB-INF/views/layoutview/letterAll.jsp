<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
         <%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
         <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div>
<c:forEach items="${result}" var="list">
	${list.letterNo}
	<iframe src="getLetterAll.do?letterNo=${list.letterNo}" style="width:900px;margin-top: 20px;height: 1000px;"></iframe><br>
</c:forEach>
</div>
</body>
</html>