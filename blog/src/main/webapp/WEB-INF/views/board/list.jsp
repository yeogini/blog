<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
</style>
<script>
</script>
</head>
<body>
<c:if test="${empty sessionScope.login }">
	<a href="login.do">로그인</a>
</c:if>
<c:if test="${not empty sessionScope.login}">
	${sessionScope.login} 님 <a href="logout.do">로그아웃</a>
</c:if>
</body>
</html>