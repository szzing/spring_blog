package com.cos.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cos.spring.model.Boards;
import com.cos.spring.model.Reply;
import com.cos.spring.repository.BoardRepository;
import com.cos.spring.repository.ReplyRepository;

@RestController
public class ReplyController {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Autowired
	private ReplyRepository replyRepository;
	
	@GetMapping("/reply/{id}")
	public Boards getBoard(@PathVariable int id) {
		return boardRepository.findById(id).get();
	}
	
	@GetMapping("/reply")
	public List<Reply> getReply() {
		return replyRepository.findAll();
	}
}
