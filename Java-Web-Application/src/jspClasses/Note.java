package jspClasses;

import java.sql.*;

public class Note {

    double firstWeight;
    double secondWeight;
    double thirdWeight;
    double fourthWeight;
    private Statement st;
    int id;

    public void setId(int id) {
        this.id = id;
    }

    public void setFirstWeight(double firstWeight) {
        this.firstWeight = firstWeight;
    }

    public void setSecondWeight(double secondWeight) {
        this.secondWeight = secondWeight;
    }

    public void setThirdWeight(double thirdWeight) {
        this.thirdWeight = thirdWeight;
    }

    public void setFourthWeight(double fourthWeight) {
        this.fourthWeight = fourthWeight;
    }

    public int getId() {
        return id;
    }

    public double getFirstWeight() {
        return firstWeight;
    }

    public double getSecondWeight() {
        return secondWeight;
    }

    public double getThirdWeight() {
        return thirdWeight;
    }

    public double getFourthWeight() {
        return fourthWeight;
    }




    public Note() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/course?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1324");
            this.st = con.createStatement();
        }catch(Exception e){
            System.out.println(e);
        }
    }

    public Note(int id, double firstWeight, double secondWeight, double thirdWeight, double fourthWeight) {
        this.id = id;
        this.firstWeight = firstWeight;
        this.secondWeight = secondWeight;
        this.thirdWeight = thirdWeight;
        this.fourthWeight = fourthWeight;
    }

    public void addNote(double first, double second, double third, double fourth) throws SQLException {
        st.executeUpdate("insert into weight( first,second,third,fourth)values('" + first + "' , '" + second + "','" + third + "' , '" + fourth + "')");
    }

}
