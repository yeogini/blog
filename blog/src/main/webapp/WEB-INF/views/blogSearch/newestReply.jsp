<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>최신 댓글</title>


<script>
	
</script>

<style>

</style>

</head>
<body>

          	<!-- Side Widget -->
          	<div class="card my-4"></div>
            <h5 class="card-header">최신 댓글 (newestReply)</h5>
            <div class="card-body"></div>
            
            
            
<table border="0" width="500" height=" 100" align="center">

<tr> <td colspan="4"> 최신 댓글 </td> </tr>

<tr> 
	  <th bgcolor="#EAEAEA"> NO </th> 
	  <th bgcolor="#EAEAEA"> 댓글 </th>
	  <th bgcolor="#EAEAEA"> 아이디 </th>
	  <th bgcolor="#EAEAEA"> 날짜 </th>
</tr>	



	<c:forEach var="reply" items="${newestReplylist}">
	<tr>
	     <td> ${reply.rnum} 		</td>				<!-- 번호 (row number) -->
		 <td> ${reply.replySub} 	</td>				<!-- 댓글 -->
		 <td> ${reply.userId} 		</td>				<!-- 아이디 -->
		 <td> ${reply.reDate} 		</td>				<!-- 날짜 -->
	</tr>
	</c:forEach>



</table>
</body>
</html>