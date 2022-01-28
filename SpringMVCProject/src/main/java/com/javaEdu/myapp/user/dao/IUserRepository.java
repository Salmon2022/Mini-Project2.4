package com.javaEdu.myapp.user.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.javaEdu.myapp.user.model.UserVO;

public interface IUserRepository {

	int getUserCount(); 
	List<UserVO> getUserList();
	UserVO getUserInfo(String userid);
	UserVO getUserInfo1(UserVO user);
	UserVO getUserInfo2(UserVO user);
	void updateUser(UserVO user);
	void insertUser(UserVO user);
	void deleteUser(UserVO user);
  
	boolean loginCheck(UserVO user);
	UserVO viewUser(UserVO user);
  void logout(HttpSession session);

}
