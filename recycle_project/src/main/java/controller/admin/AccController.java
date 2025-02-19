package controller.admin;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.admin.AccDao;
import model.dto.board.BoardDto;

@WebServlet("/board/acc/view")
public class AccController extends HttpServlet{
	
	// 게시물 개별 조회
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("acc get test");
		int bno = Integer.parseInt(req.getParameter("bno"));
		
		BoardDto boardDto = AccDao.getInstance().findByBno(bno);
		
		ObjectMapper mapper = new ObjectMapper();
		String result = mapper.writeValueAsString(boardDto);
		
		resp.setContentType("application/json");
		resp.getWriter().print(result);
		
	}
	
	// 포인트 지급
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("acc put test");
		int bno = Integer.parseInt(req.getParameter("bno"));
		
		ObjectMapper mapper = new ObjectMapper();
		BoardDto boardDto = mapper.readValue(req.getReader(), BoardDto.class);
		
		boolean result = AccDao.getInstance().putPoint(boardDto, bno);
		
		//if(result) {
			// bno에 해당하는 포인트와 타이틀ㅇ과 게시물에 참여한 회원목록을 구한다
			// 회원목록마다 포인트오 ㅏ타이틀을 이용하여 포인트로그 지급
			// 패치 여러번 쓰지 말기 서블릿에서 진행?
		//}
		
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
}
















