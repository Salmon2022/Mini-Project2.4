package com.javaEdu.myapp.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaEdu.myapp.user.model.CorrelAnalysisVO;

@Repository
public class CorrelAnalysisRepository implements ICorrelAnalysisRepository {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class CorrelAnalysisMapper implements RowMapper<CorrelAnalysisVO>{
		
		@Override
		public CorrelAnalysisVO mapRow(ResultSet rs, int count) throws SQLException{
			CorrelAnalysisVO correlanalysis = new CorrelAnalysisVO();
		correlanalysis.setAnalysis_year(rs.getInt("analysis_year"));
		correlanalysis.setCorrelation_pair(rs.getString("correlation_pair"));
		correlanalysis.setCorrelation(rs.getDouble("correlation"));
		return correlanalysis;
	
		}
	}
	
	@Override
	public List<CorrelAnalysisVO> getCorrel(int analysis_year){
		String sql = "select * from Service2_correl_analysis where analysis_year=?";
		return jdbcTemplate.query(sql, new RowMapper<CorrelAnalysisVO>() {
			
			@Override
			public CorrelAnalysisVO mapRow(ResultSet rs, int count) throws SQLException{
				CorrelAnalysisVO correlanalysis = new CorrelAnalysisVO();
				correlanalysis.setAnalysis_year(rs.getInt("analysis_year"));
				correlanalysis.setCorrelation_pair(rs.getString("correlation_pair"));
				correlanalysis.setCorrelation(rs.getDouble("correlation"));
				return correlanalysis;
			}
		}, analysis_year);
	}
}
