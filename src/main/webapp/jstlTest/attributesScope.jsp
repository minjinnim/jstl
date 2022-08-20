<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- pageScope(param,paramValues), requestScope, sessionScope, applicationScope--%>

<c:set var="num" value="100"/>

<%
request.setAttribute("num","200");

//session.setAttribute("num","300");
//request.getSession().setAttribute("num","300");

//application.setAttribute("num", "400");
//request.getServletContext().setAttribute("num","400");
%>

<%-- 만약 같은 이름의 attribute가 있을 경우 
setAttribute의 우선순위: page-request-session-application --%>

page:${num}<br>

<%--
page:${pageScope.num}<br> 
request:${requestScope.num}<br>
session:${sessionScope.num}<br>
application:${applicationScope.num}<br> --%>

<%-- page는 현재페이지 설정값
request는 전달된 페이지의 설정값
session은 전역이지만 session이 되었을때 값이 유효
application은 전역에서 사용 가능한 값을 저장할수있음 --%>