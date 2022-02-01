
package com.javaEdu.myapp.user.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.javaEdu.myapp.user.model.BoardVO;

public interface IBoardService {
	
	void insertBoard(BoardVO board);
	BoardVO readBoard(int boardid);
	void updateBoard(BoardVO board);
	void deleteBoard(BoardVO board);
	List<BoardVO> getBoardList1();
	List<BoardVO> getBoardList2();
	void commentBoard(String comments, int boardnum);
	void increaseViewcnt(int boardnum, HttpSession session);
	void updateBoardhits(int boardid);
}
