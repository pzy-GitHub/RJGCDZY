package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.SQLException;

import DAO.QuestionDao;

/**
 * Servlet implementation class QuestionUpdateServlet
 */
@WebServlet("/QuestionUpdateServlet")
public class QuestionUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public QuestionDao dao=new QuestionDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userID=request.getParameter("userID");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String status=request.getParameter("status");
		String publishTime=request.getParameter("publishTime");
		String tag1=request.getParameter("tag1");
		String tag2=request.getParameter("tag2");
		String cnt=request.getParameter("cnt");
		
		try {
			dao.add(Integer.parseInt(userID.trim()),title,content,Integer.parseInt(status.trim()),publishTime,tag1,tag2,Integer.parseInt(cnt.trim()));
			
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
