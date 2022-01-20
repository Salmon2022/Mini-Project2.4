package com.javaEdu.myapp.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.javaEdu.myapp.board.model.BoardVO;

@Repository
public class BoardRepository implements IBoardRepository{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class BoardMapper implements RowMapper<BoardVO>{
		
		@Override
		public BoardVO mapRow(ResultSet rs, int count) throws SQLException{
			BoardVO board = new BoardVO();
			board.setBoard_id(rs.getInt("board_id"));
			board.setBoard_num(rs.getInt("board_num"));
			board.setBoard_title(rs.getString("board_title"));
			board.setBoard_contents(rs.getString("board_contents"));
			board.setBoard_comments(rs.getString("board_comments"));
			board.setBoard_writer(rs.getString("board_writer"));
			board.setBoard_date(rs.getString("board_date"));
			board.setBoard_hits(rs.getInt("board_hits"));
			return board;
		}
		
		
	}
	
	@Override
	public List<BoardVO> getBoardList(){
		String sql = "select * from board";
		return jdbcTemplate.query(sql, new RowMapper<BoardVO>() {
			@Override
			public BoardVO mapRow(ResultSet rs, int count) throws SQLException{
				BoardVO board = new BoardVO();
				board.setBoard_id(rs.getInt("board_id"));
				board.setBoard_num(rs.getInt("board_num"));
				board.setBoard_title(rs.getString("board_title"));
				board.setBoard_comments(rs.getString("board_comments"));
				board.setBoard_contents(rs.getString("board_contents"));
				board.setBoard_writer(rs.getString("board_writer"));
				board.setBoard_date(rs.getString("board_date"));
				board.setBoard_hits(rs.getInt("board_hits"));
			return board;
			}});
		
	}

	@Override
	public int insertBoard(BoardVO board) {
		String sql = "insert into board (board_num, board_title, board_contents, board_writer, board_date, board_hits)"
				+"values (board_seq.nextval,?,?,?,sysdate,?)";
		return jdbcTemplate.update(sql, board.getBoard_title(), board.getBoard_contents(), board.getBoard_writer(), board.getBoard_hits());
		
	}
	
	@Override
	public BoardVO readBoard(int boardnum) {
		String sql ="select * from board where board_num=?";
		return jdbcTemplate.queryForObject(sql, new BoardMapper(), boardnum);
	}
	
	@Override
	public int updateBoard(BoardVO board) {
		String sql = "update board set board_title=?, board_contents=?, board_writer=?, board_date=?, board_hits=?"
				+"where board_num=?";
		return jdbcTemplate.update(sql,
				board.getBoard_title(),
				board.getBoard_contents(),
				board.getBoard_writer(),
				board.getBoard_date(),
				board.getBoard_hits());
				
	}
	
	@Override
	public int deleteBoard(int boardnum) {
		String sql="delete board where board_num=?";
		return jdbcTemplate.update(sql, boardnum);
		
	}
	
	@Override
	public int increaseViewcnt(int boardnum) {
		String sql="update board set board_hits=board_hits+1 where board_num=?";
		return jdbcTemplate.update(sql, boardnum);
	}
	
	@Override
	public int commentBoard(String comments, int boardnum) {
		String sql="update board set board_comments=? where board_num=?";
		return jdbcTemplate.update(sql,comments, boardnum);
	}
	
} 