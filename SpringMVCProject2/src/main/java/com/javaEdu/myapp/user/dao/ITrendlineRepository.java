package com.javaEdu.myapp.user.dao;

import java.util.List;

import com.javaEdu.myapp.user.model.TrendlineVO;

public interface ITrendlineRepository {
	List<TrendlineVO> getTrendline(int trend_year);
}
