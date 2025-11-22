<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.thc.project2_2_wsd.dao.BoardDAO" %>
<%@ page import="com.thc.project2_2_wsd.bean.BoardVO" %>

<jsp:useBean id="u" class="com.thc.project2_2_wsd.bean.BoardVO"/>
<jsp:setProperty name="u" property="seq" param="id"/>

<% request.setCharacterEncoding("UTF-8"); %>
<%
    BoardDAO boardDAO = new BoardDAO();
    BoardVO boardVO = new BoardVO();
    int i = boardDAO.updateBoard(u);
    String message = "edit: success";
    if(i!=1) message = "edit: fail";
%>
<script>
    alert('<%=message%>');
    location.href='view.jsp';
</script>
