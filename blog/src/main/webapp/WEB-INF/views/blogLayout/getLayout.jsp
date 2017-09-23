<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- 
	2017-09-23 김용우
	뒤로가기 버튼 추가
 -->
<meta charset="utf-8">
<link rel="stylesheet"
	href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-1.10.2.js"></script> -->

 
<style>
#profile {
	width: 180px;
	height: 290px;
	padding: 0.5em;	
	position: absolute;
	left: 5px;
	top : 39px;
	 border: 1px solid black;
}

#category {
	width: 200px;
	height: 600px;
	padding: 0.5em;
	position: absolute;
	left: 1475px;
	top : 304px;
	 border: 1px solid black;
}

#visitors {
	width: 250px;
	height: 250px;
	padding: 0.5em;
	position: absolute;
	left: 6px;
	top : 288px;
	 border: 1px solid black;
}

#reply {
	width: 250px;
	height: 250px;
	padding: 0.5em;
	position: absolute;
	left: 1297px;
	top : 23px;
	 border: 1px solid black
}

#latest_posts {
	width: 250px;
	height: 250px;
	padding: 0.5em;
	position: absolute;
	left: 1024px;
	top : 23px;
 border: 1px solid black;
}

#top {
	width: 250px;
	height: 250px;
	padding: 0.5em;
	position: absolute;
	left: 749px;
	top : 23px;
 border: 1px solid black;
}

#title {
	width: 400px;
	height: 50px;
	padding: 0.5em;
	position: absolute;
	left: 326px;
	top : 38px;
 border: 1px solid black;
}
#mainView {
	border:1px solid black;
	position: absolute;
	top: 300px;
	left: 460px;
	width :1000px;
	height :100%;
	margin: 5px;
}
</style>

<title>Insert title here</title>






<script>

	$(function() {


		$("#profile").draggable({
			scroll : true
		});
		$("#visitors").draggable({
			scroll : true,
			scrollSensitivity : 100
		});
		$("#category").draggable({
			scroll : true,
			scrollSpeed : 100
		});
		$("#reply").draggable({
			scroll : true,
			scrollSpeed : 100
		});
		$("#latest_posts").draggable({
			scroll : true,
			scrollSpeed : 100
		});
		$("#top").draggable({
			scroll : true,
			scrollSpeed : 100
		});
		$("#title").draggable({
			scroll : true,
			scrollSpeed : 100
		});

		if ("${layout}" != "") {
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

		$("#save").click(function() {
			$(".layoutdiv").each(function() {
				console.log($(this).position());
				var id = $(this).attr("id")
				var position = $(this).position()
				$("#t_" + id).val(position.left + "," + position.top);
			});  
			
			$("#blog_form").submit();

		});
		$("#back").click(function() {
			history.back();
		});
		
	});
	
</script>




</head>
<body>

	<div id="profile" class="layoutdiv ui-widget-content">
		<p>프로필</p>
	
	</div>

	<div id="visitors" class="layoutdiv ui-widget-content">
		<p>방명록</p>
	</div>

	<div id="category" class="layoutdiv ui-widget-content">
		<p>카테고리</p>
	</div>

	<div id="reply" class="layoutdiv ui-widget-content">
		<p>리플</p>
	</div>

	<div id="latest_posts" class="layoutdiv ui-widget-content">
		<p>최신글</p>
	</div>

	<div id="top" class="layoutdiv ui-widget-content">
		<p>베스트글</p>
	</div>


	<div id="title" class="layoutdiv ui-widget-content">
		<p>타이틀</p>
	</div>
	
	<c:set var="mode" value="ins"></c:set>
	<c:if test="${not empty layout }">
		<c:set var="mode" value="upd"></c:set>
	</c:if>
	

	<form id="blog_form" action="layoutInsert.do" method="post">

		<input name="profile" id="t_profile" type="hidden"> 
		<input name="visitors" id="t_visitors" type="hidden"> 
		<input name="category" id="t_category" type="hidden"> 
		<input name="reply" id="t_reply" type="hidden"> 
		<input name="latest_posts" id="t_latest_posts" type="hidden"> 
		<input name="top" id="t_top" type="hidden"> 
		<input name="title" id="t_title" type="hidden"> 
		<input type="hidden" name="mode" value="${mode }"> 
		<input id="save" type="button" value="저장">
		<input id="back" type="button" value="뒤로가기">

	</form>

	<div id="mainView" class="container">
		<div class="row"></div>
		<iframe  style="width:900px;margin-left:50px;margin-right:50px;margin-top: 20px;">
			목록
		</iframe><br>
		<iframe style="width:900px;margin-left:50px;margin-right:50px;margin-top: 20px;">
			상세보기
		</iframe>
	</div>



</body>
</html>