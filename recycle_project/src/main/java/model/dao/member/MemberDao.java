package model.dao.member;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
	
	
	// 로그인
	public int login(MemberDto memberDto) {
		try {
			String sql = "select mno from member where mid = ? and mpwd = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, memberDto.getMid());
			ps.setString(2, memberDto.getMpwd());
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				int mno = rs.getInt("mno");
				return mno;
			}			
		}catch(SQLException e) {System.out.println(e);}
		return 0;
	}
	
	
	// 내 정보 조회
	public MemberDto myInfo(int loginMno) {
		try {
			String sql = "select * from member where mno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, loginMno);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				MemberDto memberDto = new MemberDto();
				memberDto.setMno(rs.getInt("mno"));
                memberDto.setMid( rs.getString("mid") );
                memberDto.setMname(rs.getString("mname"));
                memberDto.setMnickname(rs.getString("mnickname"));
                memberDto.setMphone( rs.getString("mphone") );
                memberDto.setMemail(rs.getString("memail"));
                memberDto.setMprofile(rs.getString("mprofile"));
                return memberDto;
			}
		}catch(SQLException e) {System.out.println(e);}
		return null;
	}
	
	
	// 내 정보 수정
	public boolean update(MemberDto memberDto) {
		try {
			String sql = "update member set mpwd = ?, mnickname = ?, mphone = ?, memail = ?, mprofile = ? where mno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, memberDto.getMpwd());
			ps.setString(2, memberDto.getMnickname());
			ps.setString(3, memberDto.getMphone());
			ps.setString(4, memberDto.getMemail());
			ps.setString(5, memberDto.getMprofile());
			ps.setInt(6, memberDto.getMno());
			
			int c = ps.executeUpdate();
			if(c == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		return false;
	}

	
	// 회원 탈퇴
	public boolean delete(int loginMno) {
		try {
			String sql = "delete from member where mno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, loginMno);
			int c = ps.executeUpdate();
			if(c == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		
		return false;	
	}
	
}
































