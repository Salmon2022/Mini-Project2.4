package com.javaEdu.myapp.board.service;

import java.util.List;

import com.javaEdu.myapp.board.model.UserVO;

public interface IUserService {

	int getUserCount();
	List<UserVO> getUserList();
	UserVO getUserInfo(String userid);
	void updateUser(UserVO user);
	void insertUser(UserVO user);
	void deleteUser(String userid, String userpw);
}
