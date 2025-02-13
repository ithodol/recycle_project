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
		ArrayList<BoardDto> result = BoardDao.getInstance().findAll();
			ObjectMapper mapper = new ObjectMapper();
			String jsonRsult = mapper.writeValueAsString(result);
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
