package ru.educonnect.teacher;

import ru.educonnect.ConnectDB;
import ru.educonnect.student.Student;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TeacherDAO {

    public Teacher login(String username, String password) {
        String query = "SELECT * FROM teachers WHERE username = ? AND password = ?";
        try (Connection connection = ConnectDB.connect()) {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                Teacher teacher = new Teacher();
                teacher.setId(resultSet.getInt("id"));
                teacher.setUsername(resultSet.getString("username"));
                teacher.setPassword(resultSet.getString("password"));
                teacher.setName(resultSet.getString("Name"));
                teacher.setSurname(resultSet.getString("Surname"));
                teacher.setGroupNumber(resultSet.getString("groupNumber"));
                return teacher;
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Student> getAllStudents() {
        List<Student> students = new ArrayList<>();
        String query = "SELECT id, username, name, surname, group_number, english, pe, literature FROM student";
        try (Connection connection = ConnectDB.connect();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            while (resultSet.next()) {
                Student student = new Student();
                student.setId(resultSet.getInt("id"));
                student.setUsername(resultSet.getString("username"));
                student.setName(resultSet.getString("name"));
                student.setSurname(resultSet.getString("surname"));
                student.setGroupNumber(resultSet.getString("group_number"));
                student.setEnglishGrade(resultSet.getObject("english", Integer.class));
                student.setPeGrade(resultSet.getObject("pe", Integer.class));
                student.setLiteratureGrade(resultSet.getObject("literature", Integer.class));
                students.add(student);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return students;
    }

    public boolean updateGrade(int studentId, String subject, Integer grade) {
        String query = "UPDATE student SET " + subject + " = ? WHERE id = ?";
        try (Connection connection = ConnectDB.connect()) {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setObject(1, grade);
            statement.setInt(2, studentId);
            return statement.executeUpdate() > 0;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteGrade(int studentId, String subject) {
        return updateGrade(studentId, subject, null);
    }

    public boolean addGrade(int studentId, String subject, Integer grade) {
        String selectQuery = "SELECT " + subject + " FROM student WHERE id = ?";
        try (Connection connection = ConnectDB.connect()) {
            PreparedStatement selectStatement = connection.prepareStatement(selectQuery);
            selectStatement.setInt(1, studentId);
            ResultSet resultSet = selectStatement.executeQuery();

            if (resultSet.next()) {
                Integer currentGrade = resultSet.getObject(subject, Integer.class);
                if (currentGrade == null) {
                    String insertQuery = "UPDATE student SET " + subject + " = ? WHERE id = ?";
                    PreparedStatement insertStatement = connection.prepareStatement(insertQuery);
                    insertStatement.setInt(1, grade);
                    insertStatement.setInt(2, studentId);
                    return insertStatement.executeUpdate() > 0;
                } else {
                    System.out.println("Grade already exists for subject: " + subject);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }
}