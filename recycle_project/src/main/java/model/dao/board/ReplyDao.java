package model.dao.board;

import java.io.Console;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.board.ReplyDto;

@NoArgsConstructor( access = lombok.AccessLevel.PRIVATE )
public class ReplyDao extends Dao{

	@Getter
	private static ReplyDao instance = new ReplyDao();
	
//	1. 댓글 쓰기
	public boolean write( ReplyDto replyDto ) {
		try {
			String sql = "insert into reply(rcontent, bno, mno) "
					+ "value( ?,?,? )";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, replyDto.getRcontent());
				ps.setInt(2, replyDto.getBno());
				ps.setInt(3, replyDto.getMno());
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; } 
		}catch( SQLException e ) { System.out.println(e); }  
		return false;
	} // f end
	
//	2. 전체 댓글 조회
//	(1)페이지네이션 적용시 매개변수 ( int startRow , int display, String str ) 추가 
	public ArrayList<ReplyDto> findAll( int bno, int startRow, int display ){
		ArrayList<ReplyDto> result = new ArrayList<ReplyDto>();
		try{
			String sql = "select r.*, m.mnickname, m.mprofile from reply r "
					+ "inner join member m on r.mno = m.mno where r.bno = ? "
					+ "limit ? , ?";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, bno);
//			(2) ====== 페이지네이션 적용시 추가 ======
				ps.setInt(2, startRow);
				ps.setInt(3, display);
//				================================
			ResultSet rs = ps.executeQuery();
			while( rs.next() ) {
				ReplyDto replyDto = new ReplyDto();
				replyDto.setRno(rs.getInt("rno"));
				replyDto.setRcontent(rs.getString("rcontent"));
				replyDto.setRdate(rs.getString("rdate"));
				replyDto.setBno(rs.getInt("bno"));
				replyDto.setMno(rs.getInt("mno"));
				replyDto.setMnickname(rs.getString("mnickname"));
				replyDto.setMprofile(rs.getString("mprofile"));
				result.add(replyDto);
			} // w end
		}catch( SQLException e ) { System.out.println(e); }
		return result;
	} // f end
	
//	3. 댓글 수정
	public boolean update( ReplyDto replyDto ) {
		try {
			System.out.println(replyDto.getRcontent());
			System.out.println(replyDto.getRno());
			
			String sql = "update reply "
					+ "set rcontent = ?, rdate = now() "
					+ "where rno = ? ";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, replyDto.getRcontent());
				ps.setInt(2, replyDto.getRno());
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; }
		}catch( SQLException e ) { System.out.println(e); }
		return false;
	} // f end
	
//	4. 댓글 삭제
	public boolean delete( int rno ) {
		try {
			String sql = "delete from reply where rno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, rno);
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; }
		}catch( SQLException e ) { System.out.println(e); }
		return false;
	} // f end
	
	
}
