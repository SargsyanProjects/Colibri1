package ru.educonnect;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

    private List<Student> studentList = new ArrayList<>();
    private List<Student> checkedStudents = new ArrayList<>();

    public StudentDAO() {
    }

    public StudentDAO(List<Student> studentList) {
        this.studentList = studentList;
    }

    public List<Student> getStudentList() {
        return studentList;
    }

    public void setStudentList(List<Student> studentList) {
        this.studentList = studentList;
    }

    public void checkStudents(String username, String password) throws SQLException, ClassNotFoundException {
        Statement statement = ConnectDB.connect().createStatement();
        ResultSet resultSet = statement.executeQuery("select * from moderator where username= '" + username + "' and password = '" + password + "'");
        while (resultSet.next()) {
            checkedStudents.add(new Student(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getNString(6)));
        }
    }

    public List<Student> getCheckedStudents() {
        return checkedStudents;
    }

    public void setCheckedStudents(List<Student> checkedStudents) {
        this.checkedStudents = checkedStudents;
    }
}
