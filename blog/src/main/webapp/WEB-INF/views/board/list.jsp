<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
      <%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
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
<script src="resources/assets/js/jquery-3.2.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 <script src="resources/bloglist/js/blog_list.js"></script>
 <script src="resources/assets/js/json.min.js"></script>
<style>
</style>
<script>
function blogsearch() {
	
};
</script>
</head>
<body>
<div class="container">
<div class="row" align="right">
<c:if test="${empty sessionScope.login }">
				<p/>
				<p align="right">
					<strong><a href="/blog">로그인</a></strong>
				</p>
</c:if>
<c:if test="${not empty sessionScope.login}">
<p/>
				<p align="right"> 
					<strong>${sessionScope.login} 님 <a href="logout.do" >로그아웃</a></strong><a href="adminView.do">블로그 관리</a><a href="getMainView.do?blogId=<%=session.getAttribute("login") %>">블로그 가기</a>
				</p>
</c:if>
</div>
<hr>

<div id="wrap">
    <div class="row">
         <div class="col-md-6 col-md-offset-3">
        <!-- Search Form -->
        <form role="form" name="frm">
        <!-- Search Field -->
            <div class="row">
                <h1 class="text-center">블로그 검색</h1>
                <div class="form-group">
                    <div class="input-group">
                        <input class="form-control" type="text" name="search" placeholder="Search" required/>
                        <span class="input-group-btn">
                            <button class="btn btn-success" type="submit" ><span class="glyphicon glyphicon-search" aria-hidden="true"><span style="margin-left:10px;">Search</span></button>
                        </span>
                        </span>
                    </div>
                </div>
            </div>
        </form>
        <!-- End of Search Form -->
            
        </div>
	</div>
<c:forEach items="${bloglist}" var="list">
	<div class="container" id="bloglist">
		<div class="row">
			<div class="list-group">
	            <div class="list-group-item clearfix">
	                <div class="profile-teaser-left">
	                    <div class="profile-img">	                    
	                    <c:if test="${not empty list.blog_img}"><img src="resources/upload/${list.userid}.jpg"/></c:if>
	                    <c:if test="${empty list.blog_img}"><img src="resources/bloglist/css/profile.jpg"/></c:if></div>
	                </div>
	                <div class="profile-teaser-main">
	                    <h2 class="profile-name"><a href="getMainView.do?blogId=${list.userid}" class="a">${list.userid}</a></h2>
	                    <div class="profile-info">
	                        <div class="info"><span class="">Title:</span>
	                        <c:if test="${not empty list.blog_title}">${list.blog_title}</c:if>
							<c:if test="${empty list.blog_title}">	블로그 제목</c:if></div>
	                    </div>
	                </div>
	            </div><!-- item -->
	        </div>
		</div>
	</div>
</c:forEach>	
	<div id="paging" class="row" align="center"><mytag:paging paging="${paging}" search="${search}"></mytag:paging></div>
</div>
</div>
</body>
</html>