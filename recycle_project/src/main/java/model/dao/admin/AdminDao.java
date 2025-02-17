package model.dao.admin;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import lombok.Getter;
import lombok.NoArgsConstructor;
import model.dao.Dao;
import model.dto.admin.AdminDto;

@NoArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public class AdminDao extends Dao {
	@Getter
	private static AdminDao instance = new AdminDao();

	public boolean signup(AdminDto adminDto) {
		try {
			String sql = "insert into admin(adid,adpwd,adname,adphone,ademail,adnickname) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, adminDto.getAdid());
			ps.setString(2, adminDto.getAdpwd());
			ps.setString(3, adminDto.getAdname());
			ps.setString(4, adminDto.getAdphone());
			ps.setString(5, adminDto.getAdemail());
			ps.setString(6, adminDto.getAdnickname());
			int count = ps.executeUpdate();

			if (count == 1)
				return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	public ArrayList<AdminDto> signupcheck() {
		ArrayList<AdminDto> list = new ArrayList<AdminDto>();
		try {
			String sql = "select * from admin";
			PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				AdminDto adminDto = new AdminDto();
				adminDto.setAdemail(rs.getString("ademail"));
				adminDto.setAdid(rs.getString("adid"));
				adminDto.setAdphone(rs.getString("adphone"));
				list.add(adminDto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public int login(AdminDto adminDto) {
		try {
			String sql = "select adno from admin where adid =? and adpwd = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, adminDto.getAdid());
			ps.setString(2, adminDto.getAdpwd());

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				int adno = rs.getInt("adno");
				return adno;
			}
		} catch (SQLException e) {

			System.out.println(e);
		}
		return 0;
	}

	public boolean update(AdminDto adminDto) {
		try {
			String sql = "update admin set adpwd = ? , adname = ? , adphone = ? , ademail = ? , adnickname = ? where adno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, adminDto.getAdpwd());
			ps.setString(2, adminDto.getAdname());
			ps.setString(3, adminDto.getAdphone());
			ps.setString(4, adminDto.getAdemail());
			ps.setString(5, adminDto.getAdnickname());
			ps.setInt(6, adminDto.getAdno());

			int count = ps.executeUpdate();
			if (count == 1) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return false;
	}

	public AdminDto myAdminInfo(int loginAdno) {
		try {
			String sql = "select * from admin where adno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, loginAdno);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				AdminDto adminDto = new AdminDto();
				adminDto.setAdno(rs.getInt("adno"));
				adminDto.setAdid(rs.getString("adid"));
				adminDto.setAdname(rs.getString("adname"));
				adminDto.setAdphone(rs.getString("adphone"));
				adminDto.setAdemail(rs.getString("ademail"));
				adminDto.setAdnickname(rs.getString("adnickname"));
				return adminDto;
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return null;
	}

	public boolean delete(int loginAdno) {
		try {
			String sql = "delete from admin where adno = ? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, loginAdno);
			int count = ps.executeUpdate();
			if (count == 1)
				return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

}
