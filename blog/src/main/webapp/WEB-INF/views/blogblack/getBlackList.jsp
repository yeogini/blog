<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
  <!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
 table {border: 2px double black; width:666px}
  td,th{border:1px black solid ; text-align: center; padding:5px}
</style>
<script src="resources/assets/js/jquery-3.2.1.min.js"></script>
<script>
$(function(){
$("[name='delete']").click(function(event) {
	event.preventDefault();
	$.ajax({
	url :"Deleteblack.do",
	data:{"d_no":$(this).attr("id")},
	success:function(data){
		console.dir(data);
		$("#"+data).parent().parent().remove();
	}
	});
	return false;
});
});
</script>
</head>
<body>
<form>

  <h2>유저차단</h2>
 <table>
        <tr>
        <th>번호</th> <th>차단된 아이디</th><th>차단사유</th><th>상태</th>
        </tr>        
        
       
       	<c:forEach items="${blackList}" var="list">
			  <tr>
        <th>${list.d_no}</th> <th>${list.d_id}</th><th>${list.reason_code}</th>
		<th><input name="delete" id="${list.d_no}" type="button" value="삭제"/></th>     
        </tr>
        
        </c:forEach>
</table>

</form>
</body>
</html>