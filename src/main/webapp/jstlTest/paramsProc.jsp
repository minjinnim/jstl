<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%-- ${paramValues.lang[0]}<br>
${paramValues.lang[1]}<br>
${paramValues.lang[2]}<br>
${paramValues.lang[3]}<br>
${paramValues.lang[4]}<br>
${paramValues.lang[5]}<br> --%>

<%-- 완전 잘못푼거
<c:forEach var="i" items="${paramValues.lang}">
<c:if test="${not empty paramValues.lang[i]}">
${paramValues.lang[i]}<br>
</c:if>
</c:forEach> 
--%>

<%-- 
<c:forEach var="lang" items="${paramValues.lang}">
${lang}
</c:forEach>
 --%>
 
<%-- 길이
${fn:length(paramValues.lang)}<br> 
--%>

<%-- 
<c:forEach var="i" begin="0" end="${fn:length(paramValues.lang)-1}">
${paramValues.lang[i]}<br>
</c:forEach>
--%>

<%-- forEach문에 begin과 end, step에는 변수를 넣을수없고 숫자만 올수있음(정수형 변수도 불가능) 
<c:set var="len" value="5"/>
<c:forEach var="i" begin="0" end="len">
${paramValues.lang[i]}<br>
</c:forEach> 
--%>

