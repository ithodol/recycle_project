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
	
	//로그인된 관리자 정보 조회
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	System.out.println("get ok");
	AdminDto result = null;
	HttpSession session = req.getSession();
	Object object = session.getAttribute("loginAdno");
	
	if(object != null) {
		int loginAdno = (Integer)object;
		result = AdminDao.getInstance().myAdminInfo(loginAdno);
	}
	ObjectMapper mapper = new ObjectMapper();
	String jsonResult = mapper.writeValueAsString(result);
	resp.setContentType("application/json");
	resp.getWriter().print(jsonResult);
}

//관리자 정보 수정
@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("put ok");	
		ObjectMapper mapper = new ObjectMapper();
		AdminDto adminDto = mapper.readValue(req.getReader(), AdminDto.class);
		boolean result = false;
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginAdno");
		if(object != null) {
			int loginAdno = (Integer)object;
			adminDto.setAdno(loginAdno);
			result = AdminDao.getInstance().update(adminDto);
			
		}
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
//관리자 정보 탈퇴
@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	System.out.println("delete ok");	
	boolean result = false;
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginAdno");
		if(object!=null) {
			int loginAdno = (Integer)object;
			result = AdminDao.getInstance().delete(loginAdno);
			if(result ==true) {
				session.removeAttribute("loginAdno");
			}
		}
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
}
