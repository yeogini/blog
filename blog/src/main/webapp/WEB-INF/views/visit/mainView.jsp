<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function addVit(){
	vit.action = "<%=request.getContextPath()%>/insertVisit.do";
	vit.submit();
}

var myVar = setInterval(myTimer ,1000);
function myTimer() {
    var d = new Date();
    document.getElementById("demo").innerHTML = d.toLocaleTimeString();
}
</script>
</head>
<body>
<form name="vit" action="<%=request.getContextPath()%>/getVisitList.do" method="post">

<table border="1">
<tr><p id="demo"></p></tr>
<tr><input type="text" name="vSub"/></tr>
</table>
<input type="button" value="등록" onclick="addVit()"/>

</form>
</body>
</html>