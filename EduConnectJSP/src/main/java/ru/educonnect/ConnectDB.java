package ru.educonnect;
import java.sql.*;

public class ConnectDB {
    public static Connection connect() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn= null;
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/educonnect", "root", "admin");
        System.out.println("ConnectDB");
        return conn;
    }
}