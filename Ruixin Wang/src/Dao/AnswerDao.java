package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;
import Bean.AnswerBean;

public class AnswerDao {
	private String URL="jdbc:mysql://localhost:3306/questionnaire?serverTimezone=GMT&characterEncoding=utf8";
	private String USER = "root";
    //DB PASSWORD
    private String PASSWORD = "981026";
    private Connection conn;
    private Statement stmt;
	public AnswerDao() {
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
	
	public List<AnswerBean> query(int ID,int answerQueryType) throws SQLException {
		  String sql="";
		  if(answerQueryType==1) {
			  //����userID��ѯ
			  sql="select * from answer where userID="+ID;
		  }else if(answerQueryType==2){
			  //����questionnaireID��ѯ
			  sql="select * from answer where questionnaireID="+ID;
		  }
		  ResultSet rs = stmt.executeQuery(sql);
		  List<AnswerBean> categories = new ArrayList<>();
		  while(rs.next()) {
			  AnswerBean l = new AnswerBean(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getInt(4),rs.getInt(5),rs.getString(6),rs.getInt(7),rs.getInt(8));
			  categories.add(l);
		  }
		  return categories;
	}
	
	public int cntQuery(int questionnaireID) throws SQLException {
		  String sql="select count(*) from answer where questionnaireID="+questionnaireID;
		  ResultSet rs = stmt.executeQuery(sql);
		  int cnt=0;
		  while(rs.next()) {
			  cnt=rs.getInt(1);
		  }
		  return cnt;
	}
	
	public void add(int questionnaireID,String submitTime,int timeForWriting,int feedback,String content,int status,int userID) throws SQLException {
	    String sql  = "insert into answer(questionnaireID,submitTime,timeForWriting,feedback,content,status,userID) values("+questionnaireID+",'"+submitTime+"',"+timeForWriting+","+feedback+",'"+content+"',"+status+","+userID+")";
	    stmt.execute(sql);
	}

}
