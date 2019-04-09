package jspClasses;
import java.sql.*;
public class Task {

    private Statement st;

    public Task() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/course?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1324");
            this.st = con.createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public double [] solution(double [][] array){

        double [][] modifyMatrix = new double[4][4];
        final int N = 4;
        double [] divider = new double[4];
        double [] weight = new double[4];

        for(int i = 0; i < N; i++){
            for(int j = 0; j < N; j++){
                divider[i] += array[i][j];
            }
        }

        for(int i = 0; i < N; i++){
            for(int j = 0; j < N; j++){
                modifyMatrix [i][j] =(array[i][j] / divider[i]);   //Составляем матрицу нормированных оценок

            }
        }

        for(int i = 0; i < N; i++){
            for(int j = 0; j < N; j++) {
                weight[i] += modifyMatrix[j][i] / N;
            }
        }
        return weight;
    }

}
