package controller.admin;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.dao.admin.AdminDao;
import model.dto.admin.AdminDto;

@WebServlet("/admin/login")
public class LoginController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post ok");
		ObjectMapper mapper = new ObjectMapper();
		AdminDto adminDto = mapper.readValue(req.getReader(), AdminDto.class);
		int loginAdno = AdminDao.getInstance().login(adminDto);
		if(loginAdno>0) {
			HttpSession session = req.getSession();
			session.setAttribute("loginAdno",loginAdno);
			session.setMaxInactiveInterval(60*60);
			
		}
		resp.setContentType("application/json");
		resp.getWriter().print(loginAdno);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("delete ok");
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginAdno");
		boolean logOut = false;
		if(object!=null) {
			session.removeAttribute("loginAdno");
			logOut = true;
		}
		resp.setContentType("loginAdno");
		resp.getWriter().print(logOut);
		
	}
}
