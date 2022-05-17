package com.lcomputerstudy.example.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import com.lcomputerstudy.example.domain.Board;
import com.lcomputerstudy.example.mapper.BoardMapper;

@Service("BoardServiceImpl")
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardmapper;
	
	@Override
	public void insert(Board board) {
		boardmapper.insert(board);
	}

	@Override
	public List<Board> getBoardList() {
		return boardmapper.getBoardList();
	}
	
	@Override
	public Board boardView(Board board) {
		return boardmapper.boardView(board);
	}
	
	@Override
	public void deleteBoard(Board board) {
		boardmapper.deleteBoard(board);
	}
	
	@Override
	public Board getBoard(Board board) {
		return boardmapper.getBoard(board);
	}
	
	@Override
	public void editBoard(Board board) throws Exception {
		boardmapper.editBoard(board);
	}

}
