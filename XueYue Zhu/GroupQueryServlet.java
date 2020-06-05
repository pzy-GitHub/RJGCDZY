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


import Bean.GroupBean;
import Dao.GroupDao;
import com.alibaba.fastjson.JSONArray;

/**
 * Servlet implementation class GroupQueryServlet
 */
@WebServlet("/GroupQueryServlet")
public class GroupQueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public GroupDao dao=new GroupDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GroupQueryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String education=request.getParameter("education");
		String job=request.getParameter("job");
		String area=request.getParameter("area");
		try {
     		
     		List<GroupBean> list=dao.query(Integer.parseInt(gender.trim()),Integer.parseInt(age.trim()),Integer.parseInt(education.trim()),Integer.parseInt(job.trim()),Integer.parseInt(area.trim()));
  
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
