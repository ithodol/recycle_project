package model.dao.member;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.member.MemberDto;

@NoArgsConstructor( access = lombok.AccessLevel.PRIVATE )
public class MemberDao extends Dao {
	@Getter
	private static MemberDao instance = new MemberDao();
	
	
	// 회원가입
	public boolean signup(MemberDto memberDto) {
		try {
			String sql = "insert into member(mid, mpwd, mname, mnickname, mphone, memail, mprofile) values (?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, memberDto.getMid());
			ps.setString(2, memberDto.getMpwd());
			ps.setString(3, memberDto.getMname());
			ps.setString(4, memberDto.getMnickname());
			ps.setString(5, memberDto.getMphone());
			ps.setString(6, memberDto.getMemail());
			ps.setString(7, memberDto.getMprofile());
			int c = ps.executeUpdate();
			if(c == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		
		return false;
	}
	
}
