<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>블로그 목록</title>
     <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 <link href="resources/bloglist/css/blog_list.css" rel="stylesheet" />
<style>
</style>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script src="resources/assets/js/jquery-3.2.1.min.js"></script>
  <script src="resources/bloglist/js/blog_list.js"></script>
<style>
</style>
<script>
</script>
</head>
<body>
<div>
<c:if test="${empty sessionScope.login }">
	<a href="login.do">로그인</a>
</c:if>
<c:if test="${not empty sessionScope.login}">
	${sessionScope.login} 님 <a href="logout.do">로그아웃</a>
</c:if>
</div>
<div id="wrap">
    <div class="row">
         <div class="col-md-6 col-md-offset-3">

        <!-- Search Form -->
        <form role="form">
        <!-- Search Field -->
            <div class="row">
                <h1 class="text-center">블로그 검색</h1>
                <div class="form-group">
                    <div class="input-group">
                        <input class="form-control" type="text" name="search" placeholder="Search" required/>
                        <span class="input-group-btn">
                            <button class="btn btn-success" type="submit"><span class="glyphicon glyphicon-search" aria-hidden="true"><span style="margin-left:10px;">Search</span></button>
                        </span>
                        </span>
                    </div>
                </div>
            </div>
        </form>
        <!-- End of Search Form -->
            
        </div>
	</div>
<div class="container">
	<div class="row">
		<div class="list-group">
            <div class="list-group-item clearfix">
                <div class="profile-teaser-left">
                    <div class="profile-img"><img src="https://static.pexels.com/photos/21011/pexels-photo-large.jpg"/></div>
                </div>
                <div class="profile-teaser-main">
                    <h2 class="profile-name">Jane Doe</h2>
                    <div class="profile-info">
                        <div class="info"><span class="">Info:</span> Something here</div>
                        <div class="info"><span class="">Info:</span> Something here</div>
                        <div class="info"><span class="">Info:</span> Something here</div>
                        <div class="info"><span class="">Info:</span> Something here</div>
                    </div>
                </div>
            </div><!-- item -->
            
            <div class="list-group-item clearfix">
                <div class="profile-teaser-left">
                    <div class="profile-img"><img src="https://static.pexels.com/photos/21011/pexels-photo-large.jpg"/></div>
                </div>
                <div class="profile-teaser-main">
                    <h2 class="profile-name">Jane Doe</h2>
                    <div class="profile-info">
                        <div class="info"><span class="">Info:</span> Something here</div>
                        <div class="info"><span class="">Info:</span> Something here</div>
                        <div class="info"><span class="">Info:</span> Something here</div>
                        <div class="info"><span class="">Info:</span> Something here</div>
                    </div>
                </div>
            </div><!-- item -->
        </div>
	</div>
</div>
	<div id="paging"></div>
</div>
</body>
</html>