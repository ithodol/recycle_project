package controller.board;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.dao.Pagination;
import model.dao.PaginationMethod;
import model.dao.board.BoardDao;
import model.dto.board.BoardDto;
import model.dto.board.PageDto;

@WebServlet("/board")
public class BoardController extends HttpServlet{
	
//	1. 게시물 쓰기
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> 챌린지 POST RUN");
		ObjectMapper mapper = new ObjectMapper();
		BoardDto boardDto = mapper.readValue( req.getReader() , BoardDto.class );
//		세션 정보 가져오기
		HttpSession session = req.getSession();
		Object object = session.getAttribute("loginMno");
		int loginMno = 0;
		if( object != null ) {
			loginMno = (Integer)object;
			System.out.println(loginMno);
			boardDto.setMno(loginMno);
		} // if end
		
		boolean result = BoardDao.getInstance().write(boardDto);
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
	
//	2. 전체 게시물 조회
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> 챌린지 GET RUN");
//		================== 페이지네이션 준비 ======================
	    int page = Integer.parseInt(req.getParameter("page"));
	    
//	    페이지네이션 인터페이스 호출
	    Pagination pagination = new PaginationMethod();
//	                                             페이지네이션 할 테이블명 " "에 입력
	    PageDto pageDto = pagination.calPagination(page, "board");
//	    =======================================================
	    
	    	ObjectMapper mapper = new ObjectMapper();
	    	String jsonResult = mapper.writeValueAsString(pageDto);
	    resp.setContentType("application/json");
	    resp.getWriter().print(jsonResult);
	} // f end
	
//	3. 게시물 수정
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> 챌린지 PUT RUN");
	}
	
//	4. 게시물 삭제
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> 챌린지 DELETE RUN");
	}
	 
	
}
