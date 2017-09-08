<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

상세보기
<hr>
글 번호 ${letter.letterNo} <br/>
카테고리 ${letter.categoryNo} <br/>
제목 ${letter.letterTitle} <br/>
내용 ${letter.letterSub} <br/>

<a href="letterUpdate.do?letterNo=${letter.letterNo}">수정</a>

<form name="frm" action="deleteLetter.do">
	<input type="hidden" name="letterNo" value="${letter.letterNo}"/>
	<input type="submit" value="삭제">
</form>

</body>
</html>