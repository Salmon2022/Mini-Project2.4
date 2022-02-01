package com.javaEdu.myapp.user.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaEdu.myapp.user.dao.IUserRepository;
import com.javaEdu.myapp.user.model.UserVO;

@Service
public class UserService implements IUserService {

	 @Autowired
	 IUserRepository userRepository;

	 
	 @Override
	 public int getUserCount() {
		 return userRepository.getUserCount();
		
	 }
	 
	 @Override
	 public List<UserVO> getUserList(){
		 return userRepository.getUserList();
		 
	 }
	 
	 @Override
	 public UserVO getUserInfo(String userid) {
		 return userRepository.getUserInfo(userid);
	 }
	 @Override
	 public UserVO getUserInfo1(UserVO user) {
		 return userRepository.getUserInfo1(user);
	 }
	 @Override
	 public UserVO getUserInfo2(UserVO user) {
		 return userRepository.getUserInfo2(user);
	 }
	 
	 @Override
	 public void updateUser(UserVO user) {
		 userRepository.updateUser(user);
		 
	 }
	 
	 @Override
	 public void insertUser(UserVO user) {
		 userRepository.insertUser(user);
		 
	 }
	 
	 @Override
	 public void deleteUser(UserVO user) {
		 userRepository.deleteUser(user);
	 }

	 //회원 로그인 체크
	 @Override
	 public int loginCheck(UserVO user, HttpSession session) {
		 int result = userRepository.loginCheck(user);
		 if(result==0){
			 UserVO user2 = viewUser(user);
			 
			 session.setAttribute("userId", user2.getUser_id());
			 session.setAttribute("userName", user2.getUser_name());
 		 
		 }else if (result==1) {
			 UserVO user2 = viewUser(user);
			 
			 session.setAttribute("userId", user2.getUser_id());
			 session.setAttribute("userName", user2.getUser_name());
			 
		 }
		 return result;
	 }
	 
	 //회원 로그인 정보
	 @Override
	 public UserVO viewUser(UserVO user) {
		 return userRepository.viewUser(user);
	 }

	 //회원 로그아웃
	 @Override
	 public void logout(HttpSession session) {
		 session.invalidate();
		 
	 }
}


