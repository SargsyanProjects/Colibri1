package ru.educonnect.teacher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/TeacherLoginServlet")
public class TeacherLoginServlet extends HttpServlet {

    private TeacherDAO teacherDAO = new TeacherDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Վերցնենք մուտքի դաշտերից ստացված արժեքները
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Օգտագործենք DAO մուտքը ստուգելու համար
        Teacher teacher = teacherDAO.login(username, password);

        if (teacher != null) {
            // Եթե տվյալները ճիշտ են՝ ստեղծում ենք session և ուղղորդում dashboard
            HttpSession session = request.getSession();
            session.setAttribute("teacher", teacher);
            response.sendRedirect("dashboard.jsp");
        } else {
            // Եթե մուտքի տվյալները սխալ են, վերադարձնենք սխալի հաղորդագրությամբ
            request.setAttribute("errorMessage", "Invalid username or password.");
            request.getRequestDispatcher("teacher-login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("teacher-login.jsp");
    }
}