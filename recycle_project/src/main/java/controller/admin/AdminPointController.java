package controller.admin;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.admin.GetMemberDao;
import model.dto.admin.PointLogDto;

@WebServlet("/admin/point")
public class AdminPointController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get okok");
		
		int mno = Integer.parseInt(req.getParameter("mno"));
		
		PointLogDto pointLogDto = GetMemberDao.getInstance().findPointLog(mno);
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(pointLogDto);
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	}
}
