package com.javaEdu.myapp.user.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaEdu.myapp.user.model.UserVO;

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
		String sql = 
				"select user_id, user_password, user_name, user_email, user_phone, user_gender, user_birthdate "
				+ "from pinfo "
				+ "where user_id=?";
		return jdbcTemplate.queryForObject(sql, new UserMapper(), userid);
		
	}
	
	@Override
	public UserVO getUserInfo1(UserVO user) {
	try {
		String sql = 
				"select user_id, user_password, user_name, user_email, user_phone, user_gender, user_birthdate "
				+ "from pinfo "
				+ "where user_id=?";
		return jdbcTemplate.queryForObject(sql, new UserMapper(), user.getUser_id());
	}catch(EmptyResultDataAccessException e) {
		return null;
		}
	}
	
	@Override
	public UserVO getUserInfo2(UserVO user) {
	try {
		String sql = 
				"select user_id, user_password, user_name, user_email, user_phone, user_gender, user_birthdate "
				+ "from pinfo "
				+ "where user_email=? or user_phone=?";
		return jdbcTemplate.queryForObject(sql, new UserMapper(), user.getUser_email(),user.getUser_phone());
	}catch(EmptyResultDataAccessException e) {	
		return null;
		}
	}
	
	@Override
	public void updateUser(UserVO user) {
		String sql = "update pinfo set user_password=?, user_name=?, "
				+"user_email=?, user_phone=?, user_gender=?, user_birthdate=? "
				+"where user_id=?" ;
		jdbcTemplate.update(sql, user.getUser_password(),user.getUser_name(),
				user.getUser_email(), user.getUser_phone(),user.getUser_gender(), user.getUser_birthdate(), user.getUser_id());
		
	}
	
	
	@Override
	public void insertUser(UserVO user) {
		String sql = "insert into pinfo (user_id, user_password, user_name, user_email, user_phone, user_gender, user_birthdate) "
				+ "values(?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql,
				user.getUser_id(),
				user.getUser_password(),
				user.getUser_name(),
				user.getUser_email(),
				user.getUser_phone(),
				user.getUser_gender(),
				user.getUser_birthdate());
	}
	
	@Override
	public void deleteUser(UserVO user) {
		String sql = "delete pinfo where user_id=? and user_password=?";
		jdbcTemplate.update(sql, user.getUser_id(), user.getUser_password());
	}

	@Override
	public int loginCheck(UserVO user) {
		
		String user_id_from_client = user.getUser_id();
		List<UserVO> user_list_from_db = this.getUserList();
		for (int i =0; i<this.getUserList().size();i++) {
			if(user_list_from_db.get(i).getUser_id().equals(user.getUser_id())) {
				UserVO query_result_from_db = this.getUserInfo(user_id_from_client);
				String id_inside_uservo = query_result_from_db.getUser_id();
				String pw_inside_uservo = query_result_from_db.getUser_password();
				if(id_inside_uservo.equals("Master") && pw_inside_uservo.equals("master821")) {
					return 0;
				}else if(id_inside_uservo.equals(user.getUser_id()) && pw_inside_uservo.equals(user.getUser_password())) {	
					return 1;		
				} else if(!id_inside_uservo.equals(user.getUser_id()) && pw_inside_uservo.equals(user.getUser_password())) {
					return 2;
				} else if(id_inside_uservo.equals(user.getUser_id()) && !pw_inside_uservo.equals(user.getUser_password())) {
					return 3;
				} else if(!id_inside_uservo.equals(user.getUser_id()) && !pw_inside_uservo.equals(user.getUser_password())) {
					return 4;
				}
			}
		}
		return 4;
		
			
		}
	

	@Override
	public UserVO viewUser(UserVO user) {
		// TODO Auto-generated method stub
		return this.getUserInfo(user.getUser_id());
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		session.invalidate();
	}
	
	
	
	
	
	
}