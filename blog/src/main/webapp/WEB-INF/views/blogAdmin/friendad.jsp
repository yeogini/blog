<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
</style>
    <script src="resources/assets/js/jquery-3.2.1.min.js"></script>
     <script src="resources/assets/js/json.min.js"></script>

</head>
<body>
<div class="container">
<div class="row" align="center"> 
<h2 style="color:black;">친구</h2>
<table class="table" id="f1">
<tr>
	<th>아이디</th><th>이름</th><th>상태</th>
	
</tr>
<c:forEach items="${friendList}" var="list">
	<c:if test="${list.f_state==3}">
	<tr id="${list.f_no}">
		<td>${list.f_id}</td><td>${list.userName}</td><td><a href="deleteFriend.do">삭제</a></td>
	</tr>
	</c:if>
</c:forEach>
</table>
</div>
<p></p>
<br>
		<div class="row" align="center">
			<h2 style="color: black;">친구 요청</h2>
			<table class="table" id="f2">
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>상태</th>
				</tr>
					<c:forEach items="${friendList}" var="list">
						<c:if test="${list.f_state==1}">
							<tr>
								<td>${list.f_id}</td>
								<td>${list.userName}</td>
								<td>요청중</td>
							</tr>
						</c:if>
						<c:if test="${list.f_state==2}">
							<tr id="${list.f_no}">
								<td>${list.f_id}</td>
								<td>${list.userName}</td>
								<td><a href="updateFriend.do?no=${list.f_no}" class="update">수락</a>/<a href="deleteFriend.do">거절</a></td>
							</tr>
						</c:if>
					</c:forEach>
			</table>
		</div>
	</div>
	<script>
	$(".update").click(function(event) {
		event.preventDefault();
		var src = $(this).attr("href");
		$.ajax({
		url :src,
		success:function(data){
			console.dir(data);
			$("#f1").append("<tr><td>"+data.f_id+"</td><td>"+data.userName+"</td><td><a href='deleteFriend.do?"+data.f_no+"'>삭제</a></td>'")
			$("#"+data.f_no).remove();
		}
		});
		return false;
	});

</script>
</body>
</html>