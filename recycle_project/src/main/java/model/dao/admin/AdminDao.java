package model.dao.admin;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.admin.AdminDto;

@NoArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public class AdminDao extends Dao{
	@Getter
	private static AdminDao instance = new AdminDao();
	public boolean signup(AdminDto adminDto) {
		try {
			String sql ="insert into member(aid,apwd,aname,aphone,aemail) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, adminDto.getAid());
			ps.setString(2,adminDto.getApwd());
			ps.setString(3,adminDto.getAname());
			ps.setString(4, adminDto.getAphone());
			ps.setString(5,adminDto.getAemail());
			
			int count = ps.executeUpdate();
			
			if (count == 1)
				return true;
		}catch(Exception e) {
			System.out.println(e);
		}
		return false;
	}
	public int login(AdminDto adminDto) {
		try {
			String sql = "select ano from admin where aid =? and apwd = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, adminDto.getAid());
			ps.setString(2, adminDto.getApwd());
			
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int ano = rs.getInt("ano");
				return ano;
			}
		}catch(SQLException e) {
			
			System.out.println(e);
		}
		return 0;
	}
	public boolean update(AdminDto adminDto) {
		// TODO Auto-generated method stub
		return false;
	}
	public AdminDto myAdminInfo(int loginAno) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	


	
}
