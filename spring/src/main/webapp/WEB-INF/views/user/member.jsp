<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<c:set var="boardcnt" value="${boardCnt}"></c:set>
<c:set var="replycnt" value="${replyCnt}"></c:set>
<section>
	<h3 class="form_title">마이페이지</h3>
	<div class="greeting">
		<div class="member_info"><h4><i class='fas fa-user-alt'></i> ${principal.user.nickname}(${principal.user.username})<span>의 활동내역</span></h4></div>
		
		<div class="member_board">
			<div class="member_box">
				<h5>게시글</h5>
				<p><span>${boardcnt}</span>개</p>
			</div>
			<div class="member_box">
				<h5>댓글</h5>
				<p><span>${replycnt}</span>개</p>
			</div>
		</div>
		
		<div class="btns">
			<button class="btn_button" onclick="location.href='/user/updateForm'">회원정보수정</button>
			<button class="btn_reset" onclick="location.href='/logout'">로그아웃</button>
		</div>
	</div>
</section>

<%@ include file="../layout/footer.jsp"%>
