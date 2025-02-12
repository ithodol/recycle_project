package model.dao.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.member.MemberDto;

@NoArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public class GetMemberDao extends Dao{
	@Getter
	private static GetMemberDao instance = new GetMemberDao();

	public ArrayList<MemberDto> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public int getTotalSize( int mno ) {
        try {
                String sql = "select count(*) from member where mno = ?";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt( 1 , mno );
                ResultSet rs = ps.executeQuery();
                if( rs.next() ) { return rs.getInt( 1 ); }
        }catch (Exception e) { System.out.println( e );}
        return 0;
}
	
	
}
