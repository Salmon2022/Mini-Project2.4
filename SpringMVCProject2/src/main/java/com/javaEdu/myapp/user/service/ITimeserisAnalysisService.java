package com.javaEdu.myapp.user.service;

import java.util.List;

import com.javaEdu.myapp.user.model.TimeserisAnalysisVO;

public interface ITimeserisAnalysisService {

	List<TimeserisAnalysisVO> getTimeseris(int analysis_year);
}
