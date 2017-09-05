<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function addVit(){
	vit.action = "<%=request.getContextPath()%>/insertVisit.do";
	vit.submit();
}
</script>
</head>
<body>
<form name="vit" action="<%=request.getContextPath()%>/getVisitList.do" method="post">

<input type="text" name="vSub"/>
<input type="button" value="등록" onclick="addVit()"/><br/><br/>
<h3> 방명록 목록 </h3>
<table>
	<tr>
		<td>별명(아이디)</td><td>내용</td><td>시간</td>
	</tr>
	<c:forEach var="map" items="${VisitList}">
	<tr>
		<td>${map.nickname}(${map.vid})</td><td>${map.vsub}</td><td>${map.vdate }</td>
	</tr>
	</c:forEach>
</table>
</form>
</body>
</html>