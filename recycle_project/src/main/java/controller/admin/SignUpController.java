package controller.admin;

import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.admin.AdminDao;
import model.dao.admin.GetMemberDao;
import model.dto.admin.AdminDto;
import model.dto.member.MemberDto;

@WebServlet("/admin/signup")
public class SignUpController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post ok");
		ObjectMapper mapper = new ObjectMapper();
		AdminDto adminDto = mapper.readValue(req.getReader(), AdminDto.class);
		boolean result = AdminDao.getInstance().signup(adminDto);
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<AdminDto> result = AdminDao.getInstance().signupcheck();
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(result);
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	}
	

}
