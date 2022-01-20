package com.javaEdu.myapp.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaEdu.myapp.board.model.UserVO;
import com.javaEdu.myapp.board.service.IUserService;

@Controller
public class UserController{
	//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	IUserService userService;
	
	
	//01.로그인 화면
	@RequestMapping("/user/login.do")
	public String login() {
		return "user/login";
	}
	
//	//02.로그인 처리
//	@RequestMapping("/user/logincheck.do")
//	public ModelAndView loginCheck(@ModelAttribute UserVO user, HttpSession session) {
//		boolean result = userService.loginCheck(user, session);
//	}
//작성중...
	
	//회원목록
	@RequestMapping(value= "/user/list")
	public String getAllUser(Model model) {
		List<UserVO> userList = userService.getUserList();
		model.addAttribute("userList",userList);
		return "user/list";
	}
	
	@RequestMapping(value="/board/{userId}")
	public String getUserInfo(@PathVariable String userid, Model model) {
		UserVO user = userService.getUserInfo(userid);
		model.addAttribute("user", user);
		return "board/view";
	}
	
	@RequestMapping(value="/board/delete", method=RequestMethod.GET)
	public String deleteUser(String userid, Model model) {
		model.addAttribute("user", userService.getUserInfo(userid));
		return "board/deleteform";
	}
	
	@RequestMapping(value="/board/delete", method=RequestMethod.POST)
	public String deleteUser(String userid,String useremail, Model model) {
		userService.deleteUser(userid, useremail);
		return "redirect:/board";
	}
	
	@ExceptionHandler({RuntimeException.class})
	public ModelAndView runtimeException(HttpServletRequest request, Exception ex) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("url",request.getRequestURI());
		mav.addObject("exception", ex);
		mav.setViewName("error/runtime");
		return mav;
	}
}
