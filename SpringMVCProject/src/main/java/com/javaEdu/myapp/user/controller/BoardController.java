package com.javaEdu.myapp.user.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javaEdu.myapp.user.model.BoardVO;
import com.javaEdu.myapp.user.service.BoardService;
import com.javaEdu.myapp.user.service.IBoardService;
import com.javaEdu.myapp.user.controller.UserController;


@Controller
public class BoardController {
 //로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	@Autowired
	IBoardService boardService;
	
	
//	//공지사항 목록(삭제)
//	@RequestMapping(value= "/board/list")
//	public String getAllboard(Model model) {
//		List<BoardVO> boardList = boardService.getBoardList1();
//		model.addAttribute("boardList",boardList);
//		return "board/list";
//	}
	
//공지사항 목록
	@RequestMapping("noticeboard")
	public String customercenter(Model model) {
		List<BoardVO> boardList = boardService.getBoardList1();
		model.addAttribute("boardList",boardList);
		return "board/noticeboard";
	}
	
	//공지사항 상세보기 1,2,3번
	@RequestMapping("board_num=1")
	public String boardview1(Model model) {
		List<BoardVO> boardList = boardService.getBoardList1();
		model.addAttribute("boardList",boardList);
		return "board/noticeboard-comment";
	}
	
	@RequestMapping("board_num=2")
	public String boardview2(Model model) {
		List<BoardVO> boardList = boardService.getBoardList1();
		model.addAttribute("boardList",boardList);
		return "board/noticeboard-comment";
	}
	
	@RequestMapping("board_num=3")
	public String boardview3(Model model) {
		List<BoardVO> boardList = boardService.getBoardList1();
		model.addAttribute("boardList",boardList);
		return "board/noticeboard-comment";
	}
	
	
	
	//1:1문의사항 목록
	@RequestMapping("q&aboard")
	public String getAllqnaboard(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard";
	}
	//1:1문의 게시글 확인 1,2,3,4번
	@RequestMapping("q&aboard_num=1")
	public String qnaboardview1(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard-view";
	}
	@RequestMapping("q&aboard_num=2")
	public String qnaboardview2(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard-view";
	}
	@RequestMapping("q&aboard_num=3")
	public String qnaboardview3(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard-view";
	}

	@RequestMapping("q&aboard_num=4")
	public String qnaboardview4(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard-view";
	}
	//댓글달기(미구현)
	@RequestMapping("q&aboard-view")
	public String qnaboardview(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard-view";
	}
  
	//문의글 글보기
	@RequestMapping("q&aboard-revision=1")
	public String updateview1(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard-revision";
	}
	@RequestMapping("q&aboard-revision=2")
	public String updateview2(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard-revision";
	}
	@RequestMapping("q&aboard-revision=3")
	public String updateview3(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard-revision";
	}
	@RequestMapping("q&aboard-revision=4")
	public String updateview4(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard-revision";
	}
	
	//문의글 수정하기
	//폼에서 입력한 내용들은 @ModelAttribute BoardVO board로 전달됨
	@RequestMapping("update.do")
	public String update(@ModelAttribute BoardVO board, Model model) {
		System.out.println(board);
		boardService.updateBoard(board);
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard";
	}
	
	//1:1문의사항 삭제
	@RequestMapping("delete.do")
	public String delete(@ModelAttribute BoardVO board, Model model) {
		boardService.deleteBoard(board);
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
		return "board/q&aboard";
	}
	
	//1:1문의사항 글쓰기페이지 이동
	@RequestMapping("q&aboard-write")
	public String write() {
		return "board/q&aboard-write";
	}
	
	//1:1문의사항 글 등록하기
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute BoardVO board) {
	System.out.println(board);
		boardService.insertBoard(board);
		return "board/q&aboard-write";
	}
	
	//조회수 증가
	@RequestMapping("hitsupdate.do")
	public String updatehits(@ModelAttribute BoardVO board, Model model) {
		System.out.println(board);
		boardService.updateBoardhits(board);
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList",boardList);
	return "board/q&aboard-revision";
	}
	
	@ExceptionHandler({RuntimeException.class})
	public ModelAndView runtimeException(HttpServletRequest request, Exception ex) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("url",request.getRequestURI());
		mav.addObject("exception", ex);
		mav.setViewName("error/runtime");
		return mav;
	}
	
	
	
}