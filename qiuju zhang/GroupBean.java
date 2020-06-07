package Bean;

public class GroupBean {
	public int questionnaireID;
	public int userID;
	public String title;
	public String gender;
	public String age;
	public String education;
	public String job;
	public String area;
	public GroupBean(int questionnaireID, int userID, String title, String gender, String age, String education,
			String job, String area) {
		super();
		this.questionnaireID = questionnaireID;
		this.userID = userID;
		this.title = title;
		this.gender = gender;
		this.age = age;
		this.education = education;
		this.job = job;
		this.area = area;
		
	}
	public int getquestionnaireID() {
		return questionnaireID;
	}
	public void setquestionnaireID(int questionnaireID) {
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
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

}
