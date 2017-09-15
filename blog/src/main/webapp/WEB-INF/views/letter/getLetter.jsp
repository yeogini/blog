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



<!-- 댓글 목록 불러오기 스크립트 -->



<!-- <script src="../scripts/jquery-1.10.2.js"></script> -->

<script>
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
						var html = '<tr class="article" id="'+ data[i].replyNo + '">' 
									 + '<td>' + data[i].rnum 	 + '</td>'
									 + '<td>' + data[i].replySub + '</td>'
									 + '<td>' +	data[i].userId 	 + '</td>'
									 + '<td>' +	data[i].reDate 	 + '</td>'
									 + '<td>' +	data[i].reDate 	 + '</td>'
									 + '</tr>';
									
						$(".article:last").after(html);	
					
						
						
					}
				} else {
					alert('no data');
				}      
			
			},
		error: function(xhr, status, msg) { alert(status +":"+msg);}
		})/* .always(function(){ $('div.indicator').empty(); } ) */;
	}
	
/*-------------------------
 *  form submit event (댓글 등록)
 ------------------------- */
	$("form").submit(function(event) {
		event.preventDefault();
		var formPara = $(this).serialize();
		$.post("/insertReply.do", formPara, function(data, status, xhr){
			if (data != "") {
				$(".article:first").before('<tr class="article" id="'+ data[i].replyNo + '">' 
														    + '<td>' + data[i].rnum 	 + '</td>'
														    + '<td>' + data[i].replySub + '</td>'
														   	+ '<td>' + data[i].userId 	 + '</td>'
														 	+ '<td>' + data[i].reDate 	 + '</td>'
														 	+ '<td>' + data[i].reDate 	 + '</td>'
														 	+ '</tr>');			
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



/* ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| */



	/* 댓글 스크립트 START */



	// 페이지 로딩 후에 목록조회 ajax 요청
	window.onload = function() {
		loadCommentList();	
		var chatting = new chat.Chat();
	}

	//목록요청
	function loadCommentList() {
		new ajax.xhr.Request("CommentsServ?cmd=selectAll", "", loadOmmentResult, "get" )
	}

	//목록요청 callback
	function loadOmmentResult(req) {
		if(req.readyState == 4) {
			if(req.status == 200) {
				var xmlDoc = req.responseXML;	// 서버의 실행 결과 XML
				var code = xmlDoc.getElementsByTagName("code").item(0).firstChild.nodeValue;	// code 태그 내용
				
				if(code == 'success') {
					var data = xmlDoc.getElementsByTagName("data").item(0).firstChild.nodeValue;	// data 태그 내용
					var commentList = eval( "(" + data + ")" );	// string -> json 객체(eval함수 사용)
					var listDiv = document.getElementById("commentList");				// 출력할 위치
					for(i=0; i<commentList.length; i++) {	// 댓글 수 만큼 반복
						var div = makeCommentView(commentList[i]);	// 댓글 div 생성
						listDiv.appendChild(div);
						
						
						
						/* listDiv.innerHTML += commentList[i].id + " : " +
											 commentList[i].name + " : " +
											 commentList[i].content + "<br/>"; */					 
					}
				} else {
					alert("댓글로딩 실패 : " + req.status)
				}
			}
		}
	}

	function makeCommentView(comment) {
		var commentDiv = document.createElement("div");	//태그생성 <div>
		commentDiv.setAttribute("id", "c"+comment.id);	// 속성지정<div id='c1'/>
		var html = "<strong>"+comment.name+"</strong><br>"+ comment.content +
		"<input type=\"button\" value=\"수정\" onclick=\"viewUpdate('"+comment.id+"')\"/>"+
		"<input type=\"button\" value=\"삭제\" onclick=\"confirmDeletion('"+comment.id+"')\"/>";
		commentDiv.innerHTML = html;	// 태그내용 지정
		commentDiv.className = "comment";		// 태그 스타일 속성 className이라는 속성을 만듬 
		// <div id='c1' class="comment">태그내용</div>
		commentDiv.comment = comment;
		return commentDiv;
		}

	// 댓글등록 요청
	function addComment() {
		var name = document.addForm.name.value;			// 작성자 텍스트 필드 입력값
		var content = document.addForm.content.value;	// 댓글
		var param = "cmd=insert&name="+name+"&content="+content;
		new ajax.xhr.Request("CommentsServ", param, addResult, "get" )	
	}
	
	//댓글등록 콜백함수
	function addResult(req) {
		if(req.readyState == 4) {
			if(req.status == 200) {
				var xmlDoc = req.responseXML;	// 서버의 실행 결과 XML
				var code = xmlDoc.getElementsByTagName("code").item(0).firstChild.nodeValue;	// code 태그 내용
				
				if(code == 'success') {
					var data = xmlDoc.getElementsByTagName("data").item(0).firstChild.nodeValue;	// data 태그 내용
					var comment = eval( "(" + data + ")" );	// string -> json 객체(eval함수 사용)
					var listDiv = document.getElementById("commentList");				// 출력할 위치
					
						var div = makeCommentView(comment);	// 댓글 div 생성
						listDiv.appendChild(div);
						
						
						
						/* listDiv.innerHTML += commentList[i].id + " : " +
											 commentList[i].name + " : " +
											 commentList[i].content + "<br/>"; */					 
					
				} else {
					alert("댓글로딩 실패 : " + req.status)
				}
			}
		}
	}
	
	// 수정버튼 클릭 시 수정 폼 보이도록
	function viewUpdate(commentId) {
		var commentDiv = document.getElementById("c" + commentId);			// 수정할 댓글 수정
		var commentFormDiv = document.getElementById("commentUpdate");	// 수정폼이 있는 div
		
		commentDiv.appendChild(commentFormDiv);	// 수정폼을 수정할 댓글로 이동
		commentFormDiv.style.display = '';		// 수정폼이 보이도록
		// 수정할 값을 텍스트필드에 보이도록
		document.updateForm.id.value = commentDiv.comment.id;
		document.updateForm.name.value = commentDiv.comment.name;
		document.updateForm.content.value = commentDiv.comment.content;
		
	}
	
	// 댓글수정 요청
	function updateComment() {
		var id = document.updateForm.id.value;
		var name = document.updateForm.name.value;			// 작성자 텍스트 필드 입력값
		var content = document.updateForm.content.value;	// 댓글
		var param = "cmd=update&name="+name+"&content="+content +"&id="+id;
		new ajax.xhr.Request("CommentsServ", param, updateResult, "get" )	
	}
	
	// 댓글수정 콜백
	function updateResult(req) {
		if(req.readyState == 4) {
			if(req.status == 200) {
				var xmlDoc = req.responseXML;	// 서버의 실행 결과 XML
				var code = xmlDoc.getElementsByTagName("code").item(0).firstChild.nodeValue;	// code 태그 내용
				
				if(code == 'success') {
					var data = xmlDoc.getElementsByTagName("data").item(0).firstChild.nodeValue;	// data 태그 내용
					var comment = eval( "(" + data + ")" );	// string -> json 객체(eval함수 사용)
					var listDiv = document.getElementById("commentList");				// 출력할 위치
					
						// 수정폼은 body 밑으로 이동
						var updateFormDiv = document.getElementById("commentUpdate");
						updateFormDiv.style.display = 'none';
						document.body.appendChild(updateFormDiv);
						
						//수정된 div로 교체
						var div = makeCommentView(comment);	// 댓글 div 생성
						var oldDiv = document.getElementById("c"+comment.id);
						listDiv.replaceChild(div, oldDiv);
						
				} else {
					alert("댓글로딩 실패 : " + req.status)
				}
			}
		}
	}
	
	// 댓글삭제 요청
	function confirmDeletion(id) {
		var param = "cmd=delete&id="+id;
		new ajax.xhr.Request("CommentsServ", param, removeResult, "get" )	
	}
	
	// 댓글삭제 요청
	function removeResult(req) {
		if(req.readyState == 4) {
			if(req.status == 200) {
				var xmlDoc = req.responseXML;	// 서버의 실행 결과 XML
				var code = xmlDoc.getElementsByTagName("code").item(0).firstChild.nodeValue;		// code 태그 내용
				
				if(code == 'success') {
					var data = xmlDoc.getElementsByTagName("data").item(0).firstChild.nodeValue;	// data 태그 내용
					var comment = eval( "(" + data + ")" );											// string -> json 객체(eval함수 사용)
					var commentDiv = document.getElementById("c"+comment.id);
					commentDiv.parentNode.removeChild(commentDiv);
					alert("삭제했습니다.");
				} else {
					alert("댓글로딩 실패 : " + req.status)
				}
			}
		}
	}
	
	
	
	/* 댓글 스크립트 END */



</script>





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
				<td align="center">글 번호</td>
				<td align="center">${letter.letterNo}</td>
			<tr>
				<td align="center">카테고리</td>
				<td align="center">${letter.categoryNo}</td>
			<tr>
				<td align="center">제목</td>
				<td align="center">${letter.letterTitle}</td>
			<tr>
				<td align="center" colspan="5">내용</td>
			</tr>

			<tr>
				<td colspan="5">${letter.letterSub}</td>
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

	<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

	<div border="0" width="100" height=" 200" align="center"
		class="table table-striped table-bordered table-hover"
		id="dataTables-example">

		<HR>

		댓글 쓰기

		<!-- 댓글쓰기 -->
		<form action="insertReply.do" method="post">
			<fieldset>
			
			<!--<label for="userId"></label> 
				 	<input type="hidden" id="userId" name="userId" placeholder="작성자" required="required" /> 
						<label for="content"> </label> -->
					
				<label>사용자 ID :</label>
					<input type="text" id="userId" name="userId" value="${letter.userId}" readonly="readonly" width="10" height="5" maxlength="15"/> 
				
				<textarea id="replySub" name="replySub" placeholder="내용입력" rows="2" cols="60" /></textarea>
				
					<input type="submit" value="댓글 등록" /> 

			</fieldset>
		</form>
		<!-- 댓글쓰기 -->

		<!-- 테이블 -->
		<table border="1">

			<tr class="article">
				<td>번호
				<td>댓글 내용</td>
				<td>ID</td>
				<td>Date</td>
				<td>구분(삭제)</td>
			</tr>

			<%-- <tr>
					<td>  ${reply.rnum}  		</td> 
					<td>  ${reply.replySub}  	</td> 
					<td>  ${reply.userId}  		</td> 
					<td>  ${reply.reDate}  		</td>
					<td>   						</td>
			</tr> --%>

		</table>
		<!-- 테이블 -->

		<!-- 댓글 나옴 -->

		<!-- 	<div class="articles">
			<div class="article" id="0">댓글 목록</div>
			
		</div>  -->
	</div>

	<!-- <div class="indicator"></div> -->
	<!-- 댓글 나옴 -->
	
	
	
<!-- 



	commentList.jsp
	<div id="commentList"></div>

	댓글등록시작
	<div id="commentAdd">
		<form action="" name="addForm">
			이름: <input type="text" name="name" size="10"><br /> 내용:
			<textarea name="content" cols="20" rows="2"></textarea>
			<br /> <input type="button" value="등록" onclick="addComment()" />
		</form>
	</div>
	댓글등록끝



	댓글수정폼시작
	<div id="commentUpdate" style="display: none">

		<form action="" name="updateForm">

			<input type="hidden" name="id" value="" /> 이름: 
			<input type="text" name="name" size="10"><br /> 내용:
			<textarea name="content" cols="20" rows="2"></textarea>

			<br /> 
			
			<input type="button" value="등록" onclick="updateComment()" />
			<input type="button" value="취소" onclick="cancelUpdate()" />

		</form>
	</div>
	댓글수정폼끝


 -->
</body>
</html>