<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.thc.project2_2_wsd.dao.BoardDAO" %>
<%@ page import="com.thc.project2_2_wsd.bean.BoardVO" %>

<jsp:useBean id="u" class="com.thc.project2_2_wsd.bean.BoardVO"/>
<jsp:setProperty name="u" property="seq" param="id"/>

<%
    BoardDAO boardDAO = new BoardDAO();
    BoardVO boardVO = new BoardVO();
    boardVO = boardDAO.getBoard(u.getSeq());

%>
<html>
<head>
    <title>글 상세보기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<div class="container mt-5" style="max-width: 800px;">

    <div class="card">
        <div class="card-header">
            <h3><%= boardVO.getTitle() %></h3>
            <div class="text-muted small">
                작성자: <%= boardVO.getWriter() %>
            </div>
        </div>
        <div class="card-body">
            <p style="white-space: pre-wrap;"><%= boardVO.getContent() %></p>
        </div>
    </div>

    <div class="mt-4 d-flex justify-content-between">
        <a href="list.jsp" class="btn btn-secondary">목록</a>
        <div>
            <a href="edit.jsp?id=<%= boardVO.getSeq() %>" class="btn btn-outline-primary">수정</a>
            <a href="delete_ok.jsp?id=<%= boardVO.getSeq() %>" class="btn btn-outline-danger">삭제</a>
        </div>
    </div>
</div>

</body>
</html>