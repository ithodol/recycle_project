//package controller.admin;
//
//import java.io.IOException;
//import java.net.http.HttpClient;
//import java.util.ArrayList;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import model.dao.admin.GetMemberDao;
//import model.dto.admin.PageDto;
//import model.dto.member.MemberDto;
//
//
//@WebServlet("admin/find")
//public class GetMemberController extends HttpServlet{
//
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		//회원 정보 10개씩 출력
//		int mno = Integer.parseInt(req.getParameter("mno"));
//		int page = Integer.parseInt(req.getParameter("page"));
//		
//		// 페이징 철리에 필요한 자료를 준비
//		//1. 1페이지 당 출력할 게시물 수 
//		int display  = 10; //페이지 1개당 게시물 5개씩 출력할 예정
//		//2. 페이지당 조회할 게시물의 시작번호
//		int startRow = (page-1)*display;
//			//게시물이 10개 존재한다고 가정 : 0 1 2 3 4 5 6 7 8 9 
//			//1페이지 시작번호 0번 , 2페이지 시작번호 5번 
//		//3.게시물의 전체 페이지수 구하기
//		int totalSize = GetMemberDao.getInstance().getTotalSize(mno);
//		//4. 특정 카테고리 게시물의 전체 게시물 수 구하기
//		int totalPage = 0;
//		if(totalSize%display==0) {
//			//전체 게시물 수 나누기 페이지당 게시물 수 했을 때 나머지가 없으면
//			totalPage = totalSize/display;
//		}else {
//			totalPage = totalSize/display+1;
//		}
//		//5. 페이지당 버튼 수
//		int btnSize = 5;
//		//6. 시작버튼 번호 구하기
//		int startBtn = ((page-1)/btnSize) * btnSize+1;
//		//7. 끝번호 번호 구하기
//		int endBtn = startBtn +(btnSize-1);
//		// * 만약에 끝번호가 전체 페이지수 보다 커지면 안되므로 끝번호가 전체페이지수 보다 커지면
//		if(endBtn>totalPage) endBtn = totalPage;
//		//ArrayList<MemberDto> result = GetMemberDao.getInstance().findAll(mno,startRow,display);
//		
//		PageDto pageDto = new PageDto();
//		pageDto.setTotalCount(totalSize);
//		
//		ObjectMapper mapper = new ObjectMapper();
//		String jsonResult = mapper.writeValueAsString(pageDto);
//		resp.setContentType("application/json");
//		resp.getWriter().print(jsonResult);
//	}
//}
