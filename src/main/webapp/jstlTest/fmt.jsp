<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:parseDate var="data" value="2000-01-01" pattern="yyyy-mm-dd"/>
<fmt:formatDate value="${data}" pattern="mm/dd/yy"/><br>
<fmt:formatNumber value="12345678.987"/><br>
<fmt:formatNumber value="0.5" type="percent"/><br>
<fmt:formatNumber value="1000" type="currency"/><br>
<fmt:formatNumber value="12345678.987" pattern=".000"/><br>
<fmt:formatNumber value="12345678.987" pattern=".00"/><br>
<fmt:formatNumber value="12345678.98765" pattern=".00#"/><br>

<%-- 참고사항: #채워야할 자리에 비해서 데이터가 모자란 경우 공백으로표시
0:빈자리만큼 0으로 채운다 --%>

