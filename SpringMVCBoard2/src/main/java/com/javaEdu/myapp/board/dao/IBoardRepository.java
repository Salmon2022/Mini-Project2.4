package com.javaEdu.myapp.board.dao;

import java.util.List;

import com.javaEdu.myapp.board.model.BoardVO;

public interface IBoardRepository {

	
	int insertBoard(BoardVO board);
	BoardVO readBoard(int boardnum);
	int updateBoard(BoardVO board);
	int deleteBoard(int boardnum);
	List<BoardVO> getBoardList();
	int increaseViewcnt(int boardnum);
	int commentBoard(String comments, int boardnum);
}