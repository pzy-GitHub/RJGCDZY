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
 * Servlet implementation class QuestionStatusUpdateServlet
 */
@WebServlet("/QuestionStatusUpdateServlet")
public class QuestionStatusUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public QuestionDao dao=new QuestionDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionStatusUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String questionnaireID=request.getParameter("questionnaireID");
		String status=request.getParameter("status");
		
		try {
			dao.statusUpdate(Integer.parseInt(questionnaireID.trim()),Integer.parseInt(status.trim()));
			
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
