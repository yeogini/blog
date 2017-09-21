<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>프로필 관리</title>
<style>

</style>
<script>
</script>
</head>
<body>
<div class="container">
	<div class="row" align="center">
		<h2>프로필 관리</h2>
	</div>
	<div class="row">
		<form name="frm" action="updateProfile.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="userid" value=${profile.userid}>
		<div class="form-group" id="divId">
           <p></p><br>
                <label for="inputId" class="col-lg-2 control-label">블로그 제목 </label>
                <div class="col-lg-10">
                    <input type="text" class="form-control" id="blog_title" name="blog_title"
                      maxlength="75" placeholder="한글 기준 25자이내" value="${profile.blog_title}">
                </div>
            </div>
            <hr>

            <div class="form-group" id="divPassword">
                <label for="inputPassword" class="col-lg-2 control-label">소개 글</label>
                <div class="col-lg-10">
                    <textarea class="form-control" id="intro" name="intro" maxlength="300" rows="10"
                    placeholder="한글 기준 100자이내">${profile.intro}</textarea>
                </div>
            </div>
        
            <hr>
                        <br>
            <div class="form-group" id="divPassword">
                <label for="inputPassword" class="col-lg-2 control-label">프로필 사진</label>
                <div class="col-lg-10">
                    <input type="file"  id="blog_img" name="blog_img_file">
                </div>
            </div>
			<hr>
			 <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10">
                    <button type="submit" class="btn btn-default">저장</button>
                    <button type="button" class="btn btn-default">취소</button>
                </div>
            </div> 
		</form>
	</div>
</div>
</body>
</html>