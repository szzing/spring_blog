package com.cos.spring.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cos.spring.model.Boards;
import com.cos.spring.model.Reply;
import com.cos.spring.model.Users;
import com.cos.spring.repository.BoardRepository;
import com.cos.spring.repository.ReplyRepository;

@Service
public class ReplyService {
	@Autowired
	private ReplyRepository replyRepository;
	
	@Autowired
	private BoardRepository boardRepository;

	@Transactional
	public void 댓글쓰기(int boardId, Reply requestReply, Users user) {
		Boards board = boardRepository.findById(boardId).orElseThrow(()-> {
			return new IllegalArgumentException("댓글 등록 실패 : 게시글 아이디를 찾을 수 없습니다.");
		});
		requestReply.setBoards(board);
		requestReply.setUsers(user);
		replyRepository.save(requestReply);
	}
	
	@Transactional
	public void 댓글삭제하기(int boardId, int replyId) {
		replyRepository.deleteById(replyId);
	}
}
