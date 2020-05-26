package util;

import dao.LikeDao;
import dao.QuestionnaireDao;
import dao.UserDao;
import entity.Like;
import entity.Questionnaire;
import entity.User;
import java.util.*;

public class ItemSimilarity {
    public static void main(String[] args) {
        //测试小Demo，在正式整合的时候需要和前端界面结合，input是当前登陆的用户id
        System.out.println("请输入用户希望推荐的用户id : ");
        Scanner input = new Scanner(System.in);
        int userID = input.nextInt();
        ArrayList<Questionnaire> v = recommend(userID);

        System.out.println("正在生成针对用户id为"+userID+"的推荐...");
        for(int i = 0; i < v.size(); i++)
            System.out.println("第"+(i+1)+"个推荐: 问卷题目:"+v.get(i).getTitle()+"");
    }

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
}