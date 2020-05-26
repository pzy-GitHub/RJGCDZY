package dao;

import entity.Like;
import util.BaseDao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

public class LikeDao {
    public ArrayList<Like> findLikesByUser(int userID){
        ArrayList<Like> result = null;
        Connection con=null;
        ResultSet rs=null;
        Statement st=null;

        try {
        	//System.out.println(userID);
            String sql="SELECT * FROM QuestionnaireSystem.answer where userID = "+userID+";";
            System.out.println(sql);
            con= BaseDao.getConnection();
            st=con.createStatement();
            result = new ArrayList<Like>();
            rs = st.executeQuery(sql);

            while(rs.next()){
                Like like = new Like();
                like.setLid(rs.getInt("index"));
                like.setquestionnaireID(rs.getInt("questionnaireID"));
                like.setuserID(rs.getInt("userID"));
                //System.out.println(rs.getInt("userID"));

                result.add(like);
            }

        }catch(Exception e) {
            e.printStackTrace();
        }finally{
            BaseDao.closeAll(rs, st, con);
        }
        return result;
    }

}
