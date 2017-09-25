<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<!-- BOOTSTRAP STYLES-->
<link href="resources/assets/css/bootstrap.css" rel="stylesheet" />
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
	
<!-- BLOG CSS -->
<link href="resources/css/blog.css" rel="stylesheet" />
<script src="resources/assets/js/jquery-3.2.1.min.js"></script>
<title>베스트 글</title>

<script>
$(function(){
	$(".letterName").click(function(event){
		event.preventDefault();
		var src = $(this).attr("href");
		console.dir(src);
		//parent.document.getElementById("reply").attr('src',src);
		 var blogid = $("#id").val();
		 var chk = $("#chk").val();
		 var id  = "<%=session.getAttribute("login")%>";
			if(id!=blogid) {
				if(chk==1) {
					$("#test",parent.document).attr('src',"getLetterView.do?blogId="+blogid); 
					$("#test2",parent.document).attr('src',src);
				} else if(chk==2) {
					var fId = "<%=session.getAttribute("friendId")%>";
					if(fId==id) {
						console.log("^^"+fId);
						$("#test2",parent.document).attr('src',src);
						$(".letterName").removeClass("important blue");
						$(this).addClass("important blue");
					} else {
						alert("친구공개 입니다");
					}
				} else {
					alert("비공개 입니다");
				}
			} else {
				$("#test",parent.document).attr('src',"getLetterView.do?blogId="+blogid); 
				$("#test2",parent.document).attr('src',src);
			}
		
		
		
	});
});
</script>



</head>
<body>

          	<!-- Side Widget -->
<!--           	<div class="card my-4"></div>
            <h5 class="card-header">베스트 글  (bestLetter)</h5>
            <div class="card-body"></div> -->

<div id="row" align="left">
	<!-- style="font-size:11px;" -->
	<span>베스트 글</span>
	<table class="table">
		<c:forEach var="letter" items="${bestLetterlist}">
	
	
	
			<tr>
				 <td> <div id="over"><nobr><a href="getLetter.do?letterNo=${letter.letterNo}" class="letterName">${letter.letterTitle}</a></nobr></div></td>				<!-- 글 제목 -->
				 <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
				 <td> ${letter.hits} 		</td>				<!-- 조회수 -->
			</tr>
			<input type="hidden" id="chk" value="${letter.categoryChk}">
		</c:forEach>
		
	</table>	
	<form id="frm">
		<input type="hidden" id="id" value="${id}">
		
	</form>
</div>

</body>
</html>