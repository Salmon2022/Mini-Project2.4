package com.javaEdu.myapp.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaEdu.myapp.user.model.UserVO;
import com.javaEdu.myapp.user.model.WordVO;

@Repository
public class WordRepository implements IWordRepository {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
private class WordMapper implements RowMapper<WordVO>{
		
		@Override
		public WordVO mapRow(ResultSet rs, int count) throws SQLException {
			WordVO word = new WordVO();
			word.setWord_no(rs.getInt("word_no"));
			word.setWord_list(rs.getString("word_list"));
			return word;
			
		}
	}

@Override
public List<WordVO> getWordList(){
	String sql= "select * from wordlist1";
	return jdbcTemplate.query(sql, new RowMapper<WordVO>() {
		
		@Override
		public WordVO mapRow(ResultSet rs, int count) throws SQLException{
			WordVO word = new WordVO();
			word.setWord_no(rs.getInt("word_no"));
			word.setWord_list(rs.getString("word_list"));
			return word;
		}
	});
}


}
