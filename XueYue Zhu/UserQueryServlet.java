package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.SQLException;
import java.util.List;

import Bean.UserBean;
import Dao.UsersDao;
import com.alibaba.fastjson.JSONArray;

/**
 * Servlet implementation class UserQueryServlet
 */
@WebServlet("/UserQueryServlet")
public class UserQueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public UsersDao dao=new UsersDao();
    
    /**
     * Default constructor. 
     */
    public UserQueryServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userID=request.getParameter("userID");
		try {   		
     		List<UserBean> list=dao.query(Integer.parseInt(userID));
		    String CONTENT_TYPE = "application/json; charset=utf-8";
		    response.setContentType(CONTENT_TYPE);
		    PrintWriter out = response.getWriter();
		    out.println(JSONArray.toJSONString(list));
			
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

