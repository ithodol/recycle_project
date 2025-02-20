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
import model.dao.board.ReplyDao;
import model.dto.board.PageDto;
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
		Object object = session.getAttribute("loginMno"); 
		
		boolean result = false;
		if( object != null ) {
			int mno = (Integer)object;
			System.out.println( mno );
			int bno = Integer.parseInt(req.getParameter("bno"));
			System.out.println(bno);
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
//		================== 페이지네이션 준비 ======================
	    int page = Integer.parseInt(req.getParameter("page"));
	    int bno = Integer.parseInt(req.getParameter("bno"));
	    
//	    페이지네이션 인터페이스 호출
	    Pagination pagination = new PaginationMethod();
//	    PageDto<사용할Dto> pageDto = pageination.caPagination( no, page, "테이블명 조건문 ="+변수, 사용할Dto.class );
	    PageDto<ReplyDto> pageDto = pagination.calPagination( bno, page, "reply where bno="+bno, ReplyDto.class );
//	    =======================================================
			ObjectMapper mapper = new ObjectMapper();
			String jsonResult = mapper.writeValueAsString(pageDto);
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	} // f end
	
//	3. 댓글 수정
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> REPLY PUT RUN");
		ObjectMapper mapper = new ObjectMapper();
		ReplyDto replyDto = mapper.readValue( req.getReader(), ReplyDto.class );
		System.out.println(replyDto.getRcontent());
		System.out.println(replyDto.getRno());
		boolean result = ReplyDao.getInstance().update(replyDto); 
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	} // f end
	
//	4. 댓글 삭제
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> REPLY DELETE RUN");
		ObjectMapper mapper = new ObjectMapper();
//		Object object = mapper.readValue( req.getReader(), ReplyDto.class );
//		int rno = (Integer)object;
		int rno = Integer.parseInt(req.getParameter("rno")); 
		boolean result = ReplyDao.getInstance().delete(rno); 
		resp.setContentType("application/json");
		resp.getWriter().print(result);
	} // f end 
	
	
}
