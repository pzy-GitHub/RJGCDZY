package Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;

import Bean.AnswerBean;
import Bean.GroupBean;

public class GroupDao {
	private String URL="jdbc:mysql://localhost:3306/questionnaire?serverTimezone=GMT&characterEncoding=utf8";
	private String USER = "root";
    //DB PASSWORD
    private String PASSWORD = "1234";
    private Connection conn;
    private Statement stmt;
	public GroupDao() {
		try {
			  	         
	    	  Class.forName("org.gjt.mm.mysql.Driver");
		      conn = DriverManager.getConnection(URL, USER, PASSWORD);
		      stmt = conn.createStatement();
		     
		      
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//按群组tag查询问卷
	public List<GroupBean> query(int  gender,int age,int education,int job,int area) throws SQLException {
		
		String sql="SELECT * FROM `group`.`group` where gender like "
				+"'%"+gender+"%' or age like "+"'%"+age+"%' or education like "
				+"'%"+education+"%' or job like "+"'%"+job+"%' or area like "+"'%"+area+"%'";	  
		  ResultSet rs = stmt.executeQuery(sql);
		  List<GroupBean> categories = new ArrayList<>();
		  while(rs.next()) {
			  GroupBean l = new GroupBean(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
			  categories.add(l);
		  }
		  return categories;
	}
}
