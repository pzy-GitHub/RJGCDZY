package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.SQLException;

import Dao.UserDao;

/**
 * Servlet implementation class UserAccountUpdateServlet
 */
@WebServlet("/UserAccountUpdateServlet")
public class UserAccountUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public UserDao dao = new UserDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAccountUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userID=request.getParameter("userID");
		String account=request.getParameter("account");
		
		try {
			dao.accountUpdate(Integer.parseInt(userID.trim()),Integer.parseInt(account.trim()));
			
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
