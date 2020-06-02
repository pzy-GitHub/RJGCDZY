package Bean;

public class AnswerBean {
	public int index;
	public int questionnaireID;
	public String submitTime;
	public int timeForWriting;
	public int feedback;
	public String content;
	public int status;
	public int userID;
	
	public AnswerBean(int index, int questionnaireID, String submitTime, int timeForWriting, int feedback,
			String content, int status, int userID) {
		super();
		this.index = index;
		this.questionnaireID = questionnaireID;
		this.submitTime = submitTime;
		this.timeForWriting = timeForWriting;
		this.feedback = feedback;
		this.content = content;
		this.status = status;
		this.userID = userID;
	}
	
	public int getIndex() {
		return index;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}
	
	public int getQuestionnaireID() {
		return questionnaireID;
	}
	
	public void setQuestionnaireID(int questionnaireID) {
		this.questionnaireID = questionnaireID;
	}
	
	public String getSubmitTime() {
		return submitTime;
	}
	
	public void setSubmitTime(String submitTime) {
		this.submitTime = submitTime;
	}
	
	public int getTimeForWriting() {
		return timeForWriting;
	}
	
	public void setTimeForWriting(int timeForWriting) {
		this.timeForWriting = timeForWriting;
	}
	
	public int getFeedback() {
		return feedback;
	}
	
	public void setFeedback(int feedback) {
		this.feedback = feedback;
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
	
	public int getUserID() {
		return userID;
	}
	
	public void setUserID(int userID) {
		this.userID = userID;
	}

}
