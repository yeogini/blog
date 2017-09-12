<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style>
div {
	margin: 2px;

}
#title {
	
}
#top {
width: 100%;
position: relative;
}
#a {
	border: 5px solid yellow;
	height: 500px;
	width: 20%;
	float: left;
	
}
#b {
	border : 5px solid green;
	height: 500px;
	width :20%;
	float: left; 
}

#c {
	border : 5px solid black;
	height: 500px;
	width: 45%;
	float: left; 
}
#d {
	border: 5px solid blue;
	float: left;
	width: 30%;
	height: 300px;
}
#e {
	border: 5px solid red;
	float :left;
	width:50%;
	height: 300px;
}
#a input[type="file"] { /* 파일 필드 숨기기 */ 
position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; 
clip:rect(0,0,0,0); border: 0; 

}



</style>
<script src="resources/assets/js/jquery-3.2.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
/* $(document).ready(function(){ 
	var fileTarget = $('.filebox .upload-hidden'); fileTarget.on('change', function(){ 
		// 값이 변경되면 
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name; } else { 
				// old IE 
				var filename = $(this).val().split('/').pop().split('\\').pop(); 
				// 파일명만 추출 
				} 
		// 추출한 파일명 삽입 
		$(this).siblings('.upload-name').val(filename); }); }); 
			}
		}
	}
} */
function createText() {
	console.log("텍스트클릭");
	
};

</script>
</head>
<body>
<div id="title">
<center><h1>동영상 편집</h1></center>
</div> 
<div id="top">
	<div id="a">
	<form name="frm" action="" method="post" enctype="multipart/form-data"> 
	<label for="videoFile">파일</label><input type="file" id="videoFile" name="videoFile" 
	accept="file_extension|audio/*|video/*|image/*|media_type">
	<br>
	<label class="col-lg-2 control-label">이름</label>
	</form>
	</div>
	<div id="b">
	<label>텍스트 생성</label>
	<button type="button" onclick="createText()">텍스트 생성</button>
	</div><div id="c">
	<label>동영상 미리보기</label>
	</div>
</div>
<div id="d">
<label>효과</label>
</div><div id="e">
<label>타임라인</label>
</div> 


</body>
</html>