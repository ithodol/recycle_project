package model.dao.board;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.board.RecruitDto;

@NoArgsConstructor( access = lombok.AccessLevel.PRIVATE )
public class RecruitDao extends Dao{

	@Getter
	private static RecruitDao instance = new RecruitDao();
	
//	1. 모집하기
	public boolean write( int loginMno, int bno ) {
		try {
			String sql = "insert into recruit(mno, bno) value(?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, loginMno);
				ps.setInt(2, bno);
			int count = ps.executeUpdate();
			if( count == 1) { return true; }
		}catch( SQLException e ) { System.out.println( e ); }
		return false;
	} // f end
	
//	2. 모집현황
	public ArrayList<RecruitDto> findByBno( int bno ){
		ArrayList<RecruitDto> result = new ArrayList<>();
		try {
			String sql = "select r.reno, r.mno, m.mnickname from recruit r "
					+ "inner join member m on r.mno = m.mno where bno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, bno);
			ResultSet rs = ps.executeQuery();
			while( rs.next() ) {
				RecruitDto recruitDto = new RecruitDto();
				recruitDto.setReno(rs.getInt("reno"));
				recruitDto.setMno(rs.getInt("mno"));
				recruitDto.setMnickname(rs.getString("mnickname"));
				result.add(recruitDto);
			} // w end
		}catch( SQLException e ) { System.out.println(e); }
		return result; 
	} // f end
	
//	3. 모집하기 취소
	public boolean delete( int loginMno, int bno ) {
		try {
			String sql = "delete from recruit where mno = ? and bno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, loginMno);
				ps.setInt(2, bno);
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; }
		}catch( SQLException e ) { System.out.println(e); }
		return false;
	} // f end
	
}
