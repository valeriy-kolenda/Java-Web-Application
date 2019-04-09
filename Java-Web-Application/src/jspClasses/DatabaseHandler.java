package jspClasses;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DatabaseHandler {

    private static DatabaseHandler handler;
    private Statement st;

    private DatabaseHandler() {
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/course?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1324");
        this.st = con.createStatement();
        }catch(Exception e){
            System.out.println(e);
        }
    }

    public static DatabaseHandler getInstance() {
        if (DatabaseHandler.handler == null) {
            DatabaseHandler.handler = new DatabaseHandler();
        }
        return DatabaseHandler.handler;
    }

    public boolean signUp(String userName, String pass, String passConfirm) throws SQLException {


           if ( userName != null && pass != null && pass.equals(passConfirm) ) {
                 UserInfo user = new UserInfo();
                 boolean bool = user.entering(userName, pass);
                 if (bool) {
                     st.executeUpdate("insert into users( login, password)values('" + userName + "' , '" + pass + "')");
                     return true;
                 }
                 else
                     return false;
            }
            else
                return false;

    }

    public List<Note> getNotes() throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM weight");
        List<Note> notesList = new ArrayList<Note>();
        while (rs.next()) {
            Note record = new Note(
                    rs.getInt("idweight"),
                    rs.getDouble("first"),
                    rs.getDouble("second"),
                    rs.getDouble("third"),
                    rs.getDouble("fourth")
            );
            notesList.add(record);
        }
       return notesList;
    }
}