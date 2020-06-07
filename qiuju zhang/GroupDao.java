package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;
import Bean.GroupBean;

public class GroupDao {
	private String URL="jdbc:mysql://localhost:3306/questionnairesystem?serverTimezone=GMT&characterEncoding=utf8";
	private String USER = "root";
    //DB PASSWORD
    private String PASSWORD = "123456";  //记得改密码！！！
    private Connection conn;
    private Statement stmt;
	public GroupDao() {
		try {
			  
	          //1.加载驱动程序
	    	  Class.forName("org.gjt.mm.mysql.Driver");
		      //2. 获得数据库连接
		      conn = DriverManager.getConnection(URL, USER, PASSWORD);
		      //3.操作数据库，实现增删改查
		      stmt = conn.createStatement();
		     
		      
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	//插入
	public void add(int questionnaireID,int userID, String title, String gender, String age, String education,String job, String area) throws SQLException {
	 
	    String sql = "insert into group_tags(questionnaireID,userID,title,gender,age,education,job,area) values ("+questionnaireID+","+userID+",'"+title+"','"+gender+"','"+age+"','"+education+"','"+job+"','"+area+"')";
		stmt.execute(sql);
	    
	}
}
