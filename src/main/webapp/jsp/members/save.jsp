<%@ page import="hello.servlet.domain.member.Member" %>
<%@ page import="hello.servlet.domain.member.MemberRepository" %><%--
  Created by IntelliJ IDEA.
  User: guneegunee
  Date: 2023/03/23
  Time: 8:10 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberRepository memberRepository = MemberRepository.getInstance();
    String username = request.getParameter("username");
    int age =Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);

    memberRepository.save(member);

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
성공
    <ul>
        <il>id=<%=member.getId()%></il>
        <il>name=<%=member.getUsername()%></il>
        <il>age=<%=member.getAge()%></il>
    </ul>
</body>
</html>
