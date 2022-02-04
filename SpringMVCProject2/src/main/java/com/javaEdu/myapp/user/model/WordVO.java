package com.javaEdu.myapp.user.model;

public class WordVO {
private int word_no;
private int word_cnt;
public int getWord_cnt() {
	return word_cnt;
}
public void setWord_cnt(int word_cnt) {
	this.word_cnt = word_cnt;
}
private String word_list;
public int getWord_no() {
	return word_no;
}
public void setWord_no(int word_no) {
	this.word_no = word_no;
}
public String getWord_list() {
	return word_list;
}
public void setWord_list(String word_list) {
	this.word_list = word_list;
}
@Override
public String toString() {
	return "WordVO [word_no=" + word_no + ", word_weight=" + word_cnt + ", word_list=" + word_list + "]";
}

}