<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
게시글 수정
<form action="letterUpdate.do" method="post">
	<%-- <input type="hidden" name="seq" value="${board.seq}"><br/> --%>
	
	<select name="categoryNo">
		<c:forEach items="${conditionMap}" var="map">
			<option value="${map.key}"> ${map.value} </option>
		</c:forEach>
	</select>

	<br>
	
	
	제목<input type="text" name="letterTitle"  value="${letter.letterTitle}"><br/>
	내용<textarea name="letterSub">${letter.letterSub}</textarea>
	<input type="submit" value="저장">
	
</form> 
</body>
</html>