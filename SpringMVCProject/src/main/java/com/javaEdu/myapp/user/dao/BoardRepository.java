package com.javaEdu.myapp.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.javaEdu.myapp.user.model.BoardVO;

@Repository
public class BoardRepository implements IBoardRepository{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private class BoardMapper implements RowMapper<BoardVO>{
		
		@Override
		public BoardVO mapRow(ResultSet rs, int count) throws SQLException{
			BoardVO board = new BoardVO();
			board.setBoard_id(rs.getInt("board_id"));
			board.setBoard_type(rs.getInt("board_type"));
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
	public List<BoardVO> getBoardList1(){
		String sql = "select * from board where board_type=1";
		return jdbcTemplate.query(sql, new RowMapper<BoardVO>() {
			@Override
			public BoardVO mapRow(ResultSet rs, int count) throws SQLException{
				BoardVO board = new BoardVO();
				board.setBoard_id(rs.getInt("board_id"));
				board.setBoard_type(rs.getInt("board_type"));
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
	public List<BoardVO> getBoardList2(){
		String sql = "select * from board where board_type=2";
		return jdbcTemplate.query(sql, new RowMapper<BoardVO>() {
			@Override
			public BoardVO mapRow(ResultSet rs, int count) throws SQLException{
				BoardVO board = new BoardVO();
				board.setBoard_id(rs.getInt("board_id"));
				board.setBoard_type(rs.getInt("board_type"));
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
		String sql = "insert into board(board_id, board_type, board_title, board_contents, board_writer, board_date, board_hits)"
				+"values(board_seq.nextval, ?, ?,?,?,sysdate,1)";
		return jdbcTemplate.update(sql, board.getBoard_type(), board.getBoard_title(), board.getBoard_contents(), board.getBoard_writer());
		
	}
	
	@Override
	public BoardVO readBoard(int boardid) {
		String sql ="select * from board where board_id=?";
		return jdbcTemplate.queryForObject(sql, new BoardMapper(), boardid);
	}
	
	@Override
	public int updateBoard(BoardVO board) {
		String sql = "update board set board_title=?, board_contents=?, board_writer=?, board_date=?, board_hits=?, board_type=?"
				+" where board_id=?";
		return jdbcTemplate.update(sql, 
				board.getBoard_title(),
				board.getBoard_contents(),
				board.getBoard_writer(),
				board.getBoard_date().substring(0, 10),
				board.getBoard_hits(),
				board.getBoard_type(),
				board.getBoard_id());
				
	}
	
	@Override
	public int updateBoardhits(int boardid) {
		String sql = "update board set board_hits=board_hits+1"
				+"where board_id=?";
		return jdbcTemplate.update(sql,
				boardid
			);
				
	}
	
	@Override
	public int deleteBoard(BoardVO board) {
		String sql="delete board where board_num=? and boar_id=?";
		return jdbcTemplate.update(sql, board.getBoard_type(), board.getBoard_id());
		
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