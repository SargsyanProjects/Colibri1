<%@ page import="ru.educonnect.Moderator" %>
<%@ page import="ru.educonnect.ModeratorDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="ru.educonnect.teacher.TeacherDAO" %>
<%@ page import="ru.educonnect.Student" %>
<%@ page import="ru.educonnect.StudentDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moderator</title>
</head>
<body>
<%
    ModeratorDAO moderatorDAO = new ModeratorDAO();
    TeacherDAO teacherDAO =  new TeacherDAO();
    StudentDAO studentDAO = new StudentDAO();
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    try {
        moderatorDAO.checkModerators(username, password);
        studentDAO.checkStudents(username, password);
        teacherDAO.chekTeachers(username, password);
    } catch (SQLException e) {
        throw new RuntimeException(e);
    } catch (ClassNotFoundException e) {
        throw new RuntimeException(e);
    }
    if(!moderatorDAO.getModerators().isEmpty()) {
        response.sendRedirect("moderator-main-page.html");
    }
    else if(!studentDAO.getCheckedStudents().isEmpty()) {
        response.sendRedirect("teacher-main-page.html");
    }
    else if(!teacherDAO.getCheckedTeachers().isEmpty()){
        response.sendRedirect("student-main-page.html");
    }
    else{
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>
