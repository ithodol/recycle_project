package controller.admin;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.Pagination;
import model.dao.PaginationMethod;
import model.dto.board.BoardDto;
import model.dto.board.PageDto;

@WebServlet("/board/approve")
public class ApproveController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
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
