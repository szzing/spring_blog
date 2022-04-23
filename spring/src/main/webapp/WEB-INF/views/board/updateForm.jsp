<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<section>
	<h3 class="form_title">게시글 수정</h3>
	
	<input type="hidden" id="id" value="${board.id}"/>
	<form class="board_form form">
		<div class="board_div">
			<label for="title">제목</label>
			<input value="${board.title}" type="text" class="board_input"
				placeholder="제목을 입력해주세요." id="title">
		</div>

		<div class="board_div">
			<label for="content">내용</label>
			<textarea class="board_input" placeholder="내용을 입력해주세요."
				id="content" rows="15" style="resize:none;">${board.content}</textarea>
		</div>
	</form>

	<div class="buttons_submit">
		<button id="btn-update" class="btn_button">수정</button>
		<button class="btn_reset" onclick="history.back()">취소</button>
	</div>
	
	<div class="modal hidden">
		<div class="modal_background"></div>
		<div class="modal_content">
			<h4 class="modal_message">Caution</h4>
			<p class="modal_inner"></p>
			<button class="modal_close_btn">
				<!-- <i class='far fa-window-close'></i> -->
				확인
			</button>
		</div>
	</div>
	
</section>

<script type="text/javascript" src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp" %>