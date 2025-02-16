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
}
