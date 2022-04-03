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
import com.javaEdu.myapp.user.model.TrendlineVO;
import com.javaEdu.myapp.user.service.ITrendlineService;

@Controller
public class TrendlineController {
//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(TrendlineController.class);

	@Autowired
	ITrendlineService trendlineService;
	
	@RequestMapping("service2-3")
	public String service2_3(@RequestParam(value="trend_year", defaultValue="2019") int trend_year,Model model) {
		List<TrendlineVO> trendlineList = trendlineService.getTrendline(trend_year);
	
		model.addAttribute("trendlineList", trendlineList);
		model.addAttribute("trend_year", trend_year);
		return "service/service2-3";
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
