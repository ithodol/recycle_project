package controller.board;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.dao.board.RecruitDao;

@WebServlet("/board/recruit")
public class RecruitController extends HttpServlet{
	
//	1. 모집하기
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> RECRUIT POST RUN");
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginMno");
		int bno = Integer.parseInt(req.getParameter("bno"));
		boolean result = false;
		if( object != null ) { 
			int loginMno = (Integer)object;
			result = RecruitDao.getInstance().write( loginMno, bno );			
		} // if end
		resp.setContentType("application/json");
		resp.getWriter().print(result);  
	} // f end
	
//	2. 모집현황
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> RECRUIT GET RUN");
		
	} // f end
	
//	3. 모집하기 취소
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> RECRUIT DELETE RUN");
		
	} // f end
	
}
