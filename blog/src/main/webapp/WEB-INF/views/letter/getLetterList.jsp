<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>



<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="assets/images/logo.png"
	type="image/x-icon">
<meta name="description"
	content="Responsive Bootstrap HTML Mobile Application Template - Free Download">

<title>글 목록</title>



<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
<link rel="stylesheet"
	href="resources/assets/bootstrap-material-design-font/css/material.css">
<link rel="stylesheet"
	href="resources/assets/web/assets/mobirise-icons/mobirise-icons.css">
<link rel="stylesheet"
	href="resources/assets/et-line-font-plugin/style.css">
<link rel="stylesheet" href="resources/assets/tether/tether.min.css">
<link rel="stylesheet"
	href="resources/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/dropdown/css/style.css">
<link rel="stylesheet"
	href="resources/assets/animate.css/animate.min.css">
<link rel="stylesheet" href="resources/assets/theme/css/style.css">
<link rel="stylesheet"
	href="resources/assets/mobirise/css/mbr-additional.css" type="text/css">



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



<div id="menu-0" custom-code="true"></div>







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

		<div class="form-group">
			<label class="nav-link link mbr-editable-menu-item">카테고리 설정</label>
		</div>

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

		<div class="mbr-section-btn" align="center">
			<a href="letterInsert.do" class="btn btn-white">글 등록</a>
		</div>
</body>
</html>