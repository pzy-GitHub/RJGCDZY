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

import Bean.AnswerBean;
import DAO.AnswerDao;
import com.alibaba.fastjson.JSONArray;

/**
 * Servlet implementation class AnswerQueryServlet
 */
@WebServlet("/AnswerQueryServlet")
public class AnswerQueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public AnswerDao dao=new AnswerDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnswerQueryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ID=request.getParameter("ID");
		String type=request.getParameter("answerQueryType");
		try {
     		
     		List<AnswerBean> list=dao.query(Integer.parseInt(ID.trim()),Integer.parseInt(type.trim()));
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
