<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<script src="resources/assets/js/jquery-3.2.1.min.js"></script>
<script>
	$(function(){
		$(".categoryName").click(function(event){
			event.preventDefault();
			var src = $(this).attr("href");
			console.dir(src);
			//parent.document.getElementById("reply").attr('src',src);
			$("#test",parent.document).attr('src',src);
			
			
		});
	});
</script>
<body>
<strong>카테고리</strong><br>
<a href="getLetterView.do?blogId=${category[0].userId}" class="categoryName" >전체보기</a>
<hr>
<form id="frm" name="frm" action="">
<c:forEach items="${category}" var="result">
<c:if test="${result.type=='t'}"><h5>${result.categoryName}<br></h5></c:if>
<c:if test="${result.type=='d'}">-------------<br></c:if>
<c:if test="${result.type=='n'}"><a href="getCategoryList.do?blogId=${result.userId}&categoryNo=${result.categoryNo}" class="categoryName" ><input type="hidden" value="${result.categoryNo}"> ${result.categoryName}<br></a></c:if>
</c:forEach>
</form>
</body>
</html>