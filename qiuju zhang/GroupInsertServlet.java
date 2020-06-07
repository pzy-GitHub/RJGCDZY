package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;

import java.sql.SQLException;

import Dao.GroupDao;
import Dao.UserDao;
/**
 * Servlet implementation class GroupInsertServlet
 */
@WebServlet("/GroupInsertServlet")
public class GroupInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public GroupDao groupDao = new GroupDao();
	public UserDao userDao = new UserDao();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GroupInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String questionnaireID=request.getParameter("questionnaireID");
		String userID=request.getParameter("userID");
		String title=request.getParameter("title");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String education=request.getParameter("education");
		String job=request.getParameter("job");
		String area=request.getParameter("area");	
		String account=request.getParameter("account");
		
		try {
			//向group数据库中插入记录
			
			groupDao.add(Integer.parseInt(questionnaireID.trim()),Integer.parseInt(userID.trim()),title,gender,age,education,job,area);
			//更新用户金币余额
			userDao.accountUpdate(Integer.parseInt(userID.trim()), Integer.parseInt(account.trim()));
			
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
