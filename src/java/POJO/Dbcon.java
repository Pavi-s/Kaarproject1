/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package POJO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Jai
 */
public class Dbcon {
    private static String dburl="jdbc:derby://localhost:1527/kaardb;create=true;user=pavi;password=pavi";
    private static Connection con=null;
    private static Statement stmt=null;
    public void createConnection()
    {
        try
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
            con=DriverManager.getConnection(dburl);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    public int insertdb(Object o)
    {
        System.out.println("Inside insert method");
        int status=0;
        try
        {
            System.out.println("Inside try");
            stmt=con.createStatement();
            
        if(o instanceof User)
        {
            System.out.println("user if loop");
            User u= (User)o;
            status=stmt.executeUpdate("insert into Customer values ('"+u.getName()+"','"+u.getGender()+"','"+u.getMobile()+"','"+u.getQual()+"','"+u.getEmail()+"','"+u.getUid()+"','"+u.getPwd()+"')");
            return status;
           // stmt.close();
        }
        else
        {
            System.out.println("project if loop");
            Project p=(Project)o;
            status=stmt.executeUpdate("insert into PAVI.Project values ('"+p.getPname()+"','"+p.getDesc()+"','"+p.getFrom()+"','"+p.getTo()+"','"+p.getClient()+"','"+p.getRole()+"','"+p.getTech()+"')");
            return status;
            //stmt.close();            
        }
        
        }
        catch(SQLException e)
        {
            System.out.println("insert method");
            e.printStackTrace();
            
        }
        return status;
        }
    public ResultSet selectdb(String search,String tablename,String where)
    {
        System.out.println("select entry");
        ResultSet rs=null;
        try
        {
        stmt=con.createStatement();
        if(where.contains("null"))
        {
            System.out.println("Inside if loop");
            rs=stmt.executeQuery("select "+search+" from "+tablename);
            //stmt.close();
            return rs;
        }
        else
        {
            rs=stmt.executeQuery("select "+search+" from "+tablename+" where "+where);
            //stmt.close();
            //System.out.println(rs.toString());
            return rs;
            
        }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("in select method");
        }
        System.out.println(rs.toString());
        return rs;
    }
    public int updatedb(Project p1)
    {
        int status=0;
        try
        {
            stmt=con.createStatement();
            String where=" where pname='"+p1.getPname()+"'";
            status=stmt.executeUpdate("update Project set pname='"+p1.getPname()+"',description='"+p1.getDesc()+"',datefrom='"+p1.getFrom()+"',dateto='"+p1.getTo()+"',company='"+p1.getClient()+"',role='"+p1.getRole()+"',technologies='"+p1.getTech()+"'"+where);
            return status;
            
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return status;
    }
    public int deletedb(String n)
    {  System.out.println("inside dele method");
        int status=0;
        try
        {
            System.out.println("inside dele try method");
            stmt=con.createStatement();
            status= stmt.executeUpdate("delete from Project where pname='"+n+"'");
            return status;
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return status;
    }
    }
    
    

