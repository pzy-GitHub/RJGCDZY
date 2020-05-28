package dao;

import entity.Questionnaire;
import entity.User;
import util.BaseDao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

public class UserDao {

    public User findByName(String username) {
        //通过用户名来查找该用户
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;

        try {
            String sql="select * from QuestionnaireSystem.user where username='"+username+"'";
            conn=BaseDao.getConnection();
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            if (rs.next()){
                User target = new User(rs.getInt("userID"), rs.getString("username"),
                        rs.getString("password"));
                return target;
            }else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            BaseDao.closeAll(rs, st, conn);
        }
        return null;
    }

    public boolean isExist(String userID){
        //通过用户ID查找该用户是否存在
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;

        try {
            String sql = "select count(*) from user where userID = '"+userID+"';";
            System.out.println(sql);
            conn = BaseDao.getConnection();
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            //如果找到该用户返回true
            while (rs.next()){
                if(rs.getBoolean(1))
                    return true;
                else
                    return false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            BaseDao.closeAll(rs, st, conn);
        }
        return false;
    }



    public ArrayList<User> getAllUsers(){
        ArrayList<User> result = null;
        Connection con=null;
        ResultSet rs=null;
        Statement st=null;

        try {
            String sql = "SELECT * FROM QuestionnaireSystem.user;";
            System.out.println(sql);
            con= BaseDao.getConnection();
            st=con.createStatement();
            result = new ArrayList<User>();
            rs = st.executeQuery(sql);

            while(rs.next()){
                User user = new User();
                user.setUid(rs.getInt("userID"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                //System.out.println(rs.getInt("userID"));

                result.add(user);
            }

        }catch(Exception e) {
            e.printStackTrace();
        }finally{
            BaseDao.closeAll(rs, st, con);
        }
        return result;


    }
}
