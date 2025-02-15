package controller.admin;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.admin.GetMemberDao;
import model.dto.member.MemberDto;


@WebServlet("/admin/view")
public class MemberViewController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int mno = Integer.parseInt(req.getParameter("mno"));
		
		MemberDto memberDto = GetMemberDao.getInstance().findbyMno(mno);
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(memberDto);
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("PUT OK");
		ObjectMapper mapper = new ObjectMapper();
		MemberDto memberDto = mapper.readValue(req.getReader(), MemberDto.class);
		boolean result = GetMemberDao.getInstance().memberUpdate(memberDto);
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("DELETE OK");
	    int mno = Integer.parseInt(req.getParameter("mno"));
	    boolean result = GetMemberDao.getInstance().memberDelete(mno);
	    resp.setContentType("application/json");
	    resp.getWriter().print(result);
	}
}
