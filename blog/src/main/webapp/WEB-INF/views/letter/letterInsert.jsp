<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>



<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="assets/images/logo.png"
	type="image/x-icon">
<meta name="description"
	content="Responsive Bootstrap HTML Mobile Application Template - Free Download">



<title>Insert title here</title>



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



	<div id="menu-0" custom-code="true">



		<section
			class="mbr-section mbr-section-hero mbr-section-full header2 mbr-parallax-background mbr-after-navbar"
			id="header2-1"
			style="background-image: url(resources/assets/images/insert.jpg);">

			<div class="mbr-overlay"
				style="opacity: 0.3; background-color: rgb(71, 85, 119);"></div>

			<nav
				class="navbar navbar-dropdown bg-color transparent navbar-fixed-top">

				<div class="container">

					<div class="mbr-table">

						<div class="mbr-table-cell"></div>

						<div class="mbr-table-cell">



							<script>
								function goBack() {
									window.history.go(-1);
								}
							</script>
							
							<div class="form-group">
							
							<label class="nav-link link mbr-editable-menu-item" >게시글 쓰기</label>
							
							</div>
							
							<form action="letterInsert.do" method="post">

							<label class="nav-link link mbr-editable-menu-item">카테고리</label>

								<div class="form-group">
								
									<select name="categoryNo" id="disabledSelect"
										class="form-control">
										<c:forEach items="${conditionMap}" var="map">
											<option value="${map.key}">${map.value}</option>
										</c:forEach>
									</select> <br>
								</div>
								
								
								<!-- 번호<input type="text" name="seq"><br/> -->
								<!-- 작성자<input type="text" name="writer"><br/> -->
								<!-- 글 번호<input type="text" name="letterNo"><br/> -->

								<div class="form-group">
									<label class="nav-link link mbr-editable-menu-item">제목</label> <input type="text" name="letterTitle"
										class="form-control"><br />
								</div>

								<div class="form-group">
									<label class="nav-link link mbr-editable-menu-item">내용</label>
									<textarea name="letterSub" class="form-control" rows="10"></textarea>
									<br />
								</div>
								
								
								
								
									<!-- 아이디<input type="text" name="userId"><br/> -->
									<!-- 	<input type="submit" value="저장"> -->
									
									<div class="mbr-section-btn">
										<button type="submit" class="btn btn-primary">저장</button>
										<button onclick="goBack()" class="btn btn-default">취소</button>
									</div>
							</form>
</body>
</html>