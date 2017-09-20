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

<!-- BLOG CSS -->
<link href="resources/css/blog.css" rel="stylesheet" />

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



<!-- 댓글 목록 불러오기 스크립트 -->

<script>

function replyDelete(replyNo) {
	
	var formPara = {"replyNo":replyNo};
	$.post("./deleteReply.do", formPara, function(data, status, xhr){

		if (data != "") {
				confirm("해당 댓글을 삭제할까요?");
				$('#'+ replyNo)	.remove();

		}
	});
}

function LetterDelete() {
	
	if( confirm("해당 글과 댓글 모두 삭제하시겠습니까?")==true ) {
		return true;
	} else{
		return false;
	}
}

$(document).ready(function(){

	getBoard();
	
	// ajax 로 게시글 로딩
	function getBoard() 
	{
		var requestData = {"letterNo":${letter.letterNo} };
		console.log(requestData);
		/* $('div.indicator').html('<img src="./images/indicator_01.gif">'); */
		
		$.ajaxSetup({
			url:'./getReplyList.do',
			type:'POST'			,
			dataType : 'json'
		});
		
		$.ajax({
			data : requestData,
			cache: false,
			success : function(data) {
			/* 	alert('success'); */
				if (data != "") {
					//var articles = $.parseJSON(data);

					for( i=0; i< data.length; i++) {
						
					var delButton = '<input type="submit" onclick=replyDelete('+ data[i].replyNo + ') value="삭제" >';	
						
						
						

						/* 본인 댓글만 삭제 */
						if(data[i].userId != "${sessionScope.login}" && "${sessionScope.blogId}" != "${sessionScope.login}"){
							delButton ="";
						} 
						var html = '<tr class="article" id="'+ data[i].replyNo + '">' 
									 + '<td>' +	data[i].userId 	 + '</td>'
									 + '<td>' + data[i].replySub + '</td>'
									 + '<td>' +	data[i].reDate 	 + '</td>'
									 + '<td>' +	delButton+ '</td>'
									 + '</tr>';
									
						$(".article:last").after(html);	
						/* if */
						
					} /* for */
					
					
					
				/* if */	
				} else {
					/* alert('댓글이 없는 글 입니다.'); */
				}      
			
			},
		error: function(xhr, status, msg) { alert(status +":"+msg);}
		})/* .always(function(){ $('div.indicator').empty(); } ) */;
	}
	
/*-------------------------
 *  form submit event (댓글 등록)
 ------------------------- */
	$("#replyForm").submit(function(event) {
		event.preventDefault();
		var formPara = $(this).serialize();
		
		$.post("./insertReply.do", formPara, function(data, status, xhr){
			
			console.log(data+"===");
			
			if (data.replyNo != "") {
				var delButton = '<input type="submit" onclick=replyDelete('+ data.replyNo + ') value="삭제" >';	
				
				if(data.userId != "${sessionScope.login}"){
					delButton ="";
				}
				var html = '<tr class="article" id="'+ data.replyNo + '">' 
											 + '<td>' +	data.userId 	 + '</td>'
											 + '<td>' + data.replySub    + '</td>'
											 + '<td>' +	data.reDate 	 + '</td>'
											 + '<td>' +	delButton+ '</td>'
											 + '</tr>';
											 
				$(".article:eq(0)").after(html);	
				
				
				
			} else {
				alert("차단 되었습니다.");
			}
		});
	});

/*-------------------------
 *  scroll event
 ------------------------- */
	$(window).scroll(function(){
		if  ($(window).scrollTop() == $(document).height() - $(window).height()){
			getBoard();
		}
	}); 
});


/* 댓글 목록 불러오기 스크립트 */

</script>

</head>
<body>

	<div class="form-group" align="center" style="font-size:14px;">

		<hr>

		상세보기

		<hr>

		<table border="0" width="100" height=" 200" width="700" align="center"
			class="table table-striped table-bordered table-hover"
			id="dataTables-example">


			<tr>
				<td align="center">글 번호</td>
				<td align="center">${letter.letterNo}</td>
			<tr>
				<td align="center">카테고리</td>
				<td align="center">${letter.categoryNo}</td>
			<tr>
				<td align="center">제목</td>
				<td align="center">${letter.letterTitle}</td>
			<tr>
				<td align="center" colspan="5"> < 내용 > </td>
			</tr>

			<tr>
				<td colspan="5">${letter.letterSub}</td>
			</tr>
		</table>
	</div>


	<!-- 블로그 주인 == 로그인ID -->
	<c:if test="${ sessionScope.blogId == sessionScope.login }">
		<div class="mbr-section-btn" align="center">

			<br /> <a class="btn btn-white"
				href="letterUpdate.do?letterNo=${letter.letterNo}">수정</a> <br />

			<form name="frm" onclick="return LetterDelete()"
				action="deleteLetter.do">
				<input type="hidden" name="letterNo" value="${letter.letterNo}" />
				<input class="btn btn-white" type="submit" value="삭제">
			</form>

			<!-- <a href="getLetterList.do" class="btn btn-black">목록으로 돌아가기</a> -->
		</div>
	</c:if>


	<!-- 블로그 주인 != 로그인ID -->
	<c:if test="${ sessionScope.blogId != sessionScope.login }">
	
    	alert("해당 시스템에서 권한이 없습니다.");
    	
	</c:if>



	<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

	<div border="0" width="100" height=" 200" align="center"
		class="table table-striped table-bordered table-hover"
		id="dataTables-example" style="font-size:14px;">

		<HR>

		댓글 쓰기

		<HR>

		<br />

		<!-- 댓글쓰기 -->
		<form id="replyForm">
			<fieldset>

				<!--<label for="userId"></label> 
				 	<input type="hidden" id="userId" name="userId" placeholder="작성자" required="required" /> 
						<label for="content"> </label> -->

				<!-- userId -->
				<label>BLOG HOST ID : ${sessionScope.blogId}</label> <br />
				<!-- userId -->
				<label>현재 로그인 ID : ${sessionScope.login}</label> <br />
				<%-- 				
				<input  type="text" id="userId" 
						name="userId" value="${sessionScope.login}" 
						width="10" height="5" maxlength="15" readonly="readonly" />
--%>

				<br /> <input type="hidden" id="letterNo" name="letterNo"
					value="${letter.letterNo}">
				<!-- replySub -->
				<textarea id="replySub" name="replySub" placeholder="내용입력" rows="2"
					cols="60" /></textarea>
				<input type="submit" value="댓글 등록" />

			</fieldset>
		</form>
		<!-- 댓글쓰기 -->




		<!-- 테이블 -->
		<table border="1" width="700">

			<tr class="article" align="center">
				<!-- <td>번호 -->
				<td>ID</td>
				<td>댓글 내용</td>
				<td>Date</td>
				<td>삭제</td>
			</tr>

		</table>
</body>
</html>