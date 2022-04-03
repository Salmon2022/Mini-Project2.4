package com.javaEdu.myapp.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaEdu.myapp.user.model.TrendlineVO;
@Repository
public class TrendlineRepository implements ITrendlineRepository{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

private class TrendlineMapper implements RowMapper<TrendlineVO>{
@Override
public TrendlineVO mapRow(ResultSet rs, int count) throws SQLException{
	TrendlineVO trendline = new TrendlineVO();
	trendline.setTrend_year(rs.getInt("trend_year"));
	trendline.setX_value(rs.getInt("x_value"));
	trendline.setY_value(rs.getInt("y_value"));
	return trendline;
	}
}
	
	
	@Override
	public List<TrendlineVO> getTrendline(int trend_year){
		
		String sql = "select * from Service2_trendline_analysis where trend_year=?";
		return jdbcTemplate.query(sql, new RowMapper<TrendlineVO>() {
		
			@Override
			public TrendlineVO mapRow(ResultSet rs, int count) throws SQLException{
				TrendlineVO trendline = new TrendlineVO();
				trendline.setTrend_year(rs.getInt("trend_year"));
				trendline.setX_value(rs.getInt("x_value"));
				trendline.setY_value(rs.getInt("y_value"));
				return trendline;
			}
			
		}, trend_year);
	}
}
