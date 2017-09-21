<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="paging" type="com.yedam.util.Paging" %>
<%@ attribute name="id" type="String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<input type="hidden" value="${paging.page}">
<c:if test="${paging.page!=1}">
<a href="getLetterView.do?page=${paging.page-1}&blogId=${id}">이전</a>
</c:if>
<c:forEach begin="${paging.startPage}" end="${paging.endPage }" var="i"> 
	<c:if test="${i != paging.page }">
		<a href="getLetterView.do?page=${i}&blogId=${id}">${i}</a>
	</c:if>
	<c:if test="${i == paging.page }">
		${i}
	</c:if>
</c:forEach>
<c:if test="${paging.page!=paging.lastPage}">
<a href="getLetterView.do?page=${paging.page+1}&blogId=${id}">다음</a>
</c:if>
