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

�󼼺���
<hr>
�� ��ȣ ${letter.letterNo} <br/>
ī�װ� ${letter.categoryNo} <br/>
���� ${letter.letterTitle} <br/>
���� ${letter.letterSub} <br/>

<a href="letterUpdate.do?letterNo=${letter.letterNo}">����</a>

<form name="frm" action="deleteLetter.do">
	<input type="hidden" name="letterNo" value="${letter.letterNo}"/>
	<input type="submit" value="����">
</form>

</body>
</html>