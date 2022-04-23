package com.cos.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.spring.model.Boards;
import com.cos.spring.repository.BoardRepository;
import com.cos.spring.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private BoardRepository boardRepository;
	
	@GetMapping({"/board"})
	public String index(Model model, @PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
		model.addAttribute("boards", boardService.글목록(pageable));
		
		Page<Boards> ulist = boardRepository.findAll(pageable);
		
		int pageNumber=ulist.getPageable().getPageNumber(); //현재페이지
		int totalPages=ulist.getTotalPages(); //총 페이지 수. 검색에따라 10개면 10개.. 
		int pageBlock = 5; //블럭의 수 1, 2, 3, 4, 5 
		int startBlockPage = ((pageNumber)/pageBlock)*pageBlock+1; //현재 페이지가 7이라면 1*5+1=6 
		int endBlockPage = startBlockPage+pageBlock-1; //6+5-1=10. 6,7,8,9,10해서 10. 
		endBlockPage= totalPages<endBlockPage? totalPages:endBlockPage; 
		
		model.addAttribute("startBlockPage", startBlockPage); 
		model.addAttribute("endBlockPage", endBlockPage); 
		model.addAttribute("ulist", ulist);
		
		return "board/boardPage";
	}
	
	@GetMapping("/board/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("board", boardService.글상세보기(id));
		return "board/updateForm";
	}
	
	@GetMapping("/board/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("board", boardService.글상세보기(id));
		return "board/detail";
	}
	
	@GetMapping({"/board/saveForm"})
	public String saveForm() {
		return "board/saveForm";
	}
}
