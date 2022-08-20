<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${1>0}">
참이다.<br>
</c:if>

<c:if test="${1>0}" var="result">
${result}<br>
</c:if>

<c:if test="${1<0}" var="result">
</c:if>
${result}<br>


<c:set var="input1" value="30"/>
<c:if test="${input1>20}">
입력값이 더 크다.<br>
</c:if>

<% //객체가 생성되지않은 경우
//" " 비어있는 경우 모두 empty를 사용
//비어있지 않은 경우 not empty를 사용
String name=null;
String title="";
String hp="01011111111";
request.setAttribute("name", name);
request.setAttribute("title", title);
request.setAttribute("hp", hp);
%>
<c:if test="${empty name}">
이름 객체가 생성되지않았습니다.<br>
</c:if>

<c:if test="${empty title}">
타이틀 객체가 생성되지않았습니다.<br>
</c:if>

<c:if test="${not empty hp}">
전화번호 객체가 생성됨.<br>
</c:if>

