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

@WebServlet("/member/login")
public class LoginController extends HttpServlet {

	// 로그인
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("login post test");
		ObjectMapper mapper = new ObjectMapper();
		MemberDto memberDto = mapper.readValue(req.getReader(), MemberDto.class);
		
		int loginMno = MemberDao.getInstance().login(memberDto);
		if(loginMno > 0) {
			HttpSession session = req.getSession();
			session.setAttribute("loginMno", loginMno);
			session.setMaxInactiveInterval(60*60);
		} // if end
		resp.setContentType("application/json");
		resp.getWriter().print(loginMno);
	} // post end
	
	
	// 로그아웃 -> DAO 존재하지 않음 = 세션에서 바로 삭제
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("logout delete test");
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginMno");
		boolean logOut = false;
		if(object != null) {
			session.removeAttribute("loginMno");
			logOut = true;
		} // if end
		resp.setContentType("application/json");
		resp.getWriter().print(logOut);
	}
	
	
	
	
	
	
} // class end

















