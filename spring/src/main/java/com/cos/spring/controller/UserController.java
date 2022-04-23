package com.cos.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.spring.config.auth.PrincipalDetail;
import com.cos.spring.model.Boards;
import com.cos.spring.model.Reply;
import com.cos.spring.model.Users;
import com.cos.spring.repository.BoardRepository;
import com.cos.spring.repository.ReplyRepository;

@Controller
public class UserController {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Autowired
	private ReplyRepository replyRepository;
	
	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@GetMapping("/user/updateForm")
	public String updateForm() {
		return "user/updateForm";
	}
	
	@GetMapping("/user/member")
	public String member(@AuthenticationPrincipal PrincipalDetail principal, Model model) {
		
		Users user = principal.getUser();
		
		List<Boards> board = boardRepository.findByUsers(user);
		int boardCnt = board.size();
		
		List<Reply> reply = replyRepository.findByUsers(user);
		int replyCnt = reply.size();
		
		model.addAttribute("boardCnt", boardCnt);
		model.addAttribute("replyCnt", replyCnt);
		return "user/member";
	}
}
