<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/assets/css/jquery.contextMenu.css"
	rel="stylesheet" />
<title>프로필뷰</title>
<style>
img {
	width: 120px;
	height: auto;
}
</style>

<link rel="stylesheet" href="resources/assets/js/jquery-ui.min.css"></link>
<script src="resources/assets/js/jquery-3.2.1.min.js"></script>
<script src="resources/assets/js/jquery-ui.min.js"></script>
<script src="resources/assets/js/jquery.contextMenu.js"></script>
<script src="resources/assets/js/jquery.ui.position.js"></script>
    <script src="resources/assets/js/json.min.js"></script>
<script>
var a = 5;
$(function() {
	
	dialog = $( "#dialog-form" ).dialog({
	      autoOpen: false,
	      height: 400,
	      width: 350,
	      modal: true,
	      buttons: {
	       "유저 차단": addblack,
	        Cancel: function() {
	          dialog.dialog( "close" );
	        }
	      }
	      });
	
	function addblack(){
		var param = $("#frm").serialize();
		console.log(param);
		$.get({
			url :"/blog/insertBlack.do",
			data : param,
			method : "post",
			type : "json",
			success :function(data){ 
				alert(data);
				 dialog.dialog( "close" );
			} 
			
		});
		
	}
	
	
	
	var sessionUId = "<%=session.getAttribute("login")%>"
	var blogId = $("#myblog").text();
	if(sessionUId==blogId) {
		$.contextMenu({
	        selector: '#myblog',
	        trigger: 'left',
	        callback: function(key, options) {
	        	
	            if(key=='BlogHome') {
	            	document.location.href="getMainView.do?blogId="+blogId;
	            } else {
	            	document.location.href="adminView.do";
	            }
	        },
	        	items: {	
	                "BlogHome" :{name: "블로그홈"},
	              	 "BlogAdmin":{name: "블로그 관리"}
	               }
	        });
	} else {
		$.contextMenu({
	        selector: '#myblog',
	        trigger: 'left',
	        callback: function(key, options) {
	            if(key=='BlogHome') {
	            	
	            } else if(key=='friend') {
	            	var p = $("#frm").serializeObject();
	            	$.postJSON("insertFriend.do",p,function(data){
	            		console.log(data);
	            		if(data.result=="success") {
	            			alert("친구 요청 보냈습니다");
	            		} else {
	            			alert("친구 요청 실패");
	            		}
	            	});
	            } else {
	            	
	            	

		        
	          
		          dialog.dialog( "open" );
	            	
	            }
	        },
	        	items: {	
	                "BlogHome" :{name: "블로그홈"},
	              	 "friend":{name: "친구요청"},
	              	 "black": {name: "블랙리스트 추가"}
	               }
	        });
	}
	var aa;
	$("td").each(function(index, data){
		
	});
		
	
});
</script>
</head>
<body>

	<div id="dialog-form" title="black">
		<p class="validateTips">차단 사유를 입력하세요.</p>

		<form name="frm" id="frm" action="blackInsert.do" method="post">
			<input type="hidden" name="userid" value="${sessionScope.login}">
			<input type="hidden" name="d_id" value="${profile.userid}">
			<fieldset>
			<label for="blacklist">차단 사유</label> <input type="text" name="reason_code" id="black" value="" class="text ui-widget-content ui-corner-all">
			<input type="submit" tabindex="-1" style="position: absolute; top: -1000px">
			
			</fieldset>
		</form>
		<form style="width: 280px;height: 190px;">
			<img src="resources/upload/${profile.userid}.jpg" style="vertical-align:text-middle">
			<span id="myblog">${profile.userid}</span>(${profile.nickName})
			<br>
			<textarea rows="4" cols="20" readonly="readonly" style="resize:none; overflow-y:scroll; vertical-align: text-top;">${profile.intro}</textarea>
			<c:if test="${sessionScope.login==profile.userid}">
			<a href="adminView.do" id="profileEdit" target="_parent">edit</a>	
			</c:if>
		</form>
		<form name="frm" id="frm" action="insertFriend.do">
			<input type="hidden" name="userid" value="${sessionScope.login}">
			<input type="hidden" name="f_id" value="${profile.userid }">

		</form>
	</div>


	<form style="width: 280px; height: 190px;">
		<img src="resources/upload/${profile.userid}.jpg"
			style="vertical-align: text-middle"> <span id="myblog">${profile.userid}</span>(${profile.nickName})
		<br>
		<textarea rows="4" cols="20" readonly="readonly"
			style="resize: none; overflow-y: scroll; vertical-align: text-top;">${profile.intro}</textarea>
		<a href="adminView.do" id="profileEdit" target="_parent">edit</a>
	</form>

	<!--  <input id="black" type="button" value="유저 차단"> -->

</body>
</html>