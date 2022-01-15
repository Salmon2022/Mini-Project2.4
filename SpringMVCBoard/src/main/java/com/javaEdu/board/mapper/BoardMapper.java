package com.javaEdu.board.mapper;

import java.util.List;

import com.javaEdu.board.vo.BoardVO;
import com.webjjang.util.PageObject;

public interface BoardMapper {
	//게시판 리스트
	public List<BoardVO> list(PageObject pageObject);
	//전체 데이터를 가져오는 메서드
	public Integer getCount();
}
