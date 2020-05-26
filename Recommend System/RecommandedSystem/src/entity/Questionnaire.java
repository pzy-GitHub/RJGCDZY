package entity;

import java.util.Date;

public class Questionnaire {
    int questionnaireID; //问卷id
    String title;  //问卷名字
    String publishTime;      //发布日期
    String tag1;   //一级标题
    String tag2;   //二级标题
    int cnt;        //问卷填写数
    double w;       //相似度(只在推荐时调用)

    public Questionnaire() {
    }

    public Questionnaire(int questionnaireID, String title, String publishTime, String tag1, String tag2) {
        this.questionnaireID = questionnaireID;
        this.title = title;
        this.publishTime = publishTime;
        this.tag1 = tag1;
        this.tag2 = tag2;
        this.cnt = cnt;
    }

    public int getquestionnaireID() {
        return questionnaireID;
    }

    public void setquestionnaireID(int questionnaireID) {
        this.questionnaireID = questionnaireID;
    }
    

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    

    public String getpublishTime() {
        return publishTime;
    }

    public void setpublishTime(String publishTime) {
        this.publishTime = publishTime;
    }



    public String getTag1() {
        return tag1;
    }

    public void setTag1(String tag1) {
        this.tag1 = tag1;
    }

    public String getTag2() {
        return tag2;
    }

    public void setTag2(String tag2) {
        this.tag2 = tag2;
    }
    
    public double getW() {
        return w;
    }

    public void setW(double w) {
        this.w = w;
    }
    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    @Override
    public String toString() {
        return "Questionnaire{" +
                "questionnaireID=" + questionnaireID +
                ", title='" + title+ '\'' +
                ", publishTime=" + publishTime +
                ", tag1='" + tag1 + '\'' +
                ", tag2='" + tag2 + '\'' +
                ", cnt=" + cnt +
                '}';
    }
}
