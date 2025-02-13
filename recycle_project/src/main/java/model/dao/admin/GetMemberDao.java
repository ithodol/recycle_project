
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



	public ArrayList<MemberDto> findAll() {
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		try {
			String sql = "select * from member";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				MemberDto memberDto = new MemberDto();
				memberDto.setMno(rs.getInt("mno"));
				memberDto.setMid(rs.getString("mid"));
				memberDto.setMname(rs.getString("mname"));
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
			String sql ="select member.mno,mid,mname,sum(pointlog.pocount) as mpoint "
					+ "from member inner join pointlog on member.mno = pointlog.mno  where member.mno =?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1,mno);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				MemberDto memberDto = new MemberDto();
				memberDto.setMno(rs.getInt("mno"));
				memberDto.setMid(rs.getString("mid"));
				memberDto.setMname(rs.getString("mname"));
				memberDto.setMpoint(rs.getInt("mpoint"));
				return memberDto;
			}
			
			
		}catch(Exception e){
			System.out.println(e);}
		return null;
	}


	public  ArrayList<PointLogDto> findPointLog(int mno) {
		ArrayList<PointLogDto> list = new ArrayList<PointLogDto>();
		try {
			String sql ="select pointlog.mno, pointlog.podate, pointlog.pocontent, pointlog.pocount as point from member inner join pointlog on member.mno = pointlog.mno where member.mno = ?  group by point ,pointlog.podate, pointlog.pocontent";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1,mno);
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
	
	
}
