package com.javaEdu.myapp.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaEdu.myapp.user.dao.ICorrelAnalysisRepository;
import com.javaEdu.myapp.user.model.CorrelAnalysisVO;

@Service
public class CorrelAnalysisService implements ICorrelAnalysisService {

	@Autowired
	ICorrelAnalysisRepository correlAnalysisRepository;
	
	@Override
	public List<CorrelAnalysisVO> getCorrel(int analysis_year){
		return correlAnalysisRepository.getCorrel(analysis_year);
	}
}
