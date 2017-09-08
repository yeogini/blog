<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
게시글 쓰기
<form action="letterInsert.do" method="post">

	<select name="categoryNo">
		<c:forEach items="${conditionMap}" var="map">
			<option value="${map.key}"> ${map.value} </option>
		</c:forEach>
	</select>

	<br>

	<!-- 번호<input type="text" name="seq"><br/> -->
	<!-- 작성자<input type="text" name="writer"><br/> -->
	<!-- 글 번호<input type="text" name="letterNo"><br/> -->
	제목<input type="text" name="letterTitle"><br/>
	내용<textarea name="letterSub"></textarea><br/>
	<!-- 아이디<input type="text" name="userId"><br/> -->
	<input type="submit" value="저장">
</form> 
</body>
</html>