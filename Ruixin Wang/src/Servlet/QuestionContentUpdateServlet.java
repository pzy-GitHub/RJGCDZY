package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.SQLException;

import Dao.QuestionDao;

/**
 * Servlet implementation class QuestionContentUpdateServlet
 */
@WebServlet("/QuestionContentUpdateServlet")
public class QuestionContentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public QuestionDao dao=new QuestionDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionContentUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//更新问卷设计
		String questionnaireID=request.getParameter("questionnaireID");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String tag1=request.getParameter("tag1");
		String tag2=request.getParameter("tag2");
		
		try {
			dao.update(Integer.parseInt(questionnaireID.trim()),title,content,tag1,tag2);
			
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
