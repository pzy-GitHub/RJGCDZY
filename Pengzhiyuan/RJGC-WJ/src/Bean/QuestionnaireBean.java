package Bean;

public class QuestionnaireBean {
	int questionnaireId;
    int userId;
    String title;
    String content;
    int status;
    String publishtime;
    String tag1;
    String tag2;
    public int cnt;
    
	public QuestionnaireBean(int questionnaireId, int userId, String title, String content, int status, String publishtime, String tag1, String tag2, int cnt) {
		// TODO Auto-generated constructor stub
		this.questionnaireId = questionnaireId;
		this.userId = userId;
		this.title = title;
		this.content = content;
		this.status = status;
		this.publishtime = publishtime;
		this.tag1 = tag1;
		this.tag2 = tag2;
		this.cnt = cnt;
	}

	public int getquestionnaireId() {
		return this.questionnaireId;
	}
	
	public void setquestionnaireId(int questionnaireId) {
		this.questionnaireId = questionnaireId;
	}
	
	public int getuserId() {
		return this.userId;
	}
	
	public void setuserId(int userId) {
		this.userId = userId;
	}
	
	public String gettitle() {
		return this.title;
	}
	
	public void settitle(String title) {
		this.title = title;
	}
	
	public String getcontent() {
		return this.content;
	}
	
	public int getstatus() {
		return this.status;
	}
	
	public void setstatus(int status) {
		this.status = status;
	}
	
	public void setcontent(String content) {
		this.content = content;
	}
	
	public String getpublishttime() {
		return this.content;
	}
	
	public void setpublishtime(String publishtime) {
		this.publishtime = publishtime;
	}
	
	public String gettag1() {
		return this.tag1;
	}
	
	public void settag1(String tag1) {
		this.tag1 = tag1;
	}
	
	public String gettag2() {
		return this.tag2;
	}
	
	public void settag2(String tag2) {
		this.tag2 = tag2;
	}
	
	public int getcnt() {
		return cnt;
	}
	
	public void setcnt(int cnt) {
		this.cnt = cnt;
	}
}
