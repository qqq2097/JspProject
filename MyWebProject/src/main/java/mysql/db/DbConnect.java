package mysql.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnect {

   //driver
   static final String MYSQLDRIVER="com.mysql.jdbc.Driver";
   //url
   static final String MYSQL_URL="jdbc:mysql://localhost:3306/sist";
   
   
   //������
   public DbConnect() {

      try {
         Class.forName(MYSQLDRIVER);
      } catch (ClassNotFoundException e) {
         // TODO Auto-generated catch block
         System.out.println("MySql ����̹� ����: "+e.getMessage());
      }
   }
   
   
   
   //��������
   public Connection getConnection()
   {
      Connection conn=null;
      
      try {
         conn=DriverManager.getConnection(MYSQL_URL, "root", "1234");
      } catch (SQLException e) {
         System.out.println("Mysql�������: "+e.getMessage());
         e.printStackTrace();
      }
      
      return conn;
   }
   
   //close �޼��� �� 4��,�����ε� �޼���
   public void dbClose(ResultSet rs,Statement stmt,Connection conn)
   {
      
         try {
            if(rs!=null) rs.close();
            if(stmt!=null) stmt.close();
            if(conn!=null) conn.close();
            
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      
   }
   
   public void dbClose(ResultSet rs,PreparedStatement pstmt,Connection conn)
   {
      
         try {
            if(rs!=null) rs.close();
            if(pstmt!=null) pstmt.close();
            if(conn!=null) conn.close();
            
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      
   }
   
   public void dbClose(Statement stmt,Connection conn)
   {
      
         try {
            
            if(stmt!=null) stmt.close();
            if(conn!=null) conn.close();
            
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      
   }
   
   public void dbClose(PreparedStatement pstmt,Connection conn)
   {
      
         try {
            
            if(pstmt!=null) pstmt.close();
            if(conn!=null) conn.close();
            
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      
   }
   
}