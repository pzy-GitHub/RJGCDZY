package dao;

import entity.Like;
import entity.Questionnaire;
import util.BaseDao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class QuestionnaireDao {
    public Questionnaire findQuestionnaireById(int questionnaireID){
        Connection con=null;
        ResultSet rs=null;
        Statement st=null;

        Questionnaire questionnaire = new Questionnaire();
        try {
            String sql="SELECT * FROM QuestionnaireSystem.question where questionnaireID = "+questionnaireID+";";
            System.out.println(sql);
            con= BaseDao.getConnection();
            st=con.createStatement();
            rs = st.executeQuery(sql);

            if (rs.next()){
            	questionnaire.setquestionnaireID(rs.getInt("questionnaireID"));
            	questionnaire.setTitle(rs.getString("title"));
            	questionnaire.setpublishTime(rs.getString("publishTime"));
            	questionnaire.setTag1(rs.getString("tag1"));
            	questionnaire.setTag2(rs.getString("tag2"));
            }
        }catch(Exception e) {
            e.printStackTrace();
        }finally{
            BaseDao.closeAll(rs, st, con);
        }
        return questionnaire;
    }

    public ArrayList<Questionnaire> findTopNQuestionnaires(ArrayList<Questionnaire> questionnaires){
        //将填写人数最多的问卷补入推荐列表, 直至满五篇(考虑重复)
        Connection con=null;
        ResultSet rs=null;
        Statement st=null;

        try {
            String sql = "SELECT * FROM QuestionnaireSystem.question order by cnt desc;";
            System.out.println(sql);
            con= BaseDao.getConnection();
            st=con.createStatement();
            rs = st.executeQuery(sql);

            while(rs.next() && questionnaires.size() < 5){
   
                Questionnaire questionnaire = new Questionnaire();
                questionnaire.setquestionnaireID(rs.getInt("questionnaireID"));
            	questionnaire.setTitle(rs.getString("title"));
            	questionnaire.setpublishTime(rs.getString("publishTime"));
            	questionnaire.setTag1(rs.getString("tag1"));
            	questionnaire.setTag2(rs.getString("tag2"));

                if(BaseDao.isExist(questionnaires, questionnaire.getquestionnaireID()))
                	questionnaires.add(questionnaire);
            }
        }catch(Exception e) {
            e.printStackTrace();
        }finally{
            BaseDao.closeAll(rs, st, con);
        }
        return questionnaires;
    }

    public ArrayList<Questionnaire> getAllQuestionnaires(){
        ArrayList<Questionnaire> result = null;
        Connection con=null;
        ResultSet rs=null;
        Statement st=null;

        try {
            String sql = "SELECT * FROM QuestionnaireSystem.question;";
            System.out.println(sql);
            con= BaseDao.getConnection();
            st=con.createStatement();
            result = new ArrayList<Questionnaire>();
            rs = st.executeQuery(sql);

            while(rs.next()){
                Questionnaire questionnaire= new Questionnaire();
                questionnaire.setquestionnaireID(rs.getInt("questionnaireID"));
            	questionnaire.setTitle(rs.getString("title"));
            	questionnaire.setpublishTime(rs.getString("publishTime"));
            	questionnaire.setTag1(rs.getString("tag1"));
            	questionnaire.setTag2(rs.getString("tag2"));
            	result.add(questionnaire);
            }

        }catch(Exception e) {
            e.printStackTrace();
        }finally{
            BaseDao.closeAll(rs, st, con);
        }
        
        return result;
    }

    public void addLikeCnt(int questionnaireID){
        Connection con=null;
        ResultSet rs=null;
        Statement st=null;

        try {
            String sql = "UPDATE `QuestionnaireSystem`.`question` SET `cnt` = cnt+'1' WHERE (`questionnaireID` = '"+questionnaireID+"');";
            System.out.println(sql);
            con= BaseDao.getConnection();
            st=con.createStatement();
            st.execute(sql);
        }catch(Exception e) {
            e.printStackTrace();
        }finally{
            BaseDao.closeAll(rs, st, con);
        }
    }
}
