<%@ page import="ru.educonnect.ModeratorDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Вход модератора</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            width: 300px;
            text-align: center;
        }
        .form-container h1 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }
        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .form-container button {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Вход модератора</h1>
    <form action="index.jsp" method="post">
        <input type="text" name="username" placeholder="Имя пользователя" required>
        <input type="password" name="password" placeholder="Пароль" required>
        <button type="submit">Войти</button>
    </form>
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
</div>
</body>
</html>