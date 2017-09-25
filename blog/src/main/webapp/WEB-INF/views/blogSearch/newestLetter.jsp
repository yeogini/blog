<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>최신글</title>

<!-- BOOTSTRAP STYLES-->
<link href="resources/assets/css/bootstrap.css" rel="stylesheet" />


	
<!-- BLOG CSS -->
<link href="resources/css/blog.css" rel="stylesheet" />
<script src="resources/assets/js/jquery-3.2.1.min.js"></script>
<script>
$(function(){
	$(".letterName").click(function(event){
		event.preventDefault();
		var src = $(this).attr("href");
		console.dir(src);
		//parent.document.getElementById("reply").attr('src',src);
		 var id = $("#id").val();
		$("#test",parent.document).attr('src',"getLetterView.do?blogId="+id); 
		$("#test2",parent.document).attr('src',src);
		
		
	});
});
</script>



<style>
a{
	color: black;
	font-style: bold;
}
body {
	background-color: #83b14e;
}
span{
	width: 10px;
	text-overflow: ellipsis;
	overflow: hidden;
}
</style>
  

</head>
<body>
	<div id="row" align="left">
			<span>최신 글</span>
			<ul>
			<c:forEach var="letter" items="${newestLetterlist}">
			<li><a href="getLetter.do?letterNo=${letter.letterNo}"
						class="letterName"><span>${letter.letterTitle}</span></a></li>
				
			</c:forEach>
			</ul>
	</div>
	
	
	
</body>
</html>