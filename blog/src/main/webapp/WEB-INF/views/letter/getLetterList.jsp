<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>

function setOrderColumn(orderColumn) {
	frm.orderColumn.value =  orderColumn;
	frm.submit();
}

function selDel(){
	frm.action = "<%=request.getContextPath()%>/deleteLetterList.do";
	frm.submit();
	
}

</script>
</head>
<body>

<%-- <!-- 로그인 전 -->
<c:if test="${empty sessionScope.login}">
	<a href="login.do">로그인</a>
</c:if>

<!-- 로그인 후 -->
<c:if test="${not empty sessionScope.login}">
	${sessionScope.login} 님 <a href="logout.do">로그아웃</a>
</c:if> --%>
<hr>
	<table align="center" >
		게시판 목록
		<form name="frm" action="<%=request.getContextPath()%>/getLetterList.do" method="post">
		<hr>
		<select>
			<c:forEach items="${conditionMap}" var="map">
				<option value="${map.key}"> ${map.value} </option>
			</c:forEach>
		</select>
	</table>
<!-- 			
	<table>
	 	<tr>
			<td>
				<select name="searchCondition">
					<option value="TITLE"> 제목 </option>
					<option value="CONTENT"> 내용 </option>
				</select>
				<input type="text" name="searchKeyword"/>
				<input type="submit" name="검색"/>
			</td>
		</tr> 
	</table>
-->

	<!-- <input type="button" value="삭제" onclick="selDel()"> -->
	
	
			
<!--			
		<table>
 		<tr>
			<th>선택</th>
			<th>번호 <input type="button" value="▲" onclick="setOrderColumn('letterNo')"></th>
			<th>제목 <input type="button" value="▲" onclick="setOrderColumn('letterTitle')"></th>
			<th>작성자</th>
			<th>작성일자</th>
			<th>조회수</th>
			<th>첨부파일</th>
		</tr>
 -->
 
 
 
 			<table border="0" width="500" height=" 100" align="center">

				<tr> <td colspan="4"> 글 목록 </td> </tr>
 
					<tr> 
						  <th bgcolor="#EAEAEA"> NO  	</th> 
						  <th bgcolor="#EAEAEA"> 제목	</th>
						  <th bgcolor="#EAEAEA"> 아이디 	</th>
						  <th bgcolor="#EAEAEA"> 작성일 	</th>
						  <th bgcolor="#EAEAEA"> 조회수 	</th>
					</tr>



				<c:forEach var="letter" items="${LetterList}">
					<tr>
					    <td>${letter.rnum}																	</td>
						<%-- <td>${letter.letterNo}																</td> --%>
						<td><a href="getLetter.do?letterNo=${letter.letterNo}">${letter.letterTitle}</a>	</td>
						<td>${letter.userId}																</td>
						<td>${letter.letterDate}															</td>
						<td>${letter.hits}																	</td>
						
					</tr>
				</c:forEach>
				
			</table>
			
	</form>
	<a href="letterInsert.do">등록</a>
	
	
	
</body>
</html>