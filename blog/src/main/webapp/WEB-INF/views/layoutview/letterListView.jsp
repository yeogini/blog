<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
       <%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
<c:if test="${datas[0].categoryName==null || datas[0].categoryName==''}">
<p>'전체보기' 의 카테고리</p>
</c:if>
<c:if test="${datas[0].categoryName!=null}">
<p>'${datas[0].categoryName}' 의 카테고리</p>
</c:if>
<hr> 
<c:forEach items="${datas}" var="list">
${list.letterTitle}<br>
</c:forEach>
<div id="paging" class="row" align="center"><mytag:letterpaging paging="${paging}"></mytag:letterpaging></div>
</body>
</html>