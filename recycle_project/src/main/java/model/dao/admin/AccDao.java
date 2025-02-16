package model.dao.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.board.BoardDto;

@NoArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public class AccDao extends Dao {
	
	@Getter
	private static AccDao instance = new AccDao();
	
	// 승인할 게시물 전체 조회
	//	(1)페이지네이션 적용시 매개변수 ( int startRow , int display ) 추가 
	public ArrayList<BoardDto> findAll( int startRow , int display ) {
		ArrayList<BoardDto> result = new ArrayList<>();
		try {
			String sql = "select b.*, m.mnickname from board b inner join member m "
					+ "on b.mno = m.mno order by b.bno desc limit ? , ?";
			PreparedStatement ps = conn.prepareStatement(sql);
	//		(2) ====== 페이지네이션 적용시 추가 =====
				ps.setInt(1, startRow);
				ps.setInt(2, display);
	//		===================================
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
	
	
	// 게시물 개별 조회
	public BoardDto findByBno(int bno) {
		try {
			String sql = "select * from board b "
					+ "inner join member m on b.mno = m.mno "
					+ "where bno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, bno);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				BoardDto boardDto = new BoardDto();
				boardDto.setBno(rs.getInt("bno"));
				boardDto.setBtitle(rs.getString("btitle"));
				boardDto.setBcontent(rs.getString("bcontent"));
				boardDto.setBview(rs.getInt("bview"));
				boardDto.setBdate(rs.getString("bdate"));
				boardDto.setBpeople(rs.getString("bpeople"));
				boardDto.setBstartdate(rs.getString("bstartdate"));
				boardDto.setBenddate(rs.getString("benddate"));
				boardDto.setBaddress(rs.getString("baddress"));
				//boardDto.setBpoint(rs.getInt("bpoint"));
				boardDto.setMno(rs.getInt("mno"));
				boardDto.setMnickname(rs.getString("mnickname")); // 회원테이블과 join 결과 회원 아이디 출력 가능
				return boardDto;
			}
		}catch(SQLException e) {System.out.println(e);}
		
		return null;
	}
	
	
	// 포인트 지급
	public boolean putPoint(BoardDto boardDto) {
		try {
			String sql = "update board set bpoint = ? where bno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, boardDto.getBpoint());
			ps.setInt(2, boardDto.getBno());
			int c = ps.executeUpdate();
			System.out.println(c); // 왜 0?
			if(c == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		
		return false;
	}
	
	
	
}




























