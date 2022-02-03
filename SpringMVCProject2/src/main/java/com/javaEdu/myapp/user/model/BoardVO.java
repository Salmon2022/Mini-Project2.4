package com.javaEdu.myapp.user.model;

import java.util.List;



public class BoardVO {

	private int board_id;
	private int board_type;
	private String board_title;
	private String board_comments;
	private String board_contents;
	private String board_writer;
	private String board_date;
	private int board_hits;
	
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public int getBoard_type() {
		return board_type;
	}
	public void setBoard_type(int board_type) {
		this.board_type = board_type;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_comments() {
		return board_comments;
	}
	public void setBoard_comments(String board_comments) {
		this.board_comments = board_comments;
	}
	public String getBoard_contents() {
		return board_contents;
	}
	public void setBoard_contents(String board_contents) {
		this.board_contents = board_contents;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public int getBoard_hits() {
		return board_hits;
	}
	public void setBoard_hits(int board_hits) {
		this.board_hits = board_hits;
	}
	
	@Override
	public String toString() {
		return "BoardVO [board_id=" + board_id + ", board_type=" + board_type + ", board_title=" + board_title
				+ ", board_comments=" + board_comments + ", board_contents=" + board_contents + ", board_writer=" + board_writer
				+ ", board_date=" + board_date + ", board_hits=" + board_hits + "]";
	}
	
	
	
	

	
}