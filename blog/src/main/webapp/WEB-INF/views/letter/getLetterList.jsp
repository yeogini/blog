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

<%-- <!-- �α��� �� -->
<c:if test="${empty sessionScope.login}">
	<a href="login.do">�α���</a>
</c:if>

<!-- �α��� �� -->
<c:if test="${not empty sessionScope.login}">
	${sessionScope.login} �� <a href="logout.do">�α׾ƿ�</a>
</c:if> --%>
<hr>
	<table align="center" >
		�Խ��� ���
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
					<option value="TITLE"> ���� </option>
					<option value="CONTENT"> ���� </option>
				</select>
				<input type="text" name="searchKeyword"/>
				<input type="submit" name="�˻�"/>
			</td>
		</tr> 
	</table>
-->

	<!-- <input type="button" value="����" onclick="selDel()"> -->
	
	
			
<!--			
		<table>
 		<tr>
			<th>����</th>
			<th>��ȣ <input type="button" value="��" onclick="setOrderColumn('letterNo')"></th>
			<th>���� <input type="button" value="��" onclick="setOrderColumn('letterTitle')"></th>
			<th>�ۼ���</th>
			<th>�ۼ�����</th>
			<th>��ȸ��</th>
			<th>÷������</th>
		</tr>
 -->
 
 
 
 			<table border="0" width="500" height=" 100" align="center">

				<tr> <td colspan="4"> �� ��� </td> </tr>
 
					<tr> 
						  <th bgcolor="#EAEAEA"> NO  	</th> 
						  <th bgcolor="#EAEAEA"> ����	</th>
						  <th bgcolor="#EAEAEA"> ���̵� 	</th>
						  <th bgcolor="#EAEAEA"> �ۼ��� 	</th>
						  <th bgcolor="#EAEAEA"> ��ȸ�� 	</th>
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
	<a href="letterInsert.do">���</a>
	
	
	
</body>
</html>