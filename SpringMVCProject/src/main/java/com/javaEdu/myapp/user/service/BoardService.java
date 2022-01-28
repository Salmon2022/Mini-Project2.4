package com.javaEdu.myapp.user.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaEdu.myapp.user.dao.IBoardRepository;
import com.javaEdu.myapp.user.model.BoardVO;

@Service
public class BoardService implements IBoardService{

	@Autowired
	IBoardRepository boardRepository;
	
	
	@Override
	public void insertBoard(BoardVO board) {
		boardRepository.insertBoard(board);
	}
	@Override
	public BoardVO readBoard(int boardnum) {
		return boardRepository.readBoard(boardnum);
		
	}
	@Override
	public void updateBoard(BoardVO board) {
		boardRepository.updateBoard(board);
	}
	
	@Override
	public void updateBoardhits(BoardVO board) {
		boardRepository.updateBoardhits(board);
	}
	
	@Override
	public void deleteBoard(BoardVO board) {
		boardRepository.deleteBoard(board);
	}
	
	@Override
	public List<BoardVO> getBoardList1(){
		return boardRepository.getBoardList1();
	}
	
	@Override
	public List<BoardVO> getBoardList2(){
		return boardRepository.getBoardList2();
	}
	
	@Override
	public void commentBoard(String comments , int boardnum) {
		boardRepository.commentBoard(comments, boardnum);
	}
	
	@Override 
	public void increaseViewcnt(int boardnum, HttpSession session) {
		long update_time = 0;
		//세션에 저장된 조회시간 검색
		//최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행 x
		if(session.getAttribute("update_time_"+boardnum)!= null) {
			//세션에서 읽어오기
			update_time = (Long)session.getAttribute("update_time_"+boardnum);
		}
		//시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		//일정시간이 경과후 조회수 증가 처리(24시간)
		//시스템 현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간) 
		if(current_time - update_time > 5*1000) {
			boardRepository.increaseViewcnt(boardnum);
			//세션에 시간을 저장: "update_time_"+boardnum는 다른 변수와 중복되지 않게 명명한 것
			session.setAttribute("update_time_"+boardnum, current_time);
		}
	}
	
}
