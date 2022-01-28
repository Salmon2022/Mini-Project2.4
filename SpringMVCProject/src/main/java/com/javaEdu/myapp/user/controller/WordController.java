package com.javaEdu.myapp.user.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaEdu.myapp.user.model.UserVO;
import com.javaEdu.myapp.user.model.WordVO;
import com.javaEdu.myapp.user.service.IWordService;

@Controller
public class WordController {
//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(WordController.class);

@Autowired
IWordService wordService;
	
@RequestMapping("service3-1")
public String usersignin(Model model) {
	List<WordVO> wordList = wordService.getWordList();
	model.addAttribute("wordList",wordList);

		return "service/service3-1";
}

}
