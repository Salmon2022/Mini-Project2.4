package com.javaEdu.myapp.user.service;

import java.util.List;

import com.javaEdu.myapp.user.model.TrendlineVO;

public interface ITrendlineService {

	List<TrendlineVO> getTrendline(int trend_year);
}
