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
function Delvit(viNo){
	vit.action = "<%=request.getContextPath()%>/deleteVisit.do?viNo="+viNo;
	vit.submit();
}
function viewUpdate(visitNo){ 
	var commentDiv = document.getElementById("v"+visitNo);
	var vsub = commentDiv.innerHTML;
	commentDiv.innerHTML = '';
	var updateFormDiv = document.getElementById("commentUpdate");
	
	commentDiv.appendChild(updateFormDiv);
	updateFormDiv.style.display = '';

	document.updateForm.vSub.value = vsub;
	document.updateForm.viNo.value = visitNo;
}
function Updatevit(vino){
	updateForm.action = "<%=request.getContextPath()%>/updateVisit.do"
	updateForm.submit();
}
function cancelUpdate() {
	hideUpdateForm();
}

function hideUpdateForm() {
	var updateFormDiv = document.getElementById("commentUpdate");
	updateFormDiv.style.display = 'none';
	var no = updateFormDiv.viNo.value;
	var sub = updateFormDiv.vSub.value;
	updateFormDiv.parentNode.removeChild(updateFormDiv);
	document.documentElement.appendChild(updateFormDiv);
	document.getElementById("v"+no).innerHTML = sub;
}

function change(){
	
}
</script>
</head>
<body>
<!-- 방명록 수정폼시작 -->
<!--  -->
<div id="commentUpdate"  style="display:none" >
	<form action="" name="updateForm" >
	<input type="hidden" name="viNo" value=""/>
	<input type="text" name="vSub"/>3
	<input type="button" value="수정" onclick="Updatevit()"/>
	<input type="button" value="취소" onclick="cancelUpdate()"/>
	</form>
</div>
<!-- 방명록수정폼끝 -->

<form name="vit" action="<%=request.getContextPath()%>/getVisitList.do" method="post">

<a href="<%=request.getContextPath()%>/getVisitList.do">${mon}월</a> <br/>
<c:forEach var="cal" begin="1" end="${day}"><a href="<%=request.getContextPath()%>/getVisitList.do?year=${year}&mon=${mon}&day=${cal}&viId=${viId}" >${cal}일 </a></c:forEach> <br/>

<input type="text" name="vSub" value="50자이내로 작성을하시오."/>
<input type="button" value="등록" onclick="addVit()"/><br/>

<h3 align="center"> 방명록 목록 </h3>
<table>
	<tr>
		<td>별명(아이디)</td><td>내용</td><td>시간</td>
	</tr>
	<c:forEach var="map" items="${VisitList}">
	<tr>
		<td>${map.nickname}(${map.vid})</td><td id="v${map.vino}">${map.vsub}</td><td>${map.vdate}</td>
		<c:if test="${login == map.vid}"><td><input type="button" value="수정" onclick="viewUpdate('${map.vino}')"></td>
		<td><input type="button" value="삭제" onclick="Delvit('${map.vino}')"></td></c:if>
	</tr>
	</c:forEach>
</table>
</form>
</body>
</html>