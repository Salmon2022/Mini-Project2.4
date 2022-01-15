package com.javaEdu.board.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javaEdu.board.mapper.BoardMapper;
import com.webjjang.util.PageObject;
import java.util.List;
import com.javaEdu.board.vo.BoardVO;
@Service
public class BoardService {
	
	@Inject 
	private BoardMapper mapper;
	
	public List<BoardVO> list(PageObject pageObject){
		pageObject.setTotalRow(mapper.getCount());
		System.out.println("BoardService.list().pageObject:"+pageObject);
		return mapper.list(pageObject);
	}
	
}
