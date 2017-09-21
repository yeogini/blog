<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<style>
body{
	background-color: #83b14e;
}
#profile {
	width: 180px;
	height: 290px;
	padding: 0.5em;
	position: absolute;
	left: 5px;
	top : 39px;
	background-color: #CFCFCF;
	border: 1px green solid;
	
}

#category {
	width: 200px;
	height: 600px;
	padding: 0.5em;
	position: absolute;
	left: 1475px;
	top : 304px;
	 border: 0;
	 background-color: white;
}

#visitors {
	width: 250px;
	height: 150px;
	padding: 0.5em;
	position: absolute;
	left: 6px;
	top : 288px;
	 border: 0;
	 background-color: white;
}

#reply {
	width: 250px;
	height: 250px;
	padding: 0.5em;
	position: absolute;
	left: 1297px;
	top : 23px;
	 border: 0;
}

#latest_posts {
	width: 250px;
	height: 250px;
	padding: 0.5em;
	position: absolute;
	left: 1024px;
	top : 23px;
 border: 0;
}

#top {
	width: 250px;
	height: 250px;
	padding: 0.5em;
	position: absolute;
	left: 749px;
	top : 23px;
 	border: 0;
}

#title {
	width: 400px;
	height: 50px;
	padding: 0.5em;
	position: absolute;
	left: 326px;
	top : 38px;
 	border: 0;
 	border-radius: 5px;
 	background-color: white;
}
#mainView {
	border:0;
	position: absolute;
	top: 300px;
	left: 460px;
	width :1000px;
	height :100%;
	margin: 5px;
}
#test {
	border: 1px green solid;
	
}
#test2{
}
.meny{
	color: skyblue;
}
/* #test{
	width:900px;
	margin-left:50px;
	margin-right:50px;
	margin-top: 20px;
} */
	</style>
<script src="resources/assets/js/jquery-3.2.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>

<!-- <script src="https://code.jquery.com/jquery-1.10.2.js"></script> -->
<script>
$(function(){
	if ("${layout}" != "") {
		console.log("ㅁㅁㅁ");
		var profilePosition = "${layout.profile}".split(",")
		$("#profile").css("left", profilePosition[0] + "px");
		$("#profile").css("top", profilePosition[1] + "px");

		var visitorsPosition = "${layout.visitors}".split(",")
		$("#visitors").css("left", visitorsPosition[0] + "px");
		$("#visitors").css("top", visitorsPosition[1] + "px");

		var categoryPosition = "${layout.category}".split(",")
		$("#category").css("left", categoryPosition[0] + "px");
		$("#category").css("top", categoryPosition[1] + "px");

		var replyPosition = "${layout.reply}".split(",")
		$("#reply").css("left", replyPosition[0] + "px");
		$("#reply").css("top", replyPosition[1] + "px");

		var latest_postsPosition = "${layout.latest_posts}".split(",")
		$("#latest_posts").css("left", latest_postsPosition[0] + "px");
		$("#latest_posts").css("top", latest_postsPosition[1] + "px");

		var topPosition = "${layout.top}".split(",")
		$("#top").css("left", topPosition[0] + "px");
		$("#top").css("top", topPosition[1] + "px");

		var titlePosition = "${layout.title}".split(",")
		$("#title").css("left", titlePosition[0] + "px");
		$("#title").css("top", titlePosition[1] + "px");
	
		  
	
	}
	$.get('getProfileView.do?blogId=${id}',
			function (data) {
				$("#profile").html(data);
	}); 

});
function goBack(){
	history.back();
};


</script>
</head>
<body>

<div class="row" align="right">
		<c:if test="${empty sessionScope.login }">
			<p />
			<p align="right">
				<strong><a href="/blog" class="meny">로그인</a></strong>
			</p>
		</c:if>
		<c:if test="${not empty sessionScope.login}">
			<p />
			<p align="right">
			<strong>${sessionScope.login}님 <a href="logout.do" class="meny">로그아웃</a></strong>
				<a href="adminView.do" class="meny">블로그 관리하기</a> <a href="blog.do" class="meny">블로그 목록 가기</a>
			</p>
		</c:if>
</div>

	<div id="profile" class="profile"></div>
	<iframe src="/blog/mainviewVisit.do?blogId=${id}" id="visitors"></iframe>				
	<iframe id="category" src="getCategory.do?blogId=${id}"></iframe>
	<iframe id="reply" src="/blog/newestReply.do?blogId=${id}"></iframe>
	<iframe id="latest_posts" src="/blog/newestLetter.do?blogId=${id}"></iframe>
	<iframe src="/blog/bestLetter.do?blogId=${id}" id="top"></iframe>
	<iframe src="getTitleView.do?blogId=${id}" id="title" scrolling="no"></iframe>
	<div id="mainView" class="container">
		<div class="row"></div>
		<iframe id ="test" src="getLetterView.do?blogId=${id}" style="width:900px;margin-left:50px;margin-right:50px;margin-top: 20px;height: 300px">
		</iframe><br>
		
		 <c:if test="${chk == 'f'}">
			<c:if test="${sessionScope.login == id}">
				<!-- 글  없을 때 글 쓰기 링크 뛰우기-->
					<a href=""></a>				
			</c:if>
			<c:if test="${sessionScope.login != id }">
				<!-- 작성된 글이 없습니다 뛰우기  src값만 바꾸기 -->
				
				
			</c:if>
		</c:if> 
		
		
		<iframe src="newest.do?blogId=${id}"style="width:900px;margin-left:50px;margin-right:50px;margin-top: 20px; height: 100%;" id="test2">
		</iframe>
	</div>
</body>
</html>