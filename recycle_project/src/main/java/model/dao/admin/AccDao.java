package model.dao.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.admin.SharePointDto;
import model.dto.board.BoardDto;
import model.dto.member.MemberDto;

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
				boardDto.setBpeople(rs.getInt("bpeople"));
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
	
	
	// 게시물 포인트 수정 0 -> n
	public boolean putPoint(BoardDto boardDto, int bno) {
		try {
			String sql = "update board set bpoint = ? where bno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, boardDto.getBpoint());
			ps.setInt(2, bno);
			System.out.println(boardDto.getBno());
			int c = ps.executeUpdate();
			System.out.println(c); 
			if(c == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		
		return false;
	}
	
	
	// bno에 해당하는 정보 가져오기
	public ArrayList<SharePointDto> findMno(int bno) {
		ArrayList<SharePointDto> list = new ArrayList<SharePointDto>();
		try {
			String sql = "select board.bpoint, board.bcontent, member.mno, recruit.reno from recruit "
					+ "inner join member on recruit.mno = member.mno "
					+ "inner join board on recruit.bno = board.bno "
					+ "where board.bno=? and board.bpoint=0";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, bno);
			//System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				SharePointDto sharePointDto = new SharePointDto();
				sharePointDto.setReno(rs.getInt("reno"));
				sharePointDto.setMno(rs.getInt("mno"));
				sharePointDto.setBpoint(rs.getInt("bpoint"));
				sharePointDto.setBcontent(rs.getString("bcontent"));
				list.add(sharePointDto);
			}
			
		}catch(SQLException e) {System.out.println(e);}
		
		System.out.println(list);
		return list;
	}
	
	
	// bno에 신청한 각 mno에게 포인트 배포하기
	public boolean sharePoint(SharePointDto sharePointDto) {
		try {
			String sql = "insert into pointlog(pocontent, pocount, podate, mno) value (?, ?, now(), ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			//System.out.println(sharePointDto);
			ps.setString(1, sharePointDto.getBcontent());
			ps.setInt(2, sharePointDto.getBpoint());
			ps.setInt(3, sharePointDto.getMno());
			//System.out.println(ps);
			int c = ps.executeUpdate();
			
			if(c == 1) {
				return true;
			}
		}catch(SQLException e) {System.out.println(e);}
		return false;
	}
	
	
	
}






























