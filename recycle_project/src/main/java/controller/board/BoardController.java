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
//		페이징
		int page = Integer.parseInt( req.getParameter("page") );
//			1. 출력할 게시물 수
			int display = 10;
//			2. 페이지당 조회할 게시물의 시작 번호
			int startRow = (page-1) * display;
//			3. 게시물의 전체 게시물 수
			int totalSize = BoardDao.getInstance().getTotalSize();
//			4. 전체 페이지
			int totalPage = 0;
			if( totalSize % display == 0 ) {
				totalPage = totalSize / display + 1;
			}else { totalPage = totalSize / display + 1; }
//			5. 페이지당 버튼 수
			int btnSize = 10;
//			6. 시작버튼 번호 구하기
			int startBtn = ( ( page-1 ) / btnSize ) * btnSize+1;
//			7. 끝버튼 번호 구하기
			int endBtn = startBtn + ( btnSize-1 );
			if( endBtn > totalPage ) { endBtn = totalPage; }
			
		ArrayList<BoardDto> result = BoardDao.getInstance().findAll(startRow, display);
		
//			8. pageDto 객체 만들기
			PageDto pageDto = new PageDto();
			pageDto.setTotalSize(totalSize); // 조회된 전체 게시물 수
			pageDto.setPage(page); // 현재 페이지
			pageDto.setTotalPage(totalPage); // 전체 페이지수
			pageDto.setStartBtn(startBtn); // 페이징 버튼 시작 번호
			pageDto.setEndBtn(endBtn); // 페이징 버튼 끝 번호
			pageDto.setData(result);
			
			ObjectMapper mapper = new ObjectMapper();
			String jsonRsult = mapper.writeValueAsString(pageDto);
		resp.setContentType("application/json");
		resp.getWriter().print(jsonRsult);
	}
	
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
