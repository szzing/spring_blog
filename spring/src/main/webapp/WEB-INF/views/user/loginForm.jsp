<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<section>
	<h3 class="form_title">로그인</h3>
	<form action="/auth/loginProc" method="POST" class="form">
		<div class="form_div">
			<label for="username">아이디</label> <input type="text"
				class="form_input" id="username" name="username">
		</div>

		<div class="form_div">
			<label for="password">비밀번호</label> <input type="password"
				class="form_input" id="password" name="password">
		</div>

		<!-- <div class="form-group form-check">
			<label class="form-check-label">
				<input class="form-check-input" type="checkbox"> Remember me
			</label>
		</div> -->
		<div class="buttons_submit">
			<button type="submit" id="btn-login" class="btn_button">로그인</button>
		</div>
	<a class="golink" title="회원가입하러 가기" href="/auth/joinForm">아직 계정이 없으신가요?</a>
	</form>
</section>

<!-- <script src="/js/user.js"></script> -->

<%@ include file="../layout/footer.jsp"%>