<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet"
	href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
	<style>
	#profile {
	width: 100px;
	height: 100px;
	padding: 0.5em;
	position: absolute;
}

#category {
	width: 100px;
	height: 100px;
	padding: 0.5em;
	position: absolute;
}

#visitors {
	width: 100px;
	height: 100px;
	padding: 0.5em;
	position: absolute;
}

#reply {
	width: 100px;
	height: 100px;
	padding: 0.5em;
	position: absolute;
}

#latest_posts {
	width: 100px;
	height: 100px;
	padding: 0.5em;
	position: absolute;
}

#top {
	width: 100px;
	height: 100px;
	padding: 0.5em;
	position: absolute;
}

#title {
	width: 100px;
	height: 100px;
	padding: 0.5em;
	position: absolute;
}
	</style>
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-1.10.2.js"></script> -->
<script>
$(function(){
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
	$("button").click(function(){
		$.get('/blog/getVisitList.do',function(data){
			$("#visitors").html(data);	
		})
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
			<button type="button">클릭!</button>
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
</body>
</html>