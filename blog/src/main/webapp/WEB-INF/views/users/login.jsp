<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
�ù�
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>메인</title>
<link rel="stylesheet" href="resources/logincss/login.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<style>
body{
     background-image: url("resources/assets/img/bg.jpg");
}
 a{
 	color: SkyBlue;
 	font-size: 20px;
 	
 }
</style>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
function insertUser(){
	frm.action="<%=request.getContextPath()%>/insertUserForm.do";
	frm.submit();
};
</script>
</head>

<body>
<div class="container">
		<div class="row" align="right">
                <p></p>
                   <p align="right">
					<strong><a href="list.do">블로그 가기</a></strong>
           			</p>
            </div>
    <div class="row">
			
			<div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="account-wall">
                <div id="my-tab-content" class="tab-content">
						<div class="tab-pane active" id="login">
               		    <img class="profile-img" src="./resources/images/Tulips.jpg"
                    				alt="">
               			<form class="form-signin" action="login.do" method="post" name="frm">
               				<input type="text" class="form-control" placeholder="Username" required autofocus name="userid">
               				<input type="password" class="form-control" placeholder="Password" required name="userPass">
               				<input type="submit" class="btn btn-lg btn-default btn-block" value="로그인" />
               				<input type="button" class="btn btn-lg btn-default btn-block" value="회원가입" onclick="insertUser()"/>
               			</form>
               		</div>
               	</div>
            </div>
        </div>
    </div>
</div>
>>>>>>> branch 'master' of https://github.com/yeogini/blog.git
</body>
</html>