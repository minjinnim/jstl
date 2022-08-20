<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("score",new int[]{100,90,80,70});

List<String> list = new LinkedList<>();
list.add("사과");
list.add("배");
list.add("오렌지");
pageContext.setAttribute("list",list);

Map<String, String> map = new HashMap<>();
map.put("naver","http://naver.com");
map.put("daum","http://daum.net");
map.put("google","http://google.com");
pageContext.setAttribute("map",map);
%>

${score[0]}<br>
${list[0]}<br>
${map["daum"]}<br>
${map["naver"]}<br>

<%--간단한 url맵핑할때 사용하면 편함--%>
