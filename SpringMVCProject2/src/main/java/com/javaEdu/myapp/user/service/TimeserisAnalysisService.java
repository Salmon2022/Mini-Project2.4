package com.javaEdu.myapp.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaEdu.myapp.user.dao.ITimeserisAnalysisRepository;
import com.javaEdu.myapp.user.model.TimeserisAnalysisVO;

@Service
public class TimeserisAnalysisService implements ITimeserisAnalysisService{
	
	@Autowired
	ITimeserisAnalysisRepository timeserisAnalysisRepository;
	
	@Override
	public List<TimeserisAnalysisVO> getTimeseris(int analysis_year){

		return timeserisAnalysisRepository.getTimeseris(analysis_year);
	
	}
	 
}
