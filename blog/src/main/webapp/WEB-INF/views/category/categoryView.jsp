<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width : 250px;
	height : 500px;
	border : 2px solid skyblue;
}
select {
	width : 200px;
	height : 25px;
}
.show{
	cursor:pointer;
}
</style>
<script src="resources/assets/js/jquery-3.2.1.min.js"></script>
<script src="resources/assets/js/json.min.js"></script>
<script>
$(function(){
	$('.show').click(function(){
		console.log("확인");
		$('#calname').val($(this).find('span:eq(0)').html());
		$('[name="cetegorychk"]').val([$(this).find('span:eq(1)').html()]);
		$('[name="type"]').val([$(this).find('span:eq(2)').html()]);
		$('[name="cetegorymouser"]').val([$(this).find('span:eq(3)').html()]);
	});
});

function save(){
	vr = confirm("저장하시겠습니까?");
	if(vr){
		cat.action="<%=request.getContextPath()%>/login.do";
		cat.submit();
	}else{
		return;
	}
}

function back(){
	bk = confirm("취소하시겠습니까?");
	if(bk){
		cal = confirm("설정한 내용이 있으면 적용이되지않습니다. 괜찮으십니까?");
		if(cal){
			cat.action="<%=request.getContextPath()%>/getMainView.do?blogId='aaa'"
			cat.submit();
		}
		else{
			return;
		}
	}else{
		return;
	}
}

function change1(obj){
    obj.style.background = 'skyblue';
    obj.style.color = 'white';
}
 
function change2(obj){
    obj.style.background = 'white';
    obj.style.color = 'black';
}

$(function(){
	$("#add").click(function(event){
		console.log("클릭");
		var choice = $("#choice").val();
		console.log(choice)
		if(choice=="c") {
			alert("항목을 선택하세요");
		} else {
			var data =$("#userid").val();
			var reqStr = {
    				userId:data,
    				type:choice
    		} ;
			$.get("insertCategory.do",reqStr,function(data) {
				console.log(data);
				if(data.type=="n") {
					console.dir(data);
					$("#tr1").prepend('<tr><td class="show" onmouseout="change2(this)" onclick="change1(this)" style="background-color:white;" ><span>'+data.categoryName+'</span></td></tr>');		
				} else if(data.type=="t"){
					$("#tr1").prepend('<tr><td class="show" onmouseout="change2(this)" onclick="change1(this)" style="background-color:white;" ><span>'+data.categoryName+'</span></td></tr>');		
				} else {
					$("#tr1").prepend('<tr><td class="show" onmouseout="change2(this)" onclick="change1(this)" style="background-color:white;" ><span>'+data.categoryName+'</span></td></tr>');		
				}
			});
		}
		/* var formPara = $("#cat").serialize();
		$.post("./insertCategory.do", formPara, function(data, stauts, xhr){
			if(data != ""){
				var name = $('cat').val($(".show").find('span:eq(0)'));
				if($("#a")==name){
					name = "게시판";
				}
				else if($("#b")==name){
					name = "그룹";
				}
				else if($("#c")==name){
					name = "---------------------";
				}
				else{
					alert("항목을 선택해주세요");
				}
			}
		}); */
	});
});
</script>
</head>
<body>
<h2>카테고리 설정</h2>
<hr style="border: solid 3px; "><br/>
<form name="cat" id="cat" action="<%=request.getContextPath()%>/CategoryList.do" method="post">
<input type="hidden" name="userid" id="userid" value="${sessionScope.login }"/>
<select name="type" id="choice">
<option value="c">선택</option>
<option value="n" id="n">게시판</option>
<option value="t" id="t">그룹</option>
<option value="d" id="d">구분선</option>
</select>
<input type="button" id="add" value="추가" /><br>
<table id="t1">
	<c:forEach var="cal" items="${CategoryList}">
	<tr>	
		<td class="show" onmouseout="change2(this)" onclick="change1(this)" style="background-color:white;" ><span>${cal.categoryName}</span>
		<span>${cal.categoryChk}</span> <span>${cal.type}</span><span>${cal.categoryMouser}</span></td>
	</tr>
	</c:forEach>
	<tr id=tr1>
		<td class="show" onmouseout="change2(this)" onclick="change1(this)" style="background-color:white;" >방명록</td>
	</tr>
</table>
<input type="button" value="▲" onclick="up()">
<input type="button" value="▼" onclick="down()">
<input type="button" value="삭제" onclick="delcat()"/>
</form>
<h4> 정보 설정</h4>
이름 : <input type="text" class="calname" name="calname" id="calname"> <br>
설정: <input type="radio" name="cetegorychk" value="1" >공개 <input type="radio" name="cetegorychk" value="0"> 비공개 <br/>
형태: <input type="radio" name="type" value="n"> 목록 <input type="radio" name="type" value="y"> 펼쳐보기 <br/>
마우스: <input type="radio" name="cetegorymouser" value="1"> 허용
<input type="radio" name="cetegorymouser" value="0"> 비허용 <br/>
<input type="button" value="적용" onclick="save()"> <input type="button" value="취소" onclick="back()">
</body>
</html>