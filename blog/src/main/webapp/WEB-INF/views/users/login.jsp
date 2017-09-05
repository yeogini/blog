<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="resources/logincss/login.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
 <style>
</style>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
</script>
</head>

<body>
<div class="container">
		<div class="row" align="right">
                <p></p>

                   <p align="right">
					<a href="#">블로그 가기</a>
           			</p>
            </div>
    <div class="row">
			
			<div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="account-wall">
                <div id="my-tab-content" class="tab-content">
						<div class="tab-pane active" id="login">
               		    <img class="profile-img" src="./resources/images/Tulips.jpg"
                    				alt="">
               			<form class="form-signin" action="login.do" method="post">
               				<input type="text" class="form-control" placeholder="Username" required autofocus name="userid">
               				<input type="password" class="form-control" placeholder="Password" required name="userPass">
               				<input type="submit" class="btn btn-lg btn-default btn-block" value="로그인" />
               				<input type="button" class="btn btn-lg btn-default btn-block" value="회원가입" />
               			</form>
               		</div>
               	</div>
            </div>
        </div>
    </div>
</div>
</body>
</html>