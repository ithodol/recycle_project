package controller.member;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.dao.member.MemberDao;
import model.dto.member.MemberDto;

@WebServlet("/member/info")
public class InfoController extends HttpServlet{
	// 내 정보 조회
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("info get test");
		MemberDto result = null;
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginMno");
		if(object != null) {
			int loginMno = (Integer)object;
			result = MemberDao.getInstance().myInfo(loginMno);
		}
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(result);
		
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
		
	}
	
	
	
	// 내 정보 수정
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		MemberDto memberDto = mapper.readValue(req.getReader(), MemberDto.class);
		
		boolean result = false;
		
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginMno");
		
		if(object != null) {
			int loginMno = (Integer)object;
			memberDto.setMno(loginMno);
			result = MemberDao.getInstance().update(memberDto);
		} // if end
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}

	
	// 회원 탈퇴
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("info delete test");
		boolean result = false;
		
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginMno");
		
		if(object != null) {
			int loginMno = (Integer)object;
			result = MemberDao.getInstance().delete(loginMno);
			if(result == true) {
				session.removeAttribute("loginMno");
			}
		}
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
	
	
	
	
	
	
}
























