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
	// 로깅을 위한 변수
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
		model.addAttribute("boardList", boardList);	
		model.addAttribute("msg2", "admin");
		
		return "board/noticeboard";
	}

	// 공지사항 상세보기 1,2,3번
	@RequestMapping("board_id")
	public String boardview1(@RequestParam(value="boardId", defaultValue="1") int boardid, Model model) {
		boardService.updateBoardhits(boardid);
		BoardVO board = boardService.readBoard(boardid);
		model.addAttribute("board", board);
		return "board/noticeboard-comment";
	}

	

	// 1:1문의사항 목록
	@RequestMapping("qnaboard")
	public String getAllqnaboard(Model model) {
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList", boardList);
		return "board/qnaboard";
	}

	// 1:1문의 게시글 확인 1,2,3,4번
	@RequestMapping("qnapost")
	public String qnaboardview(@RequestParam(value="boardId", defaultValue="1") int boardid, Model model) {
		System.out.println(boardid);
		// 조회수 증가
		boardService.updateBoardhits(boardid);
		// 조회수가 증가된 게시물 정보
		BoardVO board = boardService.readBoard(boardid);
		model.addAttribute("board", board);
		return "board/qnaboard-view";
	}

	// 문의글 글보기
	@RequestMapping("qnaboard-revision")
	public String updateview1(@RequestParam(value="boardId", defaultValue="1") int boardid, Model model) {
		BoardVO board = boardService.readBoard(boardid);
		model.addAttribute("board", board);
		return "board/qnaboard-revision";
	}

	// 문의글 수정하기
	// 폼에서 입력한 내용들은 @ModelAttribute BoardVO board로 전달됨
	@RequestMapping("update.do")
	public String update(@ModelAttribute BoardVO board, Model model) {
		System.out.println(board);
		boardService.updateBoard(board);
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList", boardList);
		return "board/qnaboard";
	}

	// 1:1문의사항 삭제
	@RequestMapping("delete.do")
	public String delete(@ModelAttribute BoardVO board, Model model) {
		boardService.deleteBoard(board);
		List<BoardVO> boardList = boardService.getBoardList2();
		model.addAttribute("boardList", boardList);
		return "board/qnaboard";
	}

	// 1:1문의사항 글쓰기페이지 이동
	@RequestMapping("qnaboard-write")
	public String qnawrite() {
		return "board/qnaboard-write";
	}

	// 1:1문의사항 글 등록하기
	@RequestMapping("qnainsert.do")
	public String qnainsert(@ModelAttribute BoardVO board) {
		System.out.println(board);
		boardService.insertBoard(board);
		return "board/qnaboard-write";
	}
	@RequestMapping("noticeboard-write")
	public String noticewrite() {
		return "board/noticeboard-write";
	}
	@RequestMapping("noticeinsert.do")
	public String noticeinsert(@ModelAttribute BoardVO board) {
		System.out.println(board);
		boardService.insertBoard(board);
		return "board/qnaboard-write";
	}
//	// 조회수 증가
//	@RequestMapping("hitsupdate.do")
//	public String updatehits(@ModelAttribute BoardVO board, Model model) {
//		System.out.println(board);
//		boardService.updateBoardhits(board);
//		BoardVO board2 = boardService.readBoard(board.getBoard_id());
//		model.addAttribute("board", board2);
//		return "board/";
//		
//	}

	@ExceptionHandler({ RuntimeException.class })
	public ModelAndView runtimeException(HttpServletRequest request, Exception ex) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("url", request.getRequestURI());
		mav.addObject("exception", ex);
		mav.setViewName("error/runtime");
		return mav;
	}

}