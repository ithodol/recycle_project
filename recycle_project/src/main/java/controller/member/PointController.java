package controller.member;

import java.io.IOException;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.Pagination;
import model.dao.PaginationMethod;
import model.dto.board.PageDto;
import model.dto.member.PointDto;

@WebServlet("/point")
public class PointController extends HttpServlet{
	// 내 포인트 조회
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("point get test");
		
		Object result = null;
		PageDto<PointDto> pageDto = null;
		
		Object object = req.getSession().getAttribute("loginMno");
		if(object != null) {
			int loginMno = (Integer)object;
//			================== 페이지네이션 준비 ======================
		    int page = Integer.parseInt(req.getParameter("page"));
//		    페이지네이션 인터페이스 호출
		    Pagination pagination = new PaginationMethod();
//		                              			(mno, page , "테이블명" , 사용한Dto.class )
		    pageDto = pagination.calPagination(loginMno, page, "pointlog where mno="+loginMno, PointDto.class );
//		    =======================================================
		}
		//System.out.println(pageDto);
		ObjectMapper mapper = new ObjectMapper();
		String jsonResult = mapper.writeValueAsString(pageDto);

		resp.setContentType("application/json");
		resp.getWriter().print(jsonResult);
		
	}

}
