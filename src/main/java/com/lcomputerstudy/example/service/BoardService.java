package com.lcomputerstudy.example.service;

import java.util.List;

import org.springframework.security.core.Authentication;

import com.lcomputerstudy.example.domain.Board;

public interface BoardService {
		//게시판 추가
		public void insert(Board board);
		//게시판 리스트
		public List<Board> getBoardList();
		
		//게시판 
		public Board boardView(Board board);
		
		//게시판 삭제
		public void deleteBoard(Board board);
		
		//게시판 수정페이지
		public Board getBoard(Board board);
		
		//게시판 수정하기
		public void editBoard(Board board) throws Exception;
}

