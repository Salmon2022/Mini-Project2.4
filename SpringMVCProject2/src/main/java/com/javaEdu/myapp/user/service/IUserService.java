package com.javaEdu.myapp.user.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.javaEdu.myapp.user.model.UserVO;

public interface IUserService {

	int getUserCount();
	List<UserVO> getUserList();
	UserVO getUserInfo(String userid);
	UserVO getUserInfo1(UserVO user);
	UserVO getUserInfo2(UserVO user);
	void updateUser(UserVO user);
	void insertUser(UserVO user);
	void deleteUser(UserVO user);
	int loginCheck(UserVO user, HttpSession session);
	UserVO viewUser(UserVO user);
	void logout(HttpSession session);
	
	
//	boolean loginCheck(UserVO user, HttpSession session);
//	UserVO viewUser(UserVO user);
//	void logout(HttpSession session);
}