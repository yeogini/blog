<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>최신글</title>


<script>
	
</script>

<style>

</style>

</head>
<body>

          	<!-- Side Widget -->
          	<div class="card my-4"></div>
            <h5 class="card-header">최신 글  (newestLetter)</h5>
            <div class="card-body"></div>




<table border="0" width="500" height=" 100" align="center">

<tr> <td colspan="4"> 최신 글 </td> </tr>

<tr> 
	  <th bgcolor="#EAEAEA"> NO </th> 
	  <th bgcolor="#EAEAEA"> 제목 </th>
	  <th bgcolor="#EAEAEA"> 아이디 </th>
	  <th bgcolor="#EAEAEA"> 날짜 </th>
</tr>	



	<c:forEach var="letter" items="${newestLetterlist}">
	<tr>
	     <td> ${letter.rnum} 		</td>				<!-- 번호 (row number) -->
		 <td> ${letter.letterTitle} </td>				<!-- 글 제목 -->
		 <td> ${letter.userId} 		</td>				<!-- 아이디 -->
		 <td> ${letter.letterDate} 	</td>				<!-- 날짜 -->
	</tr>
	</c:forEach>
	


</body>
</html>