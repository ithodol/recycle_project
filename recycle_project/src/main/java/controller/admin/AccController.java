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
	}
}
