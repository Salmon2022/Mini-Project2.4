package com.javaEdu.myapp.user.service;

import java.util.List;

import com.javaEdu.myapp.user.model.CorrelAnalysisVO;

public interface ICorrelAnalysisService {
 List<CorrelAnalysisVO> getCorrel(int analysis_year);
}
