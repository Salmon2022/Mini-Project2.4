package com.javaEdu.myapp.user.dao;

import static org.springframework.test.web.client.match.MockRestRequestMatchers.queryParam;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaEdu.myapp.user.model.TimeserisAnalysisVO;
import com.javaEdu.myapp.user.model.TrendlineVO;


@Repository
public class TimeserisAnalysisRepository implements ITimeserisAnalysisRepository{

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class TimeserisAnalysisMapper implements RowMapper<TimeserisAnalysisVO> {

		@Override
		public TimeserisAnalysisVO mapRow(ResultSet rs, int count) throws SQLException {
			TimeserisAnalysisVO timeanalysis = new TimeserisAnalysisVO();
			timeanalysis.setAnalysis_year(rs.getInt("analysis_year"));
			timeanalysis.setGraph_type(rs.getString("graph_type"));
			timeanalysis.setTrading_amount(rs.getDouble("trading_amount"));
			timeanalysis.setTrading_month(rs.getString("trading_month"));
			return timeanalysis;

		}
		

		
	}
	
	
	@Override
	public List<TimeserisAnalysisVO> getTimeseris(int analysis_year) {
	
		String sql = "select * from Service2_timeseris_analysis where analysis_year=?";
		return jdbcTemplate.query(sql, new RowMapper<TimeserisAnalysisVO>() {
		
			@Override
			public TimeserisAnalysisVO mapRow(ResultSet rs, int count) throws SQLException{
				TimeserisAnalysisVO timeanalysis = new TimeserisAnalysisVO();
				timeanalysis.setAnalysis_year(rs.getInt("analysis_year"));
				timeanalysis.setGraph_type(rs.getString("graph_type"));
				timeanalysis.setTrading_amount(rs.getDouble("trading_amount"));
				timeanalysis.setTrading_month(rs.getString("trading_month"));				
				return timeanalysis;
			}		
			}, analysis_year);
		
	}
		
	
		
}

	

