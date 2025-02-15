package model.dao.board;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.board.BoardDto;

@NoArgsConstructor( access = lombok.AccessLevel.PRIVATE )
public class BoardDao extends Dao{
//	+ 싱글톤
	@Getter
	private static BoardDao instance = new BoardDao();

//	1. 게시물 쓰기
	public boolean write( BoardDto boardDto ) {
		try {
			String sql = "insert into board(btitle, bcontent, baddress,"
					+ " bpeople, bstartdate, benddate, mno) "
					+ "value( ?,?,?,?,?,?,? )";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, boardDto.getBtitle());
				ps.setString(2, boardDto.getBcontent());
				ps.setString(3, boardDto.getBaddress());
				ps.setString(4, boardDto.getBpeople());
				ps.setString(5, boardDto.getBstartdate());
				ps.setString(6, boardDto.getBenddate());
				ps.setInt(7, boardDto.getMno());
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; }
		}catch( SQLException e ) { System.out.println(e); }
		return false;
	} // f end
	
//	2. 전체 게시물 조회
//		(1)페이지네이션 적용시 매개변수 ( int startRow , int display ) 추가 
	public ArrayList<BoardDto> findAll( int startRow , int display ) {
		ArrayList<BoardDto> result = new ArrayList<>();
		try {
			String sql = "select b.*, m.mnickname from board b inner join member m "
					+ "on b.mno = m.mno order by b.bno desc limit ? , ?";
			PreparedStatement ps = conn.prepareStatement(sql);
//			(2) ====== 페이지네이션 적용시 추가 =====
				ps.setInt(1, startRow);
				ps.setInt(2, display);
//			===================================
			ResultSet rs = ps.executeQuery();
			while( rs.next() ) {
				BoardDto boardDto = new BoardDto();
				boardDto.setBno(rs.getInt("bno"));
				boardDto.setBtitle(rs.getString("btitle"));
				boardDto.setBcontent(rs.getString("bcontent"));
				boardDto.setBaddress(rs.getString("baddress"));
				boardDto.setBdate(rs.getString("bdate"));
				boardDto.setBpeople(rs.getString("bpeople"));
				boardDto.setBstartdate(rs.getString("bstartdate"));
				boardDto.setBenddate(rs.getString("benddate"));
				boardDto.setBview(rs.getInt("bview"));
				boardDto.setBlike(rs.getInt("blike"));
				boardDto.setBpoint(rs.getInt("bpoint"));
				boardDto.setMnickname(rs.getString("mnickname"));
				result.add(boardDto);
			} // w end
		}catch( SQLException e ) { System.out.println(e); }	
		return result;
	} // f end
	
//	3. 게시물 수정
	public boolean update() {
		try {
			String sql = "";
			PreparedStatement ps = conn.prepareStatement(sql);
				
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; }
		}catch( SQLException e ) { System.out.println(e); }
		return false;
	} // f end	

//	4. 게시물 삭제
	public boolean delete( int bno ) {
		try {
			String sql = "";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; }
		}catch( SQLException e ) { System.out.println(e); }
		return false;
	} // f end	

}
