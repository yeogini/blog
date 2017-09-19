<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>최신글</title>

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

<style>

</style>

</head>
<body>

<div id="row" align="center">
<table>

<tr> <td colspan="4"> 최신 글 </td> </tr>

<tr> 
	  <th bgcolor="#EAEAEA"> NO </th> 
	  <th bgcolor="#EAEAEA"> 제목 </th>
	  <th bgcolor="#EAEAEA"> 날짜 </th>
	 
</tr>	



	<c:forEach var="letter" items="${newestLetterlist}">
	<tr>
	     <td> ${letter.rnum} 		</td>				<!-- 번호 (row number) -->
		 <td><a href="getLetter.do?letterNo=${letter.letterNo}" class="letterName">${letter.letterTitle}</a> </td>				<!-- 글 제목 -->
		 <td> ${letter.letterDate} 		</td>				<!-- 아이디 -->
	</tr>
	</c:forEach>
	

</table>
</div>
</body>
</html>