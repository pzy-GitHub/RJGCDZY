package entity;

public class Like {
    int userID; //发起喜欢的用户
    int questionnaireID; //被喜欢的问卷
    int index; //该填写行为的id

    public Like(int uid, int pid, int lid) {
        this.userID = userID;
        this.questionnaireID = questionnaireID;
        this.index = index;
    }

    public Like(){

    }

    public int getuserID() {
        return userID;
    }

    public void setuserID(int userID) {
        this.userID = userID;
    }

    public int getquestionnaireID() {
        return questionnaireID;
    }

    public void setquestionnaireID(int questionnaireID) {
        this.questionnaireID = questionnaireID;
    }

    public int getindex() {
        return index;
    }

    public void setLid(int index) {
        this.index = index;
    }

    @Override
    public String toString() {
        return "Like{" +
                "userID=" + userID+
                ", questionnaireID=" + questionnaireID +
                ", index=" + index +
                '}';
    }
}
