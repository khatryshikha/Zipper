/**
 * Created by user on 4/1/2017.
 */

package java4;

import java.sql.*;
class databaseOperation{
    public static void main(String args[]){
        /*try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Zippr","root","root");

            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from building where type='C'");
            while(rs.next())
                System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"  "+rs.getInt(4));
            con.close();
        }catch(Exception e){ System.out.println(e);}*/
    }
    public static int insertCustom(String zCode, String custom)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Zippr","root","root");

            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from custom");
            while(rs.next())
            {
                if(rs.getString(2).equals(custom))
                {
                	return 1;
                }
                else if(rs.getString(1).equals(zCode))
                {
                    String query = "update custom set custom = ? where zcode = ?";
                    PreparedStatement preparedStmt = con.prepareStatement(query);
                    preparedStmt.setString (1, custom);
                    preparedStmt.setString (2, zCode);
                    preparedStmt.execute();
                    con.close();
                    return 2;
                }
            }

            String query = " insert into Custom (ZCode, Custom)"
                    + " values (?, ?)";

            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.setString (1, zCode);
            preparedStmt.setString (2, custom);

            preparedStmt.execute();

            con.close();
        }catch(Exception e){ System.out.println(e);}
        return 0;
    }
    public static int searchZCode(String zCode)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Zippr","root","root");

            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select zcode from building");
            while(rs.next()) {
                if (rs.getString(1).equals(zCode)) {
                    con.close();
                    return 1;
                }
            }
            con.close();
        }catch(Exception e){ System.out.println(e);}
        return 0;
    }
    public static int searchCustom(String custom)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Zippr","root","root");

            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select custom from custom");
            while(rs.next()) {
                if (rs.getString(1).equals(custom)) {
                    con.close();
                    return 1;
                }
            }
            con.close();
        }catch(Exception e){ System.out.println(e);}
        return 0;
    }
    public static String returnPassword(String zCode)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Zippr","root","root");

            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from password");
            while(rs.next()) {
                if (rs.getString(1).equals(zCode)) {
                    String password=rs.getString(2);
                    con.close();
                    return password;
                }
            }
            con.close();
        }catch(Exception e){ System.out.println(e);}
        return null;
    }
    public static String returnZCode(String custom)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Zippr","root","root");

            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from custom");
            while(rs.next()) {
                if (rs.getString(2).equals(custom)) {
                    String zCode=rs.getString(1);
                    con.close();
                    return zCode;
                }
            }
            con.close();
        }catch(Exception e){ System.out.println(e);}
        return null;
    }
    public static String returnType(String zCode)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Zippr","root","root");

            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from building");
            while(rs.next()) {
                if (rs.getString(1).equals(zCode)) {
                    String type=rs.getString(2);
                    con.close();
                    return type;
                }
            }
            con.close();
        }catch(Exception e){ System.out.println(e);}
        return null;
    }
    public static int returnFloors(String zCode)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/Zippr","root","root");

            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from building");
            while(rs.next()) {
                if (rs.getString(1).equals(zCode)) {
                    int floors=rs.getInt(3);
                    con.close();
                    return floors;
                }
            }
            con.close();
        }catch(Exception e){ System.out.println(e);}
        return 0;
    }
}