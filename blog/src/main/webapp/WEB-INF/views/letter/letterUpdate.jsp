<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
�Խñ� ����
<form action="letterUpdate.do" method="post">
	<%-- <input type="hidden" name="seq" value="${board.seq}"><br/> --%>
	
	<select name="categoryNo">
		<c:forEach items="${conditionMap}" var="map">
			<option value="${map.key}"> ${map.value} </option>
		</c:forEach>
	</select>

	<br>
	
	
	����<input type="text" name="letterTitle"  value="${letter.letterTitle}"><br/>
	����<textarea name="letterSub">${letter.letterSub}</textarea>
	<input type="submit" value="����">
	
</form> 
</body>
</html>