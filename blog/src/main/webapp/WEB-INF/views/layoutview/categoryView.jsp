<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
 <!-- FONTAWESOME STYLES-->
    <link href="resources/assets/css/font-awesome.css" rel="stylesheet" />
<style type="text/css">
#viewCategory{
	color: #83b14e;
	font-size: 20px;
}
a{
	text-decoration: none;
}
#vcname{
	font-size: 20px;
}
</style>
</head>
<script src="resources/assets/js/jquery-3.2.1.min.js"></script>
<script>
	$(function(){
		$(".categoryName").click(function(event){
			event.preventDefault();
			var src = $(this).attr("href");
			console.dir(src);
			//parent.document.getElementById("reply").attr('src',src);
			var borderType = $(this).find(":hidden");
			console.log(borderType);
			if(borderType[0].value=="l") {
				$("#test",parent.document).attr('src',src);
				$("#test2",parent.document).attr('src',"newest.do?blogId=${id}");
			} else {
				//펼쳐보기 나중에 하기 
			}
			
		
			
		});
	
		$("#visit").click(function(event){
			event.preventDefault();
			var src = $(this).attr("href");
			$("#test",parent.document).attr('src',src);
			$("#test2",parent.document).attr('src',"");
		});
		
	});
	
</script>
<body>
<div id="viewCategory"><strong> 카테고리</strong></div><br>
<a href="getLetterView.do?blogId=${category[0].userId}" class="categoryName" class="fa fa-file-text-o" ><input type="hidden" value="l">전체보기 </a>/ <a href="getVisitList.do" id="visit">방명록</a>
<hr>
<form id="frm" name="frm" action="">
<c:forEach items="${category}" var="result">
<c:if test="${result.type=='t'}"><Strong><span id="vcname">${result.categoryName}</span></Strong><br></c:if>
<c:if test="${result.type=='d'}">-------------<br></c:if>
<c:if test="${result.type=='n'}"><a href="getCategoryList.do?blogId=${result.userId}&categoryNo=${result.categoryNo}" class="categoryName" ><input type="hidden" value="${result.borderType}"><input type="hidden" value="${result.categoryNo}">&nbsp;&nbsp;${result.categoryName}<br></a></c:if>
</c:forEach>

</form>
</body>
</html>