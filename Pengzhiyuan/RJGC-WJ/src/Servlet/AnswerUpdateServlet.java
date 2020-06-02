package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.SQLException;

import DAO.AnswerDao;
import DAO.QuestionDao;

/**
 * Servlet implementation class AnswerUpdateServl
 */
@WebServlet("/AnswerUpdateServlet")
public class AnswerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AnswerDao answerDao=new AnswerDao();
    public QuestionDao questionDao=new QuestionDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnswerUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String questionnaireID=request.getParameter("questionnaireID");
		String submitTime=request.getParameter("submitTime");
		String timeForWriting=request.getParameter("timeForWriting");
		String feedback=request.getParameter("feedback");
		String content=request.getParameter("content");
		String status=request.getParameter("status");
		String userID=request.getParameter("userID");
		//System.out.println(content);
		//System.out.println(submitTime);
		//System.out.println(timeForWriting);
		//System.out.println(feedback);
		//System.out.println(status);
		//System.out.println(userID);
		//System.out.println(questionnaireID);
		
		try {
			answerDao.add(Integer.parseInt(questionnaireID.trim()),submitTime,Integer.parseInt(timeForWriting.trim()),Integer.parseInt(feedback.trim()),content,Integer.parseInt(status.trim()),Integer.parseInt(userID.trim()));
			int cnt=answerDao.cntQuery(Integer.parseInt(questionnaireID.trim()));
			questionDao.cntUpdate(Integer.parseInt(questionnaireID.trim()), cnt);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
