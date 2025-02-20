package controller.member;

import java.io.IOException;
import java.util.ArrayList;

import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.admin.GetMemberDao;
import model.dto.member.MemberDto;




@WebServlet("/admin/rank")
public class Topmembercontroller extends HttpServlet{
   
   public Topmembercontroller() {
        super(); // 부모 클래스(HttpServlet)의 기본 생성자 호출
    }

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      ArrayList<MemberDto> result = GetMemberDao.getInstance().findRank();

      ObjectMapper mapper = new ObjectMapper();
      String jsonResult = mapper.writeValueAsString(result);
      resp.setContentType("application/json");
      resp.getWriter().print(jsonResult);
   }
} 
