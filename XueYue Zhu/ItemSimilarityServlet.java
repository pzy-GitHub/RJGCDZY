package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.LikeDao;
import Dao.QuestionnaireDao;
import Dao.UserDao;
import entity.Like;
import entity.Questionnaire;
import entity.User;


import java.util.*;
import com.alibaba.fastjson.JSONArray;

/**
 * Servlet implementation class ItemSimilarityServlet
 */
@WebServlet("/ItemSimilarityServlet")
public class ItemSimilarityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
	//通过计算余弦相似度并取TopN, 返回为userID的用户生成的5个推荐问卷
    public static ArrayList<Questionnaire> recommend(int userID){
        UserDao userdao = new UserDao();
        QuestionnaireDao questionnairedao = new QuestionnaireDao();
        LikeDao likedao = new LikeDao();

        ArrayList<Like> likeLists;                                       //其他用户喜欢的问卷

        ArrayList<User> users = userdao.getAllUsers();                   //所有用户列表
        ArrayList<Questionnaire> questionnaires = questionnairedao.getAllQuestionnaires();       //所有问卷列表
        int[][] curMatrix = new int[questionnaires.size()+5][questionnaires.size()+5];   //当前矩阵
        int[][] comMatrix = new int[questionnaires.size()+5][questionnaires.size()+5];   //共现矩阵
        int[] N = new int[questionnaires.size()+5];                              //喜欢每个问卷的人数

        for(User user: users){
        	//System.out.println(user.getUid());
            if(user.getUid()==userID) continue;                    //当前用户则跳过

            likeLists = likedao.findLikesByUser(user.getUid()); //当前用户的喜欢列表

            for(int i = 0; i < questionnaires.size(); i++)
                for(int j = 0; j < questionnaires.size(); j++)
                    curMatrix[i][j] = 0;                               //清空矩阵

            for(int i = 0; i < likeLists.size(); i++){
                int pid1 = likeLists.get(i).getquestionnaireID();
                ++N[pid1];
                for(int j = i+1; j < likeLists.size(); j++){
                    int pid2 = likeLists.get(j).getquestionnaireID();
                    ++curMatrix[pid1][pid2];
                    ++curMatrix[pid2][pid1]; //两两加一
                }
            }
            
            //累加所有矩阵, 得到共现矩阵
            for(int i = 0; i < questionnaires.size(); i++){
                for(int j = 0; j < questionnaires.size(); j++){
                    int pid1 = questionnaires.get(i).getquestionnaireID(), pid2 = questionnaires.get(j).getquestionnaireID();
                    comMatrix[pid1][pid2] += curMatrix[pid1][pid2];
                    comMatrix[pid1][pid2] += curMatrix[pid1][pid2];
                }
            }
        }


        TreeSet<Questionnaire> preList = new TreeSet<Questionnaire>(new Comparator<Questionnaire>() {
            @Override
            public int compare(Questionnaire o1, Questionnaire o2) {
                if(o1.getW()!=o2.getW())
                    return (int) (o1.getW()-o2.getW())*100;
                else
                    return o1.getCnt()-o2.getCnt();
            }
        }); //预处理的列表

        likeLists = likedao.findLikesByUser(userID);       //当前用户喜欢的问卷列表
        boolean[] used = new boolean[questionnaires.size()+5];  //判重数组
        for(Like like: likeLists){
            int Nij = 0;                         //既喜欢i又喜欢j的人数
            double Wij;                          //相似度
            Questionnaire tmp;                           //当前的问卷

            int i = like.getquestionnaireID();
            for(Questionnaire questionnaire: questionnaires){
                if(like.getquestionnaireID() == questionnaire.getquestionnaireID()) continue;
                int j = questionnaire.getquestionnaireID();

                Nij = comMatrix[i][j];
                Wij = (double)Nij/Math.sqrt(N[i]*N[j]); //计算余弦相似度

                tmp = questionnairedao.findQuestionnaireById(questionnaire.getquestionnaireID());
                tmp.setW(Wij);

                if(used[tmp.getquestionnaireID()]) continue;
                preList.add(tmp);
                used[tmp.getquestionnaireID()] = true;
            }
        }

        ArrayList<Questionnaire> recomLists = new ArrayList<>();      //生成的推荐结果
        for(int i = 0; preList.size()>0 && i<5; i++){
            recomLists.add(preList.pollLast());
            preList.pollLast();
        }
        if(recomLists.size()<5){
            //推荐数量不满5个, 补足喜欢数最高的问卷
            recomLists = questionnairedao.findTopNQuestionnaires(recomLists);
        }

        return recomLists;
    }
    
    public ItemSimilarityServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userID=request.getParameter("userID");
        ArrayList<Questionnaire> v = recommend(Integer.parseInt(userID));
	    String CONTENT_TYPE = "application/json; charset=utf-8";
	    response.setContentType(CONTENT_TYPE);
	    PrintWriter out = response.getWriter();
	    out.println(JSONArray.toJSONString(v));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
