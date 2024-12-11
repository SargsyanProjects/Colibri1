<%@ page import="ru.educonnect.Moderator" %>
<%@ page import="ru.educonnect.ModeratorDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moderator</title>
</head>
<body>
<%
    ModeratorDAO moderatorDAO = new ModeratorDAO();
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    try {
        moderatorDAO.checkModerators(username, password);
    } catch (SQLException e) {
        throw new RuntimeException(e);
    } catch (ClassNotFoundException e) {
        throw new RuntimeException(e);
    }
    if(!moderatorDAO.getModerators().isEmpty()) {
        response.sendRedirect("moderator-main-page.html");
    }
    else{
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>
