package model.dao.board;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;

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
	
	
//	3. 모집하기 취소
	
	
}
