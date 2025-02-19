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
import model.dao.board.ReplyDao;
import model.dto.board.ReplyDto;

@WebServlet("/board/reply")
public class ReplyController extends HttpServlet{

//	1. 댓글 쓰기
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> REPLY POST RUN");
		ObjectMapper mapper = new ObjectMapper();
		ReplyDto replyDto = mapper.readValue( req.getReader(), ReplyDto.class );
		HttpSession session = req.getSession();
		Object object = session.getAttribute("logInMno");
		int bno = Integer.parseInt(req.getParameter("bno"));
		
		boolean result = false;
		if( object != null ) {
			int mno = (Integer)object;
			replyDto.setMno(mno);
			replyDto.setBno(bno);
			result = ReplyDao.getInstance().write(replyDto);
		} // if end
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	} // f end
	
//	2. 전체 댓글 조회
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> REPLY GET RUN");
		int bno = Integer.parseInt(req.getParameter("bno"));
		ArrayList<ReplyDto> result = ReplyDao.getInstance().findAll(bno);
			ObjectMapper mapper = new ObjectMapper();
			String jsonResult = mapper.writeValueAsString(result);
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	} // f end
	
//	3. 댓글 수정
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> REPLY PUT RUN");
		ObjectMapper mapper = new ObjectMapper();
		ReplyDto replyDto = mapper.readValue( req.getReader(), ReplyDto.class );
		boolean result = ReplyDao.getInstance().update(replyDto); 
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	} // f end
	
//	4. 댓글 삭제
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> REPLY DELETE RUN");
		ObjectMapper mapper = new ObjectMapper();
		Object object = mapper.readValue( req.getReader(), ReplyDto.class );
		int rno = (Integer)object;
		boolean result = ReplyDao.getInstance().delete(rno); 
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	} // f end
	
	
}
