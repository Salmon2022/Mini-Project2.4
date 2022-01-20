package com.javaEdu.myapp.board.dao;

import java.util.List;

import com.javaEdu.myapp.board.model.UserVO;

public interface IUserRepository {

	int getUserCount();
	List<UserVO> getUserList();
	UserVO getUserInfo(String userid);
	void updateUser(UserVO user);
	void insertUser(UserVO user);
	void deleteUser(String userid, String userpw);

}
