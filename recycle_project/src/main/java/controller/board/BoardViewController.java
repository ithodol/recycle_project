package controller.board;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.board.BoardDao;
import model.dto.board.BoardDto;

@WebServlet("/board/view")
public class BoardViewController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(">> 챌린지 상세페이지 GET RUN");
	    int bno = Integer.parseInt(req.getParameter("bno"));
	    BoardDto result = BoardDao.getInstance().findByBno(bno);
	    	ObjectMapper mapper = new ObjectMapper();
	    	String jsonResult = mapper.writeValueAsString(result);
	    resp.setContentType(jsonResult);
	    resp.getWriter().print(jsonResult);
	} // f end
	
}
