<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
       <%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
	});
</script>
</head>
<body>
<c:if test="${name.categoryName==null || name.categoryName==''}">
<p>'전체보기' 의 카테고리</p>
</c:if>
<c:if test="${name.categoryName!=null}">
<p>'${name.categoryName}' 의 카테고리</p>
</c:if>
<hr> 
<c:forEach items="${datas}" var="list">
<a href="getLetter.do?letterNo=${list.letterNo}" class="letterName">${list.letterTitle}</a><span>${list.letterDate}</span><br>
</c:forEach>
<div id="paging" class="row" align="center"><mytag:letterpaging paging="${paging}"></mytag:letterpaging></div>
</body>
</html>