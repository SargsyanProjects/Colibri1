package ru.educonnect;

import com.sun.org.apache.xpath.internal.operations.Mod;
import jdk.internal.icu.text.NormalizerBase;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ModeratorDAO {

    List<Moderator> moderators = new ArrayList<>();

    public List<Moderator> getModerators() {
        return moderators;
    }

    public void setModerators(List<Moderator> moderators) {
        this.moderators = moderators;
    }

    public void checkModerators(String username, String password) throws SQLException, ClassNotFoundException {
        Statement statement = ConnectDB.connect().createStatement();
        ResultSet resultSet = statement.executeQuery("select * from moderators where username= '" + username + "' and password = '" + password + "'");
        while(resultSet.next()) {
            moderators.add(new Moderator(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3)));
        }


    }

}
