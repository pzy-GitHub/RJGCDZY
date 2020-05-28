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

import Bean.QuestionBean;
import Dao.QuestionDao;
import com.alibaba.fastjson.JSONArray;

/**
 * Servlet implementation class QuestionQueryServlet
 */
@WebServlet("/QuestionQueryServlet")
public class QuestionQueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public QuestionDao dao=new QuestionDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionQueryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ID=request.getParameter("ID");
		String type=request.getParameter("questionQueryType");
		try {
     		
     		List<QuestionBean> list=dao.query(Integer.parseInt(ID.trim()),Integer.parseInt(type.trim()));
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
