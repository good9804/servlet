<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="java.util.List" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %><%--
  Created by IntelliJ IDEA.
  User: guneegunee
  Date: 2023/03/23
  Time: 8:13 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    MemberRepository memberRepository = MemberRepository.getInstance();

    List<Member> all = memberRepository.findAll();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/index.html">메인</a>
<table>
    <thead>
    <th>id</th>
    <th>username</th>
    <th>age</th>
    </thead>
    <tbody> <%
for (Member member : all) {
    out.write("    <tr>");
    out.write("<td>" + member.getId() + "</td>");
    out.write("<td>" + member.getUsername() + "</td>");
    out.write("<td>" + member.getAge() + "</td>");
    out.write("    </tr>");

} %>
    </tbody>
</table>
</body>
</html>
