package com.lcomputerstudy.example.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lcomputerstudy.example.domain.Board;
import com.lcomputerstudy.example.domain.Pagination;
import com.lcomputerstudy.example.domain.User;
import com.lcomputerstudy.example.service.BoardService;
import com.lcomputerstudy.example.service.UserService;
@org.springframework.stereotype.Controller
public class Controller {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired UserService userservice;
	@Autowired BoardService boardservice;
	@Autowired PasswordEncoder passwordEncoder;

	@RequestMapping("/")
	public String home(Model model) {
		return "/index";
	}
	
	//회원리스트
	@Secured({ "ROLE_ADMIN" })
	@RequestMapping(value="/user/list", method=RequestMethod.GET)
	public String getList(Pagination pg, Model model) {
		pg.setPage(1);
		pg.setCount(userservice.countUser());
		pg.init();
		List<User> list = userservice.getList();
		model.addAttribute("list", list);
		logger.debug("debug");
		logger.info("info");
		logger.error("error");
		
		return "/userList";
	}
	
	
	//게시판 리스트
	@Secured({"ROLF_USER"})
	@RequestMapping(value="/board/list")
	public String getBoardList( Model model) {
		List<Board> list = boardservice.getBoardList();
		model.addAttribute("list", list);
		logger.debug("debug");
		logger.info("info");
		logger.error("error");
			
		return "/boardList";
		}
	//회원 상세페이지
	@Secured({ "ROLE_ADMIN" })
	@RequestMapping(value="/user/detail")
	public String memberView(User user, Model model) {
		//model.addAttribute를 통해 회원정보를 model에 저장
		model.addAttribute("user", userservice.viewMember(user));
		logger.info("클릭한 아이디 : " + user.getUsername());
		return "/userDetail";
	}
	
	//게시판 상세페이지
	@Secured({"ROLE_USER"})
	@RequestMapping(value="/board/detail")
	public String boardView(Board board, Model model) {
		model.addAttribute("board", boardservice.boardView(board));
		return "/boardDetail";
	}
		
	
	//회원 상세페이지
	@Secured({"ROLE_USER"})
	@RequestMapping(value="/user/get")
	public String getUser(User user, Model m) throws Exception {
		m.addAttribute("user", userservice.getUser(user));
		return "/editUser";
	}
	
	//게시판 상세페이지
	@Secured({"ROLE_USER"})
	@RequestMapping(value="/board/get")
	public String getBoard(Board board, Model m) throws Exception {
		m.addAttribute("board", boardservice.getBoard(board));
		return "/boardEdit";
	}
	
	//회원정보 수정하기
	@Secured({"ROLE_USER"})
	@RequestMapping(value="/user/edit")
	public String editUser(User user, Model model) throws Exception {
		userservice.editUser(user);
		return "/index";
	}
		
	//게시판 수정하기
	@Secured({"ROLE_USER"})
	@RequestMapping(value="/board/edit")
	public String editBoard(Board board, Model model) throws Exception {
		boardservice.editBoard(board);
		return "/index";
	}
	
	//회원정보 삭제하기
	@Secured({ "ROLE_ADMIN" })
	@RequestMapping(value="/user/delete")
	public String deleteUser(User user, Model model) {
		userservice.deleteUser(user);
		return "/userDelete";
	}
	
	//게시판 삭제하기
	@Secured({"ROLE_ADMIN"})
	@RequestMapping(value="board/delete")
	public String deleteBoard(Board board, Model model) {
		boardservice.deleteBoard(board);
		return "/boardDelete";
	}
	
	//게시판 추가페이지
	@RequestMapping("/board/insertPage")
	public String insertBoard(Board board) {
		return "/boardInsert";
	}
		
	//게시판 추가하기
	@RequestMapping("/board/insert")
	public String insert(Board board, Authentication auth) {
		User user = (User)auth.getPrincipal();
		board.setuIdx(user.getuIdx());
		boardservice.insert(board);
		return"/boardList";
	}
		
	@RequestMapping("/beforeSignUp")
	public String beforeSignUp() {
		return "/signup";
	}

	//회원가입하기
	@RequestMapping("/signup")
	public String signup(User user) {
		// 비밀번호 암호화
		String encodedPassword = passwordEncoder.encode(user.getPassword());

		// 유저 데이터 세팅
		user.setPassword(encodedPassword);
		user.setAccountNonExpired(true);
		user.setEnabled(true);
		user.setAccountNonLocked(true);
		user.setCredentialsNonExpired(true);
		user.setAuthorities(AuthorityUtils.createAuthorityList("ROLE_USER"));

		// 유저 생성
		userservice.createUser(user);
		// 유저 권한 생성
		userservice.createAuthorities(user);

		return "/login";
	}
	
	//로그인
	@RequestMapping(value = "/login")
	public String beforeLogin(Model model) {
		return "/login";
	}
	
	//관리자페이지
	//관리자만 들어갈수있음
	@Secured({ "ROLE_ADMIN" })
	@RequestMapping(value = "/admin")
	public String admin(Model model) {
		return "/admin";
	}
	
	//마이 페이지
	@Secured({ "ROLE_USER" })
	@RequestMapping(value = "/user/info")
	public String userInfo(Model model) {
		return "/user_info";
	}

	//관리자 권한없음
	@RequestMapping(value = "/denied")
	public String denied(Model model) {
		return "/denied";
	}
}

//우리는 특정 uri로 요청을 보내면 Controller에서 어떠한 방식으로 처리할지 정의를 한다. 이때 들어온 요청을 특정 메서드와 매핑하기 위해 사용하는 것이 @RequestMapping이다.
//모델 속성에 대한 홀더를 정의하는 인터페이스입니다. 주로 모델에 속성을 추가하기 위해 설계되었습니다.
//attributeName - 모델 속성의 이름, attributeValue- 모델 속성 값