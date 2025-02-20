package controller.board;

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

@WebServlet("/board/view/lno")
public class BoardLnoViewController extends HttpServlet{ 
	
//	lno별 게시물 조회
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> LNO 챌린지 GET RUN");
//		================== 페이지네이션 준비 ======================
	    int page = Integer.parseInt(req.getParameter("page"));
	    int lno = Integer.parseInt(req.getParameter("lno"));
	    
//	    페이지네이션 인터페이스 호출
	    Pagination pagination = new PaginationMethod();
//	    PageDto<사용할Dto> pageDto = pageination.caPagination( no, page, "테이블명 조건문 ="+변수, "사용할Dto.class");
	    PageDto<BoardDto> pageDto = pagination.calPagination( lno, page, "board where lno="+lno, BoardDto.class );
//	    =======================================================
	    
	    	ObjectMapper mapper = new ObjectMapper();
	    	String jsonResult = mapper.writeValueAsString(pageDto);
	    resp.setContentType("application/json");
	    resp.getWriter().print(jsonResult);
	}
	
}
