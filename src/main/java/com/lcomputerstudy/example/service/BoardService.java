package com.lcomputerstudy.example.service;

import java.util.List;
import com.lcomputerstudy.example.domain.Board;

public interface BoardService {
	//게시판
	public List<Board> selectBoardList();
}

