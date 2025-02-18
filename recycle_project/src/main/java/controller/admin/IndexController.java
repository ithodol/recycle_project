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
import model.dao.admin.AccDao;
import model.dto.board.BoardDto;
import model.dto.board.PageDto;

@WebServlet("/board/acc")
public class IndexController extends HttpServlet{
	
	// 승인할 게시물 전체 조회
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("acc get test");
//		================== 페이지네이션 준비 ======================
	    int page = Integer.parseInt(req.getParameter("page"));
	    
//	    페이지네이션 인터페이스
	    Pagination pagination = new PaginationMethod();
	    PageDto<BoardDto> pageDto = pagination.calPagination(page, "board", BoardDto.class );
//	    =======================================================
	    
    	ObjectMapper mapper = new ObjectMapper();
    	String jsonResult = mapper.writeValueAsString(pageDto);
	    resp.setContentType("application/json");
	    resp.getWriter().print(jsonResult);
	} // f end


} 
 