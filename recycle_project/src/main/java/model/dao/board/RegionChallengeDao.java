package model.dao.board;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.board.BoardDto;


@NoArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public class RegionChallengeDao extends Dao{
	
	@Getter
	private static RegionChallengeDao instance = new RegionChallengeDao();
	
	public ArrayList<BoardDto> findAll() {
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		try {
			String sql = "select * from board inner join member on board.mno=member.mno "
					+ " order by board.bno asc ";

			PreparedStatement ps = conn.prepareStatement(sql);
	
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				while( rs.next() ) {
					BoardDto boardDto = new BoardDto();
					boardDto.setBno(rs.getInt("bno"));
					boardDto.setBtitle(rs.getString("btitle"));
					boardDto.setBaddress(rs.getString("baddress"));
					boardDto.setBdate(rs.getString("bdate"));
					boardDto.setBpeople(rs.getInt("bpeople"));
					boardDto.setBstartdate(rs.getString("bstartdate"));
					boardDto.setBenddate(rs.getString("benddate"));
					boardDto.setBview(rs.getInt("bview"));
					boardDto.setBlike(rs.getInt("blike"));
					boardDto.setBpoint(rs.getInt("bpoint"));
					boardDto.setLat(rs.getDouble("lat"));
					boardDto.setLng(rs.getDouble("lng"));
					boardDto.setMnickname(rs.getString("mnickname"));
					boardDto.setMno(rs.getInt("mno"));
					list.add(boardDto);
				} // w end
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
	}// f e
}
