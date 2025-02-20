package controller.admin;

import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.admin.AccDao;
import model.dto.admin.AdminDto;
import model.dto.admin.PointLogDto;
import model.dto.admin.SharePointDto;
import model.dto.board.BoardDto;
import model.dto.member.MemberDto;

@WebServlet("/point/share")
public class SharePointController extends HttpServlet{
	// bno에 신청한 사람들의 정보 가져오기
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("sharepoint get test");
		// 현재 페이지 bno 가져오기
		int bno = Integer.parseInt(req.getParameter("bno"));
		//System.out.println(bno);

		// bno에 해당하는 정보 가져오기
		
		ArrayList<SharePointDto> findList = AccDao.getInstance().findMno(bno); 
		System.out.println(findList);
		
		ObjectMapper mapper = new ObjectMapper();
		String result = mapper.writeValueAsString(findList);
		// 이동할 때는 배열로 이동함 
		// 배열을  text로 객체로 바꿔서 보냄

		resp.setContentType("application/json");
		resp.getWriter().print(result);
	}
	
	
	// bno에 신청한 각 mno에게 포인트 배포하기 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("sharepoint post test");
		
		
//		PointLogDto pointLogDto = mapper.readValue(req.getReader(), PointLogDto.class);
//		boolean result = AccDao.getInstance().sharePoint(pointLogDto);
	
		ObjectMapper mapper = new ObjectMapper(); // 바디를 읽어줌 
		ArrayList<SharePointDto> postList= mapper.readValue(req.getReader(), ArrayList.class);
		System.out.println(postList);
	
		
		
		//String jsonResult = mapper.writeValueAsString(postList);
		boolean result = AccDao.getInstance().sharePoint(postList);
		
		resp.setContentType("application/json");
		resp.getWriter().print(result);
		
	}
	
	
	
	
	
}




