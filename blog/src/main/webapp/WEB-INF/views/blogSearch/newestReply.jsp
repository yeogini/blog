<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>최신 댓글</title>

<!-- BOOTSTRAP STYLES-->
<link href="resources/assets/css/bootstrap.css" rel="stylesheet" />


	
<!-- BLOG CSS -->
<link href="resources/css/blog.css" rel="stylesheet" />
<style>
body{
	background-color: #83b14e;
}
#over{
	text-overflow: ellipsis;
	width: 100px;
}
div {
	overflow: hidden;
}

</style>

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


</head>
<body>


	<!-- Side Widget -->
<!-- 	<div class="card my-4"></div>
	<h5 class="card-header">최신 댓글 (newestReply)</h5>
	<div class="card-body"></div>
 -->
	<!-- style="font-size:11px;" --> 
	<div id="row" align="left" >
			<span>최신 댓글</span>
			<table class="table">		
			<c:forEach var="reply" items="${newestReplylist}" >
			<tr>
					<!-- 댓글 -->
					<td><div id="over"><nobr><a href="getLetter.do?letterNo=${reply.letterNo}"
						class="letterName">${reply.replySub}</a></nobr></div></td>
					<!-- 아이디 -->
					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td align="right">${reply.userId}</td>
			</tr>
			</c:forEach>
			</table>	
	</div>
	
	
</body>
</html>