<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
       <%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#abcd{
	float: right;
}
body{
	background-color:white;
}
#listViewTitle{
	color: skyblue;
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
			$("#test2",parent.document).attr('src',src);
			
			
		});
		$("#insert").click(function(event){
			event.preventDefault();
			var src = $(this).attr("href");
			console.dir(src);
			//parent.document.getElementById("reply").attr('src',src);
			$("#test2",parent.document).attr('src',src);
			
			
		});
	});
</script>
</head>
<body>
<c:if test="${name.categoryName==null || name.categoryName==''}">
<p id="listViewTitle">'전체보기' 의 카테고리</p>
</c:if>
<c:if test="${name.categoryName!=null}">
<p>'${name.categoryName}' 의 카테고리</p>
</c:if>
<hr> 
<c:forEach items="${datas}" var="list">
<div><a href="getLetter.do?letterNo=${list.letterNo}" class="letterName">${list.letterTitle}</a><div id="abcd" align="right">${list.letterDate}</div></div>
</c:forEach>
<div id="paging" class="row" align="center"><mytag:letterpaging paging="${paging}" id="${blogId}"></mytag:letterpaging></div>
<a href="letterInsert.do" class="btn btn-white" id = "insert">글 등록</a>
</body>
</html>