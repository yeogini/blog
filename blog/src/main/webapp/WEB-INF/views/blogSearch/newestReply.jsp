<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>최신 댓글</title>

<!-- BOOTSTRAP STYLES-->
<link href="resources/assets/css/bootstrap.css" rel="stylesheet" />

<!-- TABLE STYLES-->
<link href="assets/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />
	
<!-- BLOG CSS -->
<link href="resources/css/blog.css" rel="stylesheet" />
<script src="resources/assets/js/jquery-3.2.1.min.js"></script>
<script>
$(function(){
	$(".letterName").click(function(event){
		event.preventDefault();
		var src = $(this).attr("href");
		console.dir(src);
		//parent.document.getElementById("reply").attr('src',src);
		 var id = $("#id").val();
		$("#test",parent.document).attr('src',"getLetterView.do?blogId="+id); 
		$("#test2",parent.document).attr('src',src);
		
		
	});
});
</script>

<style>
</style>

</head>
<body>


	<!-- Side Widget -->
<!-- 	<div class="card my-4"></div>
	<h5 class="card-header">최신 댓글 (newestReply)</h5>
	<div class="card-body"></div>
 -->
	<!-- style="font-size:11px;" -->
	<div id="row" align="center">
		<table class="table table-striped table-bordered table-hover" >

			<tr>
				<td colspan="4">최신 댓글</td>
			</tr>

			<tr>
				<th bgcolor="#EAEAEA">NO</th>
				<th bgcolor="#EAEAEA">댓글</th>
				<th bgcolor="#EAEAEA">아이디</th>
				<th bgcolor="#EAEAEA">날짜</th>
			</tr>
			<c:forEach var="reply" items="${newestReplylist}">
				<tr>
					<td>${reply.rnum}</td>
					<!-- 번호 (row number) -->
					<td><a href="getLetter.do?letterNo=${reply.letterNo}"
						class="letterName">${reply.replySub}</a></td>
					<!-- 댓글 -->
					<td>${reply.userId}</td>
					<!-- 아이디 -->
					<td>${reply.reDate}</td>
					<!-- 날짜 -->
				</tr>
			</c:forEach>

		</table>
	</div>
	
	
</body>
</html>