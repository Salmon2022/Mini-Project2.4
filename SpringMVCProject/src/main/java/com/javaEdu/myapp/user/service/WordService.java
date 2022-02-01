package com.javaEdu.myapp.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaEdu.myapp.user.dao.IWordRepository;
import com.javaEdu.myapp.user.model.WordVO;

@Service
public class WordService implements IWordService {

	@Autowired
	IWordRepository wordRepository;
	

	
	@Override
	public List<WordVO> getcntWordList(int word_no){
		return wordRepository.getcntWordList(word_no);
	}
	
}
