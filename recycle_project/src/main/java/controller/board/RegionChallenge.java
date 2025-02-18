package controller.board;

import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.board.RegionChallengeDao;
import model.dto.board.BoardDto;


@WebServlet("/region")
public class RegionChallenge extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<BoardDto> result = RegionChallengeDao.getInstance().findAll();
		
		
		//[3] 받은 전체 게시물을 JSON 형식의 문자열로 변환하기
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(result);
		//[4] http response
		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
	}

}
