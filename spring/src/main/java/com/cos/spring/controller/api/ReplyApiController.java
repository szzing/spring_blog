package com.cos.spring.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.spring.config.auth.PrincipalDetail;
import com.cos.spring.dto.ResponseDto;
import com.cos.spring.model.Reply;
import com.cos.spring.service.ReplyService;

@RestController
public class ReplyApiController {
	
	@Autowired
	private ReplyService replyService;
	
	@PostMapping("api/board/{boardId}/reply")
	public ResponseDto<Integer> replySave(@PathVariable int boardId, @RequestBody Reply reply, @AuthenticationPrincipal PrincipalDetail principal) {
		replyService.댓글쓰기(boardId, reply, principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	@DeleteMapping("api/board/{boardId}/reply/{replyId}")
	public ResponseDto<Integer> deleteById(@PathVariable int boardId, @PathVariable int replyId) {
		replyService.댓글삭제하기(boardId, replyId);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
}
