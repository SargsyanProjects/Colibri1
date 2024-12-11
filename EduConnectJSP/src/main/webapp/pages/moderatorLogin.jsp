<%@ page import="ru.educonnect.ModeratorDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Вход модератора</title>
</head>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username != null && password != null) {
        ModeratorDAO moderatorDAO = new ModeratorDAO();
        try {
            moderatorDAO.checkModerators(username, password);
            if (!moderatorDAO.getModerators().isEmpty()) {
                response.sendRedirect("moderator-main-page.html");
            } else {
                out.println("<p class='error'>Введены неправильные данные!</p>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<p class='error'>Ошибка сервера: " + e.getMessage() + "</p>");
        }
    }
%>
</body>
</html>