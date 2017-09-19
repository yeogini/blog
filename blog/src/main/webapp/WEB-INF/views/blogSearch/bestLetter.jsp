<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>베스트 글</title>

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

          	<!-- Side Widget -->
          	<div class="card my-4"></div>
            <h5 class="card-header">베스트 글  (bestLetter)</h5>
            <div class="card-body"></div>


<div id="row" align="center">
<table>

<tr> <td colspan="4"> 베스트 글 </td> </tr>

<tr> 
	  <th bgcolor="#EAEAEA"> NO </th> 
	  <th bgcolor="#EAEAEA"> 제목 </th>
	  <th bgcolor="#EAEAEA"> 조회수 </th>
</tr>	



	<c:forEach var="letter" items="${bestLetterlist}">
	<tr>
	     <td> ${letter.rnum} 		</td>				<!-- 번호 (row number) -->
		 <td> <a href="getLetter.do?letterNo=${letter.letterNo}" class="letterName">${letter.letterTitle}</a> </td>				<!-- 글 제목 -->
		 <td> ${letter.hits} 		</td>				<!-- 조회수 -->
	</tr>
	</c:forEach>
</table>	
</div>

</body>
</html>