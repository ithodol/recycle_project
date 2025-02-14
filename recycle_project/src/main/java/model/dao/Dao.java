package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dao {
	protected Connection conn;		// DB와 연동 결과를 조작하는 인터페이스 
	
	private String dburl = "jdbc:mysql://localhost:3306/recycleproject"; // 연동할 DB 서버의 URL
	private String dbuser = "root"; // 연동할 DB 서버의 계정명
	private String dbpwd = "1234"; 	// 연동할 DB 서버의 비밀번호 
	
	public Dao() {
		try {
			// 1. JDBC 클래스 드라이버 로드 , Class.forName() * 예외처리 try{}catch(){}
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. 설정한 경로/계정/비밀번호 로 DB 서버 연동 시도 하고 결과를 ( 구현체 ) 반환 
			conn = DriverManager.getConnection( dburl , dbuser , dbpwd );
		}catch (Exception e) {
			System.out.println("[DB 연동 실패]" + e );
		}
	}
	
//	1. 조회할 테이블의 전체 게시물 개수 조회
	public int getTotalSize( String str ) {
		try {
			String sql = "select count(*) from " + str;
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if( rs.next() ) { return rs.getInt(1); }
		}catch( SQLException e ) { System.out.println(e); }
		return 0;
	} // f end
	
}
