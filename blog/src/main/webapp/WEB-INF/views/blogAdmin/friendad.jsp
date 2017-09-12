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
<div class="container">
<div class="row" align="center"> 
<h2 style="color:black;">친구</h2>
<table class="table">
<tr>
	<th>아이디</th><th>이름</th><th></th>
	
</tr>
<c:forEach items="${friendList}" var="list">
	<tr>
		<td>${list.f_id}</td><td>${list.userName}</td><td><a href="deleteFriend.do">삭제</a></td>
	</tr>
</c:forEach>
</table>
</div>
<p></p>
<br>
<div class="row" align="center">
<h2 style="color:black;">친구 요청</h2>
<table class="table">
<tr>
	<th>아이디</th><th>이름</th><th>상태</th>
<c:forEach items="${friendList}" var="list">
	<td>${list.f_id}</td><td>${list.userName}</td><td><a href=""></a></td>
</c:forEach>
</tr>
</table>
</div>
</div>

</body>
</html>