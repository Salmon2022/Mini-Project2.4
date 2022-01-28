package com.javaEdu.myapp.user.controller;

import java.util.List;
import java.util.Locale;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javaEdu.myapp.user.model.BoardVO;
import com.javaEdu.myapp.user.model.UserVO;
import com.javaEdu.myapp.user.service.IBoardService;
import com.javaEdu.myapp.user.service.IUserService;

@Controller
public class UserController{
	//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	IUserService userService;
	
  
	@RequestMapping("login.do")
	public String login() {
		return "user/login";
	}
	
	@RequestMapping("loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute UserVO user, HttpSession session) {
		System.out.println(user);
		boolean result = userService.loginCheck(user, session);
		ModelAndView mav = new ModelAndView();
		if (result == true) {
			mav.setViewName("user/usermain_afterlogin");
			mav.addObject("msg", "success");

		} else {
			mav.setViewName("user/Alogin3");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	
 
	@RequestMapping("Alogin3")
	public String login2() {
		return "user/Alogin3";
	}

	
	
	@RequestMapping("loginCheck2.do")
	public ModelAndView loginCheck2(@ModelAttribute UserVO user, HttpSession session) {
		System.out.println(user);
		boolean result = userService.loginCheck(user, session);
		ModelAndView mav = new ModelAndView();
		if (result == true) {
			mav.setViewName("user/usermain_afterlogin");
			mav.addObject("msg", "success");

		} else {
			mav.setViewName("user/Alogin3");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	@RequestMapping("signin.do")
	public String siginin(@ModelAttribute UserVO user) {
		System.out.println(user);
		userService.insertUser(user);
		
		return "user/Asign_up6";
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		userService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/Alogin3");
		mav.addObject("msg", "logout");
		return mav;
	}
	
	@RequestMapping("usermain_afterlogin.do")
	public String home() {
			return "user/usermain_afterlogin";
	}
	
	@RequestMapping("usermain_beforelogin")
	public String home1() {
			return "user/usermain_beforelogin";
	}
	
	@RequestMapping("userinfo_change")
	public String userinfo() {
			return "user/userinfo_change";
	}
	
	@RequestMapping("user/update.do")
	public String userinfochage(@ModelAttribute UserVO user) {
		 userService.updateUser(user);;
			return "user/userinfo_change";
	}
	
	@RequestMapping("user/delete.do")
	public String userdelete(@ModelAttribute UserVO user) {
		 userService.deleteUser(user);;
			return "user/Alogin3";
	}
	
	@RequestMapping("Asign_up6")
	public String usersignin(Model model) {
		List<UserVO> userList = userService.getUserList();
		model.addAttribute("userList",userList);
			return "user/Asign_up6";
	}
	
	@RequestMapping("Asign_up6-1")
	public String terms() {
			return "user/Asign_up6-1";
	}
	
	
	

	
	@RequestMapping("Afinding_id5")
	public String findid() {
			return "user/Afinding_id5";
	}
	
	@RequestMapping("findid.do")
	public String idcheck(@ModelAttribute UserVO user, Model model) {	
		UserVO userinfo = userService.getUserInfo2(user);
		if(userinfo==null) {
			model.addAttribute("check",1);
			
		}else {
			model.addAttribute("check",0);
			model.addAttribute("id",userinfo.getUser_id());
		}	
		System.out.println(userinfo);
		return "user/Afinding_id5";
	}
	
	@RequestMapping("Afinding_pw3")
	public String findpw() {
			return "user/Afinding_pw3";
	}
	
	@RequestMapping("findpw.do")
	public String findpw(@ModelAttribute UserVO user, Model model) {
		UserVO userinfo = userService.getUserInfo2(user);
		if(userinfo==null) {
			model.addAttribute("check",1);
			
		}else {
			model.addAttribute("check",0);
			model.addAttribute("pw",userinfo.getUser_password());
		}	
		System.out.println(userinfo);
		return "user/Afinding_pw3";
	}
	
	@RequestMapping("doublecheckid.do")
	public String doublecheckid(@ModelAttribute UserVO user, Model model) {
		UserVO userinfo = userService.getUserInfo1(user);
		if(userinfo==null) {
			model.addAttribute("check1",1);
			
		}else {
			model.addAttribute("check1",0);
		}	
		System.out.println(userinfo);
		
		return "user/Asign_up6";
	}
	
	@RequestMapping("doublecheckemail.do")
	public String doublecheckemail(@ModelAttribute  UserVO user, Model model) {
		UserVO userinfo = userService.getUserInfo2(user);
		if(userinfo==null) {
			model.addAttribute("check2",1);
			
		}else {
			model.addAttribute("check2",0);
		}	
		System.out.println(userinfo);
		
		return "user/Asign_up6";
	}
	
	
	//회원목록
	@RequestMapping(value= "/user/list")
	public String getAllUser(Model model) {
		List<UserVO> userList = userService.getUserList();
		model.addAttribute("userList",userList);
		return "user/list";
	}
	

	
	@RequestMapping(value="/user/{userId}")
	public String getUserInfo(@PathVariable String userid, Model model) {
		UserVO user = userService.getUserInfo(userid);
		model.addAttribute("user", user);
		return "user/view";
	}
	
	@RequestMapping(value="/user/delete", method=RequestMethod.GET)
	public String deleteUser(String userid, Model model) {
		model.addAttribute("user", userService.getUserInfo(userid));
		return "user/deleteform";
	}
	
	@RequestMapping(value="/user/delete", method=RequestMethod.POST)
	public String deleteUser(UserVO user, Model model) {
		userService.deleteUser(user);
		return "redirect:/user";
	}
	
	@ExceptionHandler({RuntimeException.class})
	public ModelAndView runtimeException(HttpServletRequest request, Exception ex) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("url",request.getRequestURI());
		mav.addObject("exception", ex);
		ex.printStackTrace();
		mav.setViewName("error/runtime");
		return mav;
	}
}
