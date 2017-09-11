<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>글 목록</title>


<!-- BOOTSTRAP STYLES-->
<link href="resources/assets/css/bootstrap.css" rel="stylesheet" />

<!-- FONTAWESOME STYLES-->
<link href="resources/assets/css/font-awesome.css" rel="stylesheet" />

<!-- MORRIS CHART STYLES-->
<link href="resources/assets/js/morris/morris-0.4.3.min.css"
	rel="stylesheet" />

<!-- CUSTOM STYLES-->
<link href="resources/assets/css/custom.css" rel="stylesheet" />

<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script src="resources/assets/js/jquery-3.2.1.js"></script>

<!-- BOOTSTRAP SCRIPTS -->
<script src="resources/assets/js/bootstrap.min.js"></script>

<!-- METISMENU SCRIPTS -->
<script src="resources/assets/js/jquery.metisMenu.js"></script>

<!-- MORRIS CHART SCRIPTS -->
<script src="resources/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="resources/assets/js/morris/morris.js"></script>

<!-- CUSTOM SCRIPTS -->
<script src="resources/assets/js/custom.js"></script>

<!-- TABLE STYLES-->
<link href="assets/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />


<script>

	function setOrderColumn(orderColumn) {
		frm.orderColumn.value = orderColumn;
		frm.submit();
	}

	function selDel() {
		frm.action = "<%=request.getContextPath()%>/deleteLetterList.do";
		frm.submit();

	}
</script>
</head>
<body>





	<table align="center">

		카테고리 설정
		<form name="frm"
			action="<%=request.getContextPath()%>/getLetterList.do" method="post">

			<select>
				<c:forEach items="${conditionMap}" var="map">
					<option value="${map.key}">${map.value}</option>
				</c:forEach>
			</select>

		<%-- 	<!-- 로그인 전 -->
			<c:if test="${empty sessionScope.login}">
				<a href="getUsersList.do">로그인</a>
			</c:if>

			<!-- 로그인 후 -->
			<c:if test="${not empty sessionScope.login}">
				${sessionScope.login} 님 <a href="logout.do">로그아웃</a>
			</c:if> --%>
			
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

	<!-- 테이블 CSS -->

	<hr />

	<div class="row">
		<div class="col-md-12">
			<!-- Advanced Tables -->
			<div class="panel panel-default">
				<div class="panel-heading" align="center">
					<h2>
						글 목록
						<h2>
				</div>
				<div class="panel-body">
					<div class="table-responsive">

						<!-- 테이블 CSS -->

						<table border="0" width="500" height=" 100" align="center"
							class="table table-striped table-bordered table-hover"
							id="dataTables-example">

							<!-- <tr>
								<td colspan="4">글 목록</td>
							</tr> -->

							<tr>
								<th>NO</th>
								<th>제목</th>
								<th>아이디</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>



							<c:forEach var="letter" items="${LetterList}">
								<tr>
									<td>${letter.rnum}</td>
									<%-- <td>${letter.letterNo}																</td> --%>
									<td><a href="getLetter.do?letterNo=${letter.letterNo}">${letter.letterTitle}</a>
									</td>
									<td>${letter.userId}</td>
									<td>${letter.letterDate}</td>
									<td>${letter.hits}</td>

								</tr>
							</c:forEach>

						</table>
						<!-- 테이블 CSS -->
					</div>
				</div>
			</div>
			<!-- 테이블 CSS -->
		</div>
		</form>

		<a href="letterInsert.do">등록</a>
</body>
</html>