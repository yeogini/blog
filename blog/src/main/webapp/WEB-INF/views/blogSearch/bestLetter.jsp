<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>베스트 글</title>


<script>
	
</script>

<style>

</style>

</head>
<body>

          	<!-- Side Widget -->
          	<div class="card my-4"></div>
            <h5 class="card-header">베스트 글  (bestLetter)</h5>
            <div class="card-body"></div>



<table border="0" width="500" height=" 100" align="center">

<tr> <td colspan="4"> 베스트 글 </td> </tr>

<tr> 
	  <th bgcolor="#EAEAEA"> NO </th> 
	  <th bgcolor="#EAEAEA"> 제목 </th>
	  <th bgcolor="#EAEAEA"> 아이디 </th>
	  <th bgcolor="#EAEAEA"> 조회수 </th>
</tr>	



	<c:forEach var="letter" items="${bestLetterlist}">
	<tr>
	     <td> ${letter.rnum} 		</td>				<!-- 번호 (row number) -->
		 <td> ${letter.letterTitle} </td>				<!-- 글 제목 -->
		 <td> ${letter.userId} 		</td>				<!-- 아이디 -->
		 <td> ${letter.hits} 		</td>				<!-- 조회수 -->
	</tr>
	</c:forEach>
	


</body>
</html>