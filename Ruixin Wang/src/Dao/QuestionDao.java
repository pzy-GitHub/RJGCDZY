package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;
import Bean.QuestionBean;

public class QuestionDao {
	private String URL="jdbc:mysql://localhost:3306/questionnaire?serverTimezone=GMT&characterEncoding=utf8";
	private String USER = "root";
    //DB PASSWORD
    private String PASSWORD = "981026";
    private Connection conn;
    private Statement stmt;
	public QuestionDao() {
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
	
	//��ѯ
	public List<QuestionBean> query(int ID,int questionQueryType) throws SQLException {
		  String sql="";
		  if(questionQueryType==1) {
			  //����userID��ѯ
			  sql="select * from question where userID="+ID;
		  }else if(questionQueryType==2){
			  //����questionnaireID��ѯ
			  sql="select * from question where questionnaireID="+ID;
		  }
		  
		  ResultSet rs = stmt.executeQuery(sql);
		  List<QuestionBean> categories = new ArrayList<>();
		  while(rs.next()) {
			  QuestionBean l = new QuestionBean(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getInt(5), rs.getString(6), rs.getString(7),rs.getString(8),rs.getInt(9));
			  categories.add(l);
		  }
		  return categories;
	}
	
	//����
	public void add(int userID,String title,String content,int status,String publishTime,String tag1,String tag2,int cnt) throws SQLException {
	    String sql  = "insert into question(userID,title,content,status,publishTime,tag1,tag2,cnt) values("+userID+",'"+title+"','"+content+"',"+status+",'"+publishTime+"','"+tag1+"','"+tag2+"',"+cnt+")";
	    stmt.execute(sql);
	}
	
	//����cnt
	public void cntUpdate(int questionnaireID,int cnt) throws SQLException{
		String sql="update question set cnt="+cnt+" where questionnaireID="+questionnaireID;
		stmt.execute(sql);
	}
	
	//����status
	public void statusUpdate(int questionnaireID,int status) throws SQLException{
		String sql="update question set status="+status+" where questionnaireID="+questionnaireID;
		stmt.execute(sql);
	}

}
