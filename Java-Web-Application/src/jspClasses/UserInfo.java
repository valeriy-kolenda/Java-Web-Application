package jspClasses;
import java.sql.*;

public class UserInfo {
    private int id;
    private String login;
    private String password;
    private Statement st;

    public UserInfo() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/course?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1324");
            this.st = con.createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public boolean compare(String login, String password) throws SQLException {
        if ( login != null && password != null) {
            ResultSet rs = st.executeQuery("SELECT * FROM users");
            while (rs.next()) {
                UserInfo man = new UserInfo();
                man.setId(rs.getInt("idusers"));
                man.setLogin(rs.getString("login"));
                man.setPassword(rs.getString("password"));

                if (man.login.equals(login)) {
                    if (man.password.equals(password))
                        return true;
                }

            }
        }
        return false;
    }


    public boolean entering(String login, String password) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM users");
        while (rs.next()) {
            UserInfo man = new UserInfo();
            man.setId(rs.getInt("idusers"));
            man.setLogin(rs.getString("login"));
            man.setPassword(rs.getString("password"));

            if (man.login.equals(login))
                return false;
        }
        return true;
    }
}
