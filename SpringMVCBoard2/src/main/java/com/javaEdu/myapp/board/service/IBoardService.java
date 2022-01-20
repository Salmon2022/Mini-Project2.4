
package com.javaEdu.myapp.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.javaEdu.myapp.board.model.BoardVO;

public interface IBoardService {
	
	void insertBoard(BoardVO board);
	BoardVO readBoard(int boardnum);
	void updateBoard(BoardVO board);
	void deleteBoard(int boardnum);
	List<BoardVO> getBoardList();
	void commentBoard(String comments, int boardnum);
	void increaseViewcnt(int boardnum, HttpSession session);
}
