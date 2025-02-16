package controller.member;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.member.MemberDao;
import model.dto.member.MemberDto;

@WebServlet("/member/signup")
public class SignUpController extends HttpServlet {
	 // 회원가입
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("signup test");
		
		String uploadPath = req.getServletContext().getRealPath("/upload");
		
		File file = new File(uploadPath);
		if(file.exists()) {}
		else {file.mkdir();}
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(file);
		factory.setSizeThreshold( 1024 * 1024 *1024 );
		factory.setDefaultCharset("UTF-8");
		
		ServletFileUpload fileUpload = new ServletFileUpload(factory);
		
		String filename = "default.jpg";
		//System.out.println(fileUpload);
		
		try {
			List<FileItem> fileList = fileUpload.parseRequest(req);
			//System.out.println(fileList);
			for(FileItem item : fileList) {
				if(item.isFormField()) {}
				else {
					if(!item.getName().isEmpty()) {
						filename = UUID.randomUUID().toString() + "-" + item.getName().replaceAll("-", "_");
						File uploadFile = new File(uploadPath + "/" + filename);
						item.write(uploadFile);
					}
				}
			} // for end
			MemberDto memberDto = new MemberDto();
			//System.out.println(fileList);
			memberDto.setMid(fileList.get(0).getString());
			memberDto.setMpwd(fileList.get(1).getString());
			memberDto.setMname(fileList.get(2).getString());
			memberDto.setMnickname(fileList.get(3).getString());
			memberDto.setMphone(fileList.get(4).getString());
			memberDto.setMemail(fileList.get(5).getString());
			memberDto.setMprofile(filename);
			
			boolean result = MemberDao.getInstance().signup(memberDto);
			
			resp.setContentType("application/json");
			resp.getWriter().print(result);
			
		}catch(Exception e) {System.out.println(e);} // try end
	} // post end
		
	
} // class end




























