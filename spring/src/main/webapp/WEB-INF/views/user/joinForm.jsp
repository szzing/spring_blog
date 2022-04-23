<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<section>
	<h3 class="form_title">회원가입</h3>
	<form class="form">
		<div class="form_div">
			<label for="username">아이디</label> <input type="text"
				class="form_input" placeholder="아이디를 입력하세요" id="username">
		</div>

		<div class="form_div">
			<label for="nickname">닉네임</label> <input type="text"
				class="form_input" placeholder="닉네임을 입력하세요" id="nickname">
		</div>

		<div class="form_div">
			<label for="password">비밀번호</label> <input type="password"
				class="form_input" placeholder="비밀번호를 입력하세요" id="password">
		</div>

		<div class="form_div">
			<label for="password">비밀번호 확인</label> <input type="password"
				class="form_input" placeholder="비밀번호를 한번 더 입력하세요" id="password_chk">
		</div>

		<div class="form_div">
			<label for="email">이메일</label> <input type="email" class="form_input"
				placeholder="이메일을 입력하세요" id="email">
		</div>

	</form>
	<div class="buttons_submit">
		<button id="btn-save" class="btn_button">회원가입</button>
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

<script src="/js/user.js"></script>

<%@ include file="../layout/footer.jsp"%>
