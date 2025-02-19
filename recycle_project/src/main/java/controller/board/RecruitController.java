package controller.board;

import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.dao.board.RecruitDao;
import model.dto.board.RecruitDto;

@WebServlet("/board/recruit")
public class RecruitController extends HttpServlet{
	
//	1. 모집하기
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> RECRUIT POST RUN");
		HttpSession session = req.getSession();
		int bno = Integer.parseInt(req.getParameter("bno"));
		Object object = session.getAttribute("loginMno");
		boolean result = false;
		if( object != null ) { 
			int loginMno = (Integer)object;
			result = RecruitDao.getInstance().write(loginMno, bno);			
		} // if end
		resp.setContentType("application/json");
		resp.getWriter().print(result);  
	} // f end
	
//	2. 모집현황
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> RECRUIT GET RUN");
		int bno = Integer.parseInt(req.getParameter("bno"));
		ArrayList<RecruitDto> result = RecruitDao.getInstance().findByBno(bno);
			ObjectMapper mapper = new ObjectMapper();
			String jsonResult = mapper.writeValueAsString(result);
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	} // f end
	
//	3. 모집하기 취소
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> RECRUIT DELETE RUN");
		int bno = Integer.parseInt(req.getParameter("bno"));
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginMno");
		boolean result = false;
		if( object != null ) { 
			int loginMno = (Integer)object;
			result = RecruitDao.getInstance().delete(loginMno, bno);			
		} // if end
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	} // f end
	
}
