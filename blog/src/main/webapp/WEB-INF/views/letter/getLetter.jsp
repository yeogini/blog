<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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