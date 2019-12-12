<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String kind = request.getParameter("kind");
String first = request.getParameter("first");
String[] how = request.getParameterValues("how");
String subject = request.getParameter("subject");
String message = request.getParameter("message");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>問合せ内容</title>
</head>
<body>
<h2>問合せ内容</h2>
<p>問合せ種類<%=kind %></p>
<p>初めて？<%=first %></p>
<%
if( how==null ){
%>
<p>なぜ知った？:答えなし</p>
<% } else { %>
  <% for(String howin:how){ %>
    <p>なぜ知った？:<%=howin %></p>
    <%} %>
<%} %>
<p>件名<%=subject %></p>
<p>内容<%=message %></p>
</body>
</html>