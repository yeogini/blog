<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<style>

</style>

<title>프로필뷰</title>
<style>
img{
	width: 100px;
	height: auto;
}
</style>
<script>
</script>
</head>
<body>
<div class="container">
<div class="col-sm-6 col-md-4 col-md-offset-4">
	<div class="account-wall">
		<form class="form-signin">
			<img src="resources/upload/${profile.userid}.jpg">
			<br>
			${profile.userid}(${profile.nickName})
			<br>
			블로그 소개<br>
			<textarea rows="3" cols="20" readonly="readonly" style="resize:none; overflow-y:scroll;">
			${profile.intro}
			</textarea>
			<a href=#>edit</a>	
		</form>
		</div>
	</div>
</div>
</body>
</html>