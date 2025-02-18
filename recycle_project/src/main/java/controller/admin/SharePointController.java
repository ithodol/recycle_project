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
import model.dto.admin.SharePointDto;
import model.dto.board.BoardDto;
import model.dto.member.MemberDto;

@WebServlet("/point/share")
public class SharePointController extends HttpServlet{
	// 게시물에 신청한 사람들의 정보 가져오기
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("sharepoint get test");
		// 현재 페이지 bno 가져오기
		int bno = Integer.parseInt(req.getParameter("bno"));
		//System.out.println(bno);

		// bno에 해당하는 정보 가져오기
		MemberDto memberDto = new MemberDto();
		ArrayList<SharePointDto> findList = AccDao.getInstance().findMno(memberDto, bno); 
		//System.out.println(findList);
		
		ObjectMapper mapper = new ObjectMapper();
		String result = mapper.writeValueAsString(findList);
		
		resp.setContentType("application/json");
		resp.getWriter().print(result);
		
		
	}
}
