package com.javaEdu.myapp.user.dao;

import java.util.List;

import com.javaEdu.myapp.user.model.WordVO;

public interface IWordRepository {

	


	List<WordVO> getcntWordList(int word_no);

	
}
