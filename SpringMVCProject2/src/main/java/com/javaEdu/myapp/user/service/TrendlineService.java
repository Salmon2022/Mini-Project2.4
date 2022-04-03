package com.javaEdu.myapp.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaEdu.myapp.user.dao.ITrendlineRepository;
import com.javaEdu.myapp.user.model.TrendlineVO;

@Service
public class TrendlineService implements ITrendlineService {

	@Autowired
	ITrendlineRepository trendlineRepository;
	
	@Override
	public List<TrendlineVO> getTrendline(int trend_year){
		
	return trendlineRepository.getTrendline(trend_year);
	}
}
