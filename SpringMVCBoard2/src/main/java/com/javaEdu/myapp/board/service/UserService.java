package com.javaEdu.myapp.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaEdu.myapp.board.dao.IUserRepository;
import com.javaEdu.myapp.board.model.UserVO;

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
	 public void updateUser(UserVO user) {
		 userRepository.updateUser(user);
		 
	 }
	 
	 @Override
	 public void insertUser(UserVO user) {
		 userRepository.insertUser(user);
		 
	 }
	 
	 @Override
	 public void deleteUser(String userid, String userpw) {
		 userRepository.deleteUser(userid, userpw);
	 }
}

