<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp"%>
<section class="main">
	<div class="main_img">
		<c:choose>
			<c:when test="${empty principal}">
				<div class="greeting">
					<h1>봄을 좋아하세요?</h1>
					<button class="main_button"
						onclick="location.href='/auth/loginForm'">로그인하러가기</button>
				</div>
			</c:when>
			<c:otherwise>
				<div class="greeting">
					<h1>
						<a class="golink" href="/user/member">${principal.user.nickname}(${principal.user.username})</a>님<br>
						안녕하세요!
					</h1>
					<button class="main_button" onclick="location.href='/board'">게시판으로가기</button>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
	<%-- <div class="container">
		<c:choose>
			<c:when test="${empty principal}">
				<div class="greeting">
					<p>서비스를 이용하려면 로그인을 해주세요.</p>
					<button class="btn_button"
						onclick="location.href='/auth/loginForm'">로그인하러가기</button>
				</div>
			</c:when>
			<c:otherwise>
				<div class="greeting">
					<p><a class="golink" href="/user/member">${principal.user.nickname}(${principal.user.username})</a>님,
						안녕하세요!
					</p>
					<button class="btn_button" onclick="location.href='/board'">게시판으로가기</button>
				</div>
			</c:otherwise>
		</c:choose>
	</div> --%>
	<div class="main_about">
		<h2>ABOUT</h2>
		<p>이곳은 SPRING 웹 프로젝트의 일환으로 제작된 블로그입니다.</p>
		
		<div class="main_services">

		<h3>제공 서비스</h3>
		
		<ul class="main_service">
			<li>로그인<i class='fas fa-unlock-alt'></i></li>
			<li>회원가입<i class='far fa-user-circle'></i></li>
			<li>게시글 및 댓글<i class='far fa-edit'></i></li>
			<li>회원관리<i class='far fa-id-card'></i></li>
		</ul>
		</div>
	</div>
</section>
<%@ include file="layout/footer.jsp"%>


