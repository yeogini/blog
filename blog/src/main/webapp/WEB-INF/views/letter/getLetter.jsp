<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<html>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="shortcut icon" href="assets/images/logo.png"
	type="image/x-icon"> -->
<meta name="description"
	content="Responsive Bootstrap HTML Mobile Application Template - Free Download">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="shortcut icon" href="assets/images/logo.png"
	type="image/x-icon"> -->
<meta name="description"
	content="Responsive Bootstrap HTML Mobile Application Template - Free Download">



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



<title>상세보기</title>



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



</head>
<body>

	<table border="0" width="100" height=" 200" align="center"
		class="table table-striped table-bordered table-hover"
		id="dataTables-example">



		<div class="form-group" align="center">

			<hr>

			상세보기

			<hr>

			<tr>
				<td align="center"> 글 번호 </td>
				<td align="center">${letter.letterNo}</td>
			<tr>
				<td align="center"> 카테고리 </td>
				<td align="center">${letter.categoryNo}</td>
			<tr>
				<td align="center">제목 </td>
				<td align="center">${letter.letterTitle}</td>

					<tr>
						<td align="center" colspan="5"> 내용 </td>
					</tr>

					<tr>
						<td colspan="5"> ${letter.letterSub} </td>
					</tr>

				</table>
		</div>

	</table>



	<br />


	<div class="mbr-section-btn" align="center">
		<br /> <a class="btn btn-white"
			href="letterUpdate.do?letterNo=${letter.letterNo}">수정</a> <br />
		<form name="frm" action="deleteLetter.do">
			<input type="hidden" name="letterNo" value="${letter.letterNo}" /> <input
				class="btn btn-white" type="submit" value="삭제">
		</form>
		<a href="getLetterList.do" class="btn btn-black">목록으로 돌아가기</a>
	</div>

</body>
</html>