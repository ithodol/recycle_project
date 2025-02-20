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
import model.dto.admin.PointLogDto;
import model.dto.board.BoardDto;
import model.dto.board.PageDto;
import model.dto.member.MemberDto;

@WebServlet("/admin/point")
public class AdminPointController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get okok");
//		================== 페이지네이션 준비 ======================
	    int page = Integer.parseInt(req.getParameter("page"));
	    int mno = Integer.parseInt(req.getParameter("mno"));
	    
//	    페이지네이션 인터페이스 호출
	    Pagination pagination = new PaginationMethod();
	    //String where = "member  where mno ="+mno;
//	    PageDto<사용할Dto> pageDto = pageination.caPagination( no, page, "테이블명 조건문 ="+변수, 사용할Dto.class);
	    PageDto<PointLogDto> pageDto = pagination.calPagination( mno, page,"pointlog where mno ="+mno,PointLogDto.class );
//	    =======================================================
			ObjectMapper mapper = new ObjectMapper();
			String jsonResult = mapper.writeValueAsString(pageDto);
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	}
}
