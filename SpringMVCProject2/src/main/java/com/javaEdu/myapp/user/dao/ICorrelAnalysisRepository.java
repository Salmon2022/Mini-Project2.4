package com.javaEdu.myapp.user.dao;

import java.util.List;

import com.javaEdu.myapp.user.model.CorrelAnalysisVO;

public interface ICorrelAnalysisRepository {


	List<CorrelAnalysisVO> getCorrel(int analysis_year);
}
