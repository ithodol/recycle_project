package controller.admin;

import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.Pagination;
import model.dao.PaginationMethod;
import model.dao.admin.GetMemberDao;
import model.dto.board.PageDto;
import model.dto.member.MemberDto;
 
 
@WebServlet("/admin/find")
public class GetMemberController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		================== 페이지네이션 준비 ======================
	    int page = Integer.parseInt(req.getParameter("page"));
	    
//	    페이지네이션 인터페이스
	    Pagination pagination = new PaginationMethod();
	    PageDto pageDto = pagination.calPagination(page, "member");
//	    =======================================================
	    int startRow=0;
	    int display=9;
		
	
		ArrayList<MemberDto> result = GetMemberDao.getInstance().findAll(startRow,display);
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(result);
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	}
} 
