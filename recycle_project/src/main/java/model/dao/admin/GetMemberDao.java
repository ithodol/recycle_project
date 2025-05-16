
package model.dao.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.admin.PointLogDto;
import model.dto.member.MemberDto;

@NoArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public class GetMemberDao extends Dao{
	@Getter
	private static GetMemberDao instance = new GetMemberDao();

	 
	
//	public int getTotalSize( int mno ) {
//        try {
//                String sql = "select count(*) from member where mno = ?";
//                PreparedStatement ps = conn.prepareStatement(sql);
//                ps.setInt( 1 , mno );
//                ResultSet rs = ps.executeQuery();
//                if( rs.next() ) { return rs.getInt( 1 ); }
//        }catch (Exception e) { System.out.println( e );}
//        return 0;
//}



	public ArrayList<MemberDto> findAll(int startRow, int display) {
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		try {
			String sql = "select member.mno, mnickname,mid, mname, "
					+ "IFNULL(sum(pointlog.pocount), 0) as mpoint from member "
					+ "left join pointlog on member.mno = pointlog.mno "
					+ "group by member.mno order by member.mno limit ? , ? ";
			
			PreparedStatement ps = conn.prepareStatement(sql);
//			(2) ====== 페이지네이션 적용시 추가 =====
				ps.setInt(1, startRow);
				ps.setInt(2, display);
//			===================================
			ResultSet rs = ps.executeQuery();
			while(rs.next()) { 
				MemberDto memberDto = new MemberDto();
				memberDto.setMno(rs.getInt("mno"));
				memberDto.setMid(rs.getString("mid"));
				memberDto.setMname(rs.getString("mname"));
				memberDto.setMnickname(rs.getString("mnickname"));
				memberDto.setMpoint(rs.getInt("mpoint"));
				list.add(memberDto);
			}
		}catch(SQLException e ) {
			System.out.println(e);
		}
		return list;
	}
	
	public ArrayList<MemberDto> findRank() {
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		try {
			String sql = "select member.mno, mnickname,mid, mname, IFNULL(sum(pointlog.pocount), 0) as mpoint from member left join pointlog on member.mno = pointlog.mno group by member.mno order by mpoint DESC  limit 0 , 10 ";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) { 
				MemberDto memberDto = new MemberDto();
				memberDto.setMno(rs.getInt("mno"));
				memberDto.setMid(rs.getString("mid"));
				memberDto.setMname(rs.getString("mname"));
				memberDto.setMnickname(rs.getString("mnickname"));
				memberDto.setMpoint(rs.getInt("mpoint"));
				list.add(memberDto);
			}
		}catch(SQLException e ) {
			System.out.println(e);
		}
		return list;
	}
	
	
	
	public MemberDto findbyMno(int mno) {
		try {
			String sql ="select member.mno,mid,mname,mphone,IFNULL(sum(pointlog.pocount), 0) as mpoint from member left join pointlog on member.mno = pointlog.mno where member.mno=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1,mno);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				MemberDto memberDto = new MemberDto();
				memberDto.setMno(rs.getInt("mno"));
				memberDto.setMid(rs.getString("mid"));
				memberDto.setMname(rs.getString("mname"));
				memberDto.setMphone(rs.getString("mphone"));
				memberDto.setMpoint(rs.getInt("mpoint"));
				return memberDto;
			}
			
		}catch(Exception e){
			System.out.println(e);}
		return null;
	}

//	               (1) 페이지네이션 적용시 매개변수 ( int mno, int startRow , int display ) 추가 
	public  ArrayList<PointLogDto> findPointLog(int mno, int startRow, int display) {
		ArrayList<PointLogDto> list = new ArrayList<PointLogDto>();
		try {
			String sql ="select pointlog.mno, pointlog.podate, pointlog.pocontent, "
					+ "pointlog.pocount as point from member "
					+ "inner join pointlog on member.mno = pointlog.mno "
					+ "where member.mno = ? "
					+ "group by point ,pointlog.podate, pointlog.pocontent limit ? , ?";
			PreparedStatement ps = conn.prepareStatement(sql);
//			(2) ====== 페이지네이션 적용시 추가 =====
			ps.setInt(1, mno);
			ps.setInt(2, startRow);
			ps.setInt(3, display);
//			===================================
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				PointLogDto pointLogDto = new PointLogDto();
				pointLogDto.setMno(rs.getInt("mno"));
				pointLogDto.setPodate(rs.getString("podate"));
				pointLogDto.setPocontent(rs.getString("pocontent"));
				pointLogDto.setPoint(rs.getInt("point"));
				list.add(pointLogDto);
				
			}
			
			
		}catch(Exception e){
			System.out.println(e);}
		return list;
	}


	public boolean memberUpdate(MemberDto memberDto) {
		try {
			String sql = "update member set mname = ?, mphone = ? where mno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, memberDto.getMname());
			ps.setString(2, memberDto.getMphone());
			ps.setInt(3, memberDto.getMno());
			int count = ps.executeUpdate();
			if (count == 1) {
				return true;
			}
		}catch(Exception e) {System.out.println(e);}
		return false;
	
	}


	public boolean memberDelete(int mno) {
		try {
			String sql = "delete from member where mno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, mno);
			int c = ps.executeUpdate();
			if(c == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		
		return false;	
	}	
	}
	

