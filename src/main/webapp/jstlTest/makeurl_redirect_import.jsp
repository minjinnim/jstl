<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%-- http://localhost:8080/findOne?idx=1&page=3으로 만들어주기 
<c:url var="mkurl" value="http://localhost:8080/findOne">
<c:param name="idx" value="1"/>
<c:param name="page" value="3"/>
</c:url>
${mkurl} <br> 

자동으로 idx=1 과 page=3 사이에 '&'가 생기면서 url주소가 만들어짐
--%>

<%-- 자동으로 http://localhost:8080/member/findOne?idx=1이 생성됨 --%>
<c:url var="mkurl" value="http://localhost:8080/member/findOne">
<c:param name="idx" value="1"/>
</c:url>

<%-- mkurl 불러오기
<c:redirect url="${mkurl}"/> 
--%>

<h1>my page</h1>
<textarea readonly cols="100" rows=10"">
<c:import url="${mkurl}"></c:import>
</textarea>