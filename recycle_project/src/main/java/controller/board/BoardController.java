package controller.board;

import java.io.IOException;
import java.util.ArrayList;

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
		Object object = session.getAttribute("logInMno");
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
//		페이지네이션 준비
	    int page = Integer.parseInt(req.getParameter("page"));
	    int display = 10;
	    int btnSize = 10;
	    int startRow = (page-1) * display; 
//	    조회할 테이블 튜플의 총 개수
	    int totalSize = BoardDao.getInstance().getTotalSize("board");
	    ArrayList<BoardDto> result = BoardDao.getInstance().findAll(startRow, display);
	    
//	    페이지네이션 인터페이스
	    Pagination pagination = new PaginationMethod();
	    PageDto pageDto = pagination.calPagination(page, totalSize, display, btnSize, result);
	    
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
