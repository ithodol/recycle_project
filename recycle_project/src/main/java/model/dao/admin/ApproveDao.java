package model.dao.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.admin.PointLogDto;
import model.dto.admin.SharePointDto;
import model.dto.board.BoardDto;

@NoArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public class ApproveDao extends Dao {
	
	@Getter
	private static ApproveDao instance = new ApproveDao();
	
	// 승인할 게시물 전체 조회
	//	(1)페이지네이션 적용시 매개변수 ( int startRow , int display ) 추가 
	public ArrayList<BoardDto> findAll( int startRow , int display ) {
		ArrayList<BoardDto> result = new ArrayList<>();
		try {
			String sql = "select b.*, m.mnickname from board b inner join member m on b.mno = m.mno"
					+ "	where b.bpoint != 0 order by b.bno desc limit ? , ?";
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
}
	
	
	
	
	
	
	











