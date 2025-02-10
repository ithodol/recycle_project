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

@WebServlet("/admin/info")
public class InfoController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	AdminDto result = null;
	HttpSession session = req.getSession();
	Object object = session.getAttribute("loginAnd");
	
	if(object != null) {
		int loginAno = (Integer)object;
		result = AdminDao.getInstance().myAdminInfo(loginAno);
	}
	ObjectMapper mapper = new ObjectMapper();
	String jsonResult = mapper.writeValueAsString(result);
	resp.setContentType("application/json");
	resp.getWriter().print(jsonResult);
}

@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		AdminDto adminDto = mapper.readValue(req.getReader(), AdminDto.class);
		boolean result = false;
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginAno");
		if(object != null) {
			int loginAno = (Integer)object;
			adminDto.setAno(LEGACY_DO_HEAD);
			result = AdminDao.getInstance().update(adminDto);
			
		}
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
