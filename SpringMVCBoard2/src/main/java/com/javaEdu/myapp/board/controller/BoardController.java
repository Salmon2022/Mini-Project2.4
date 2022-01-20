package com.javaEdu.myapp.board.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.javaEdu.myapp.board.model.BoardVO;
import com.javaEdu.myapp.board.model.UserVO;
import com.javaEdu.myapp.board.service.BoardService;
import com.javaEdu.myapp.board.service.IBoardService;
import com.javaEdu.myapp.board.service.IUserService;

@Controller
public class BoardController {

	@Autowired
	IUserService userService;
	
	@Autowired
	IBoardService boardService;
	
	//의존관계 주입
	//@Inject
	//BoardService boardService;
	
	//01.공지사항 목록
	@RequestMapping("/list.do")
	public ModelAndView list() {
		List<BoardVO> list = boardService.getBoardList();
		//ModelAndView : 모델과 뷰
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/list"); //뷰를 list.jsp로 설정
		mav.addObject("list",list);// 데이터를 저장
		return mav; //list.jsp로 List가 전달된다.
	}
	//02-01. 공지사항 작성화면
	//value=""(연결주소),method="전송방식"
	@RequestMapping(value="/write.do", method=RequestMethod.GET)
	public String write() {
		return "board/write";
	}
	
	//02-02.공지사항 글쓰기
	@RequestMapping(value="/insert.do", method=RequestMethod.GET)
	public String insert(@ModelAttribute BoardVO board) throws Exception{
		boardService.insertBoard(board);
		return "redirect:list.do";
	}
	
	//03.공지사항 상세 내용 조회, 공지사항 조회수 증가 처리
	//@RequestParam : get/post방식으로 전달된 변수 1개
	//HttpSession 세션객체
	@RequestMapping(value="/board/view.do", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam int boardnum, HttpSession session) throws Exception{
		//조회수 증가 처리
		boardService.increaseViewcnt(boardnum, session);
		//모델(데이터) +뷰(화면)을 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		//뷰이름
		mav.setViewName("board/view");
		//뷰에 전달할 데이터
		mav.addObject("dto", boardService.readBoard(boardnum));
		return mav;
	}
	
	//04.게시글 수정
	//폼에서 입력한 내용들은 @ModelAttribute BoardVO board로 전달됨
	@RequestMapping(value="/update.do", method=RequestMethod.POST)
	public String update(@ModelAttribute BoardVO board) throws Exception{
		boardService.updateBoard(board);
		return "redirect:list.do";
	}
	
	//05.게시글 삭제
	@RequestMapping("/delete.do")
	public String delete(@RequestParam int boardnum) throws Exception{
		boardService.deleteBoard(boardnum);
		return "redirect:list.do";
	}
	
	
	//공지사항 목록
	@RequestMapping(value= "/board/list")
	public String getAllboard(Model model) {
		List<BoardVO> boardList = boardService.getBoardList();
		model.addAttribute("boardList",boardList);
		return "board/list";
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