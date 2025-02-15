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
	// 승인할 게시물 전체 조회
	@Getter
	private static AccDao instance = new AccDao();
	
	public ArrayList<BoardDto> findAll(){
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		
		try {
			String sql = "select * from board";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				BoardDto boardDto = new BoardDto();
				boardDto.setBno(rs.getInt("bno"));
				boardDto.setBtitle(rs.getString("btitle"));
				boardDto.setBcontent(rs.getString("bcontent"));
				boardDto.setBdate(rs.getString("bdate"));
			}
					
		}catch(SQLException e) {System.out.println(e);}
		
		
		return list;
	}
}
