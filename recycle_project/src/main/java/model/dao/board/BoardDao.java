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
			String sql = "insert into board(lno, btitle, bcontent, lat, lng, "
					+ "bpeople, bstartdate, benddate, mno) "
					+ "value( ?,?,?,?,?,?,?,?,? )";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, boardDto.getLno());
				ps.setString(2, boardDto.getBtitle());
				ps.setString(3, boardDto.getBcontent());
				ps.setDouble(4, boardDto.getLat());
				ps.setDouble(5, boardDto.getLng());
				ps.setInt(6, boardDto.getBpeople());
				ps.setString(7, boardDto.getBstartdate());
				ps.setString(8, boardDto.getBenddate());
				ps.setInt(9, boardDto.getMno());
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; }
		}catch( SQLException e ) { System.out.println(e); }
		return false;
	} // f end
	
//	2. 전체 게시물 조회
//		(1)페이지네이션 적용시 매개변수 ( int startRow , int display, String str ) 추가 
	public ArrayList<BoardDto> findAll( int startRow , int display , String str ) {
		ArrayList<BoardDto> result = new ArrayList<>();
		try {
			String sql = "select b.*, m.mnickname from board b inner join member m "
					+ "on b.mno = m.mno " + str	+ " order by b.bno desc limit ? , ?";
			System.out.println(sql);
			PreparedStatement ps = conn.prepareStatement(sql);
//			(2) ====== 페이지네이션 적용시 추가 ======
				ps.setInt(1, startRow);
				ps.setInt(2, display);
//			    ================================
			ResultSet rs = ps.executeQuery();
			while( rs.next() ) {
				BoardDto boardDto = new BoardDto();
				boardDto.setBno(rs.getInt("bno"));
				boardDto.setLno(rs.getInt("lno"));
				boardDto.setBtitle(rs.getString("btitle"));
				boardDto.setBcontent(rs.getString("bcontent"));
				boardDto.setBaddress(rs.getString("baddress"));
				boardDto.setBdate(rs.getString("bdate"));
				boardDto.setBpeople(rs.getInt("bpeople"));
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
	
//	5. 게시물 상세 페이지 조회
	public BoardDto findByBno( int bno ) {
		BoardDto result = new BoardDto();
		try {
			String sql = "select b.*, m.mnickname from board b "
					+ "inner join member m on b.mno = m.mno "
					+ "where bno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
				ps.setInt(1, bno);
			ResultSet rs = ps.executeQuery();
			if( rs.next() ) { 
				result.setBno(rs.getInt("bno"));
				result.setBtitle(rs.getString("btitle"));
				result.setBcontent(rs.getString("bcontent"));
				result.setBaddress(rs.getString("baddress"));
				result.setBdate(rs.getString("bdate"));
				result.setLat(rs.getDouble("lat"));
				result.setLng(rs.getDouble("lng"));
				result.setBdate(rs.getString("bdate"));
				result.setBpeople(rs.getInt("bpeople"));
				result.setBstartdate(rs.getString("bstartdate"));
				result.setBenddate(rs.getString("benddate"));
				result.setBview(rs.getInt("bview"));
				result.setBlike(rs.getInt("blike"));
				result.setBpoint(rs.getInt("bpoint"));
				result.setMnickname(rs.getString("mnickname"));
				result.setMno(rs.getInt("mno"));
			} // if end
		}catch( SQLException e ) { System.out.println(e); }
		return result;
	}

}
