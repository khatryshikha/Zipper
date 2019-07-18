/**
 * Created by user on 4/18/2017.
 */

package java4;
import java.sql.*;

public class Residential extends Building{
	public void insertBuilding(String zCode, String type, int floor)
    {
        try{
        	System.out.println("Ghus gaye");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Zippr","root","root");

            String query = " insert into building (ZCode, Type, Floors)"
                    + " values (?, ?, ?)";

            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.setString (1, zCode);
            preparedStmt.setString (2, type);
            preparedStmt.setInt    (3, floor);

            preparedStmt.execute();

            query = "insert into password (ZCode, Password)" + "values (?,?)";
            preparedStmt = con.prepareStatement(query);
            preparedStmt.setString (1, zCode);
            preparedStmt.setString (2, zCode);

            preparedStmt.execute();
            con.close();
        }catch(Exception e){ System.out.println(e);}
    }
}
