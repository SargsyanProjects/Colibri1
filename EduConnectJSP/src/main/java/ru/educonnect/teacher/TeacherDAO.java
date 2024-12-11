package ru.educonnect.teacher;

import ru.educonnect.ConnectDB;
import ru.educonnect.Moderator;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TeacherDAO {

    List<Teacher> checkedTeachers = new ArrayList<>();

    public void chekTeachers(String username, String password) throws SQLException, ClassNotFoundException {
        checkedTeachers.clear();
        Statement statement = ConnectDB.connect().createStatement();
        ResultSet resultSet = statement.executeQuery("select * from teacher where username= '" + username + "' and password = '" + password + "'");
        while(resultSet.next()) {
            checkedTeachers.add(new Teacher(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getNString(6)));
        }
    }

    public TeacherDAO() {
    }

    public TeacherDAO(List<Teacher> checkedTeachers) {
        this.checkedTeachers = checkedTeachers;
    }

    public List<Teacher> getCheckedTeachers() {
        return checkedTeachers;
    }

    public void setCheckedTeachers(List<Teacher> checkedTeachers) {
        this.checkedTeachers = checkedTeachers;
    }
}