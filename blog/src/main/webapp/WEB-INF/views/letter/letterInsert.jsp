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
<form action="letterInsert.do" method="post">

	<select name="categoryNo">
		<c:forEach items="${conditionMap}" var="map">
			<option value="${map.key}"> ${map.value} </option>
		</c:forEach>
	</select>

	<br>

	<!-- ��ȣ<input type="text" name="seq"><br/> -->
	<!-- �ۼ���<input type="text" name="writer"><br/> -->
	<!-- �� ��ȣ<input type="text" name="letterNo"><br/> -->
	����<input type="text" name="letterTitle"><br/>
	����<textarea name="letterSub"></textarea><br/>
	<!-- ���̵�<input type="text" name="userId"><br/> -->
	<input type="submit" value="����">
</form> 
</body>
</html>