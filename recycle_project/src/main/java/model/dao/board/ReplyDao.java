package model.dao.board;

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
				ps.setInt(1, replyDto.getRno());
				ps.setString(2, replyDto.getRcontent());
				ps.setString(3, replyDto.getRdate());
				ps.setInt(4, replyDto.getBno());
				ps.setInt(5, replyDto.getMno());
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; } 
		}catch( SQLException e ) { System.out.println(e); }  
		return false;
	} // f end
	
//	2. 전체 댓글 조회
	public ArrayList<ReplyDto> findAll( int bno ){
		ArrayList<ReplyDto> result = new ArrayList<ReplyDto>();
		try{
			String sql = "select r.*, m.nickname from reply r inner join member m "
					+ "on r.mno = m.mno where bno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, bno);
			ResultSet rs = ps.executeQuery();
			while( rs.next() ) {
				ReplyDto replyDto = new ReplyDto();
				replyDto.setRno(rs.getInt("rno"));
				replyDto.setRcontent(rs.getString("rcontent"));
				replyDto.setRdate(rs.getString("rdate"));
				replyDto.setBno(rs.getInt("bno"));
				replyDto.setMno(rs.getInt("mno"));
				replyDto.setMnickname(rs.getString("mnickname"));
				result.add(replyDto);
			} // w end
		}catch( SQLException e ) { System.out.println(e); }
		return result;
	} // f end
	
//	3. 댓글 수정
	public boolean update( ReplyDto replyDto ) {
		try {
			String sql = "update reply(rcontent, rdate) "
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
			String sql = "delete from reply where rno = rno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, rno);
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; }
		}catch( SQLException e ) { System.out.println(e); }
		return false;
	} // f end
	
	
}
