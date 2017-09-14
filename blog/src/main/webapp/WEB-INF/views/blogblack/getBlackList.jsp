<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
     
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
 table {border: 2px double black; width:666px}
  td,th{border:1px black solid ; text-align: center; padding:5px}
</style>
<script>


</script>
</head>
<body>
<form>

  <h2>유저차단</h2>
 <table>
        <tr>
        <th>번호</th><th>아이디</th><th>차단된 아이디</th><th>차단사유</th>
        </tr>
        
        
       	<c:forEach var="black" items="${blackList}">
			  <tr>
        <th>${black.d_no}</th> <th>${black.userid}</th><th>${black.d_id}</th><th>${black.reason_code}</th>
        </tr>
			 </c:forEach>
</table>
</form>
</body>
</html>