<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- TABLE STYLES-->
<link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

<script src="resources/assets/js/jquery-3.2.1.min.js"></script>
    <!-- JQUERY SCRIPTS -->
<script src="resources/assets/js/jquery-1.10.2.js"></script>

<!-- BOOTSTRAP SCRIPTS -->
<script src="resources/assets/js/bootstrap.min.js"></script>

<!-- METISMENU SCRIPTS -->
<script src="resources/assets/js/jquery.metisMenu.js"></script>
   <script src="resources/assets/js/json.min.js"></script>
   
<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
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
		<%-- ${sessionScope.login} --%>
	<div class="form-group">
	<form id="vit" name="vit" action="" method="post" class="from-control">
		<input type="hidden" id="id" name="id" value="${sessionScope.blogId}" />
		<input type="hidden" name="mv" value="Main" />
		
		<table border="1">
		
			<tr>
				<td id="demo"></td>
			</tr>
			
			<tr>
				<td> <input type="text" name="vSub" /> </td>
			</tr>
			
		</table>
		
		<input type="button" value="등록" onclick="addVit()" />

	</form>
	</div>
</body>
</html>