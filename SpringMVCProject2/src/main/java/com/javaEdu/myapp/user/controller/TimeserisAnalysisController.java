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

import com.javaEdu.myapp.user.model.TimeserisAnalysisVO;
import com.javaEdu.myapp.user.service.ITimeserisAnalysisService;

@Controller
public class TimeserisAnalysisController {
//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(TimeserisAnalysisController.class);

	@Autowired
	ITimeserisAnalysisService timeserisAnalysisService;
	
	@RequestMapping("service2-1")
	public String service2_1(@RequestParam(value="analysis_year", defaultValue="2019") int analysis_year,Model model) {
		List<TimeserisAnalysisVO> timeSerisList = timeserisAnalysisService.getTimeseris(analysis_year);
	
		model.addAttribute("timeSerisList", timeSerisList);
		model.addAttribute("analysis_year", analysis_year);
		return "service/service2-1";
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
