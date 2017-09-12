<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>



<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

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



<title>Insert title here</title>
</head>
<body>

	<script>
		function goBack() {
			window.history.go(-1);
		}
	</script>

	<label>게시글 쓰기</label>

	<form action="letterInsert.do" method="post">

		<select name="categoryNo" id="disabledSelect" class="form-control">
			<c:forEach items="${conditionMap}" var="map">
				<option value="${map.key}">${map.value}</option>
			</c:forEach>
		</select> <br>

		<!-- 번호<input type="text" name="seq"><br/> -->
		<!-- 작성자<input type="text" name="writer"><br/> -->
		<!-- 글 번호<input type="text" name="letterNo"><br/> -->

		<div class="form-group">
			<label>제목</label> <input type="text" name="letterTitle"
				class="form-control"><br />
		</div>

		<div class="form-group">
			<label>내용</label>
			<textarea name="letterSub" class="form-control" rows="10"></textarea>
			<br />
		</div>


		<!-- 아이디<input type="text" name="userId"><br/> -->
		<!-- 	<input type="submit" value="저장"> -->
		<button type="submit" class="btn btn-primary">저장</button>
		<button onclick="goBack()" class="btn btn-default">취소</button>

	</form>
</body>
</html>