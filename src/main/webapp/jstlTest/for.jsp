<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="i" begin="1" end="5">
${i} 
</c:forEach>
<br>

<c:forEach var="j" begin="1" end="10" step="2">
${j}
</c:forEach>
<br>

<%
String[] items={"app","bna","oran","man"};
request.setAttribute("list",items );
%>
<c:forEach var="fru" items="${list}">
${fru}
</c:forEach>