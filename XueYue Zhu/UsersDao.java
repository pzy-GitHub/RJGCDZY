package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;

import Bean.UserBean;



public class UsersDao {
	private String URL="jdbc:mysql://localhost:3306/questionnaire?serverTimezone=GMT&characterEncoding=utf8";
	private String USER = "root";
    //DB PASSWORD
    private String PASSWORD = "1234";
    private Connection conn;
    private Statement stmt;
    public UsersDao() {
		try {
			  
	          //1.������������
	    	  Class.forName("org.gjt.mm.mysql.Driver");
		      //2. ������ݿ�����
		      conn = DriverManager.getConnection(URL, USER, PASSWORD);
		      //3.�������ݿ⣬ʵ����ɾ�Ĳ�
		      stmt = conn.createStatement();
		     
		      
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    
    public List<UserBean> query(int userID) throws SQLException {
		  String sql="select * from user.user where userID="+userID;

		  ResultSet rs = stmt.executeQuery(sql);
		  List<UserBean> categories = new ArrayList<>();
		  while(rs.next()) {
			  UserBean l = new UserBean(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getInt(9));
			  categories.add(l);
		  }
		  return categories;
	}
	

}
