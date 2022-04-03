package com.javaEdu.myapp.user.dao;

import java.util.List;

import com.javaEdu.myapp.user.model.TimeserisAnalysisVO;
import com.javaEdu.myapp.user.model.TrendlineVO;

public interface ITimeserisAnalysisRepository {

	List<TimeserisAnalysisVO> getTimeseris(int analysis_year);

}
