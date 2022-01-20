package com.javaEdu.myapp.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaEdu.myapp.board.model.UserVO;

@Repository
public class UserRepository implements IUserRepository {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class UserMapper implements RowMapper<UserVO>{
		
		@Override
		public UserVO mapRow(ResultSet rs, int count) throws SQLException {
			UserVO user = new UserVO();
			user.setUser_id(rs.getString("user_id"));
			user.setUser_password(rs.getString("user_password"));
			user.setUser_name(rs.getString("user_name"));
			user.setUser_email(rs.getString("user_email"));
			user.setUser_phone(rs.getString("user_phone"));
			user.setUser_gender(rs.getString("user_gender"));
			user.setUser_birthdate(rs.getString("user_birthdate"));
			return user;
			
		}
	}
	
	@Override
	public int getUserCount() {
		String sql = "select count(*) from pinfo";
		return jdbcTemplate.queryForObject(sql,Integer.class);

	}
	
	@Override
	public List<UserVO> getUserList(){
		String sql = "select * from pinfo";
		return jdbcTemplate.query(sql, new RowMapper<UserVO>() {
			
			@Override
			public UserVO mapRow(ResultSet rs, int count) throws SQLException{
				UserVO user = new UserVO();
				user.setUser_id(rs.getString("user_id"));
				user.setUser_password(rs.getString("user_password"));
				user.setUser_name(rs.getString("user_name"));
				user.setUser_email(rs.getString("user_email"));
				user.setUser_phone(rs.getString("user_phone"));
				user.setUser_gender(rs.getString("user_gender"));
				user.setUser_birthdate(rs.getString("user_birthdate"));
				return user;
			}
			
		});
		
	}
	
	@Override
	public UserVO getUserInfo(String userid) {
		String sql = "select user_id, user_password, user_name, user_email, user_phone, user_gender, user_birthdate"
				+"from pinfo where user_id=?";
		
		return jdbcTemplate.queryForObject(sql, new UserMapper(), userid);
		
	}
	
	@Override
	public void updateUser(UserVO user) {
		String sql = "update pinfo"
				+"user_password=?, user_name=?, "
				+"user_email=?, user_phone=?, user_gender=?, user_birthdate=? "
				+"where user_id=?" ;
		jdbcTemplate.update(sql, user.getUser_password(),user.getUser_name(),
				user.getUser_email(), user.getUser_phone(),user.getUser_gender(), user.getUser_birthdate());
		
	}
	
	
	@Override
	public void insertUser(UserVO user) {
		String sql = "insert into pinfo (user_id, user_password, user_name, user_email, user_phone, user_gender, user_birthdate)"
				+ "values(?,?,?,?,?,?,?)";
		jdbcTemplate.batchUpdate(sql,
				user.getUser_id(),
				user.getUser_password(),
				user.getUser_name(),
				user.getUser_email(),
				user.getUser_phone(),
				user.getUser_gender(),
				user.getUser_birthdate());
	}
	
	@Override
	public void deleteUser(String userid, String userpw) {
		String sql = "delete form pinfo where user_id=? and user_password=?";
		jdbcTemplate.update(sql, userid, userpw);
	}
}
