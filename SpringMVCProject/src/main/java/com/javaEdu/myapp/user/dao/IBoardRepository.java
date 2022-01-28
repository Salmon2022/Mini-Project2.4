package com.javaEdu.myapp.user.dao;

import java.util.List;

import com.javaEdu.myapp.user.model.BoardVO;

public interface IBoardRepository {

	
	int insertBoard(BoardVO board);
	BoardVO readBoard(int boardnum);
	int updateBoard(BoardVO board);
	int deleteBoard(BoardVO board);
	List<BoardVO> getBoardList1();
	List<BoardVO> getBoardList2();
	int increaseViewcnt(int boardnum);
	int commentBoard(String comments, int boardnum);
	int updateBoardhits(BoardVO board);
}