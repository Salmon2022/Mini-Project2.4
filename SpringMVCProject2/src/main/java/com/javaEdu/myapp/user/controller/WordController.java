package com.javaEdu.myapp.user.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaEdu.myapp.user.model.UserVO;
import com.javaEdu.myapp.user.model.WordVO;
import com.javaEdu.myapp.user.service.IWordService;

@Controller
public class WordController {
//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(WordController.class);

	@Autowired
	IWordService wordService;

	@RequestMapping("service3")
	public String service3(@RequestParam(value="categoryId", defaultValue="1") int categoryid, Model model) {
		List<WordVO> wordList = wordService.getcntWordList(categoryid);
		model.addAttribute("wordList", wordList);
		model.addAttribute("categoryId", categoryid);
		return "service/service3";
	}

	@RequestMapping("service1")
	public String service1() {
		
		return "service/service1";
		
	}
	
	
}