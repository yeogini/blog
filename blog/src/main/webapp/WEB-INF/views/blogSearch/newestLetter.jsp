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

<link href="resources/css/blog.css" rel="stylesheet" />
<style>
body{
	background-color: #83b14e;
	color:black;
}
a{
color:black;
}
#over{
	text-overflow: ellipsis;
	width: 100px;
}
div {
	overflow: hidden;
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
		 var id = $("#id").val();
		$("#test",parent.document).attr('src',"getLetterView.do?blogId="+id); 
		$("#test2",parent.document).attr('src',src);
		
		
	});
});
</script>



<<<<<<< Upstream, based on branch 'master' of https://github.com/yeogini/blog.git
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
  
=======



>>>>>>> d842725 FFF

</head>
<body>
	<div id="row" align="left">
			<span>최신 글</span>
			<table class="table">
			<c:forEach var="letter" items="${newestLetterlist}">
			<tr>
			<td><div id="over"><nobr><a href="getLetter.do?letterNo=${letter.letterNo}"
						class="letterName"><span>${letter.letterTitle}</span></a></nobr></div></td>
			</tr>	
			</c:forEach>
			</table>
	</div>
	<form id="frm">
		<input type="hidden" id="id" value="${id}">
	</form>
	
	
</body>
</html>