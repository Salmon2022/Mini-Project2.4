package com.javaEdu.myapp.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javaEdu.myapp.user.model.CorrelAnalysisVO;
import com.javaEdu.myapp.user.service.ICorrelAnalysisService;
import com.javaEdu.myapp.user.service.ITimeserisAnalysisService;

@Controller
public class CorrelAnalysisController {
//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(CorrelAnalysisController.class);

	@Autowired
	ICorrelAnalysisService correlAnalysisService;

	@RequestMapping("service2-2")
	public String service2_2(@RequestParam(value="analysis_year", defaultValue="2020")int analysis_year,Model model) {
	 List<CorrelAnalysisVO> correlList = correlAnalysisService.getCorrel(analysis_year);
	 model.addAttribute("correlList", correlList);
	 model.addAttribute("analysis_year",analysis_year);
	 
	return "service/service2-2";
	}
	
	@ExceptionHandler({ RuntimeException.class })
	public ModelAndView runtimeException(HttpServletRequest request, Exception ex) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("url", request.getRequestURI());
		mav.addObject("exception", ex);
		mav.setViewName("error/runtime");
		return mav;
	}
	
}
