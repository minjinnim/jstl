<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="num" value="2"/>

<c:choose>

<c:when test="${num==1}">
num 값은 1이다.<br>
</c:when>

<c:when test="${num==2}">
num 값은 2이다.
</c:when>

<c:otherwise>
값을 찾을 수 없음.
</c:otherwise>

</c:choose>



<c:set var="id" value="robot"/>

<c:choose>
<c:when test="${id=='admin'}">
<script>alert('관리자 페이지로 이동')</script><br>
</c:when>

<c:otherwise>
<script>alert('${id} 로그인')</script><br>
</c:otherwise>
</c:choose>




