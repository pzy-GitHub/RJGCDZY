package Bean;

public class QuestionBean {
	public int questionnaireID;
	public int userID;
	public String title;
	public String content;
	public int status;
	public String publishTime;
	public String tag1;
	public String tag2;
	public int cnt;
	
	public QuestionBean(int questionnaireID, int userID, String title, String content, int status, String publishTime,
			String tag1, String tag2, int cnt) {
		super();
		this.questionnaireID = questionnaireID;
		this.userID = userID;
		this.title = title;
		this.content = content;
		this.status = status;
		this.publishTime = publishTime;
		this.tag1 = tag1;
		this.tag2 = tag2;
		this.cnt = cnt;
	}
	
	public int getQuestionnaireID() {
		return questionnaireID;
	}
	
	public void setQuestionnaireID(int questionnaireID) {
		this.questionnaireID = questionnaireID;
	}
	
	public int getUserID() {
		return userID;
	}
	
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public int getStatus() {
		return status;
	}
	
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getPublishTime() {
		return publishTime;
	}
	
	public void setPublishTime(String publishTime) {
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
	
	public int getCnt() {
		return cnt;
	}
	
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}
