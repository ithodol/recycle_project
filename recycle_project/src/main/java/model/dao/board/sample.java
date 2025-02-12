package model.dao.board;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;

@NoArgsConstructor( access = lombok.AccessLevel.PRIVATE )
public class sample extends Dao{
//	+ 싱글톤
	@Getter
	private static sample instance = new sample();

//	1. 게시물 쓰기
	public boolean write() {
		try {
			String sql = "";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			int count = ps.executeUpdate();
			if( count == 1 ) { return true; }
		}catch( SQLException e ) { System.out.println(e); }
		return false;
	} // f end
	
//	2. 전체 게시물 조회
	public boolean findAll() {
		try {
			String sql = "";
			PreparedStatement ps = conn.prepareStatement(sql);
				
			ResultSet rs = ps.executeQuery();
			
		}catch( SQLException e ) { System.out.println(e); }	
		return false;
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
