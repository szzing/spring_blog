<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<section>
	<div class="container">

		<h3 class="form_title">게시글 목록</h3>

		<div class="list_container">
			<div class="list_index">
				<h4 class="num">번호</h4>
				<h4>제목</h4>
				<button onclick="location.href='/board/saveForm'"
					class="btn_newboard">
					<span>글 작성 &nbsp;</span><i class='fas fa-pencil-alt'></i>
				</button>
			</div>
			<c:forEach var="board" items="${boards.content}">
				<div class="board_list" onclick="location.href='/board/${board.id}'">
					<div class="list_body">
						<h4 class="num">${board.id}</h4>
						<h4 class="list_title">${board.title}</h4>
					</div>
					<small>▶</small>
				</div>
			</c:forEach>
		</div>

		<ul class="pagination">
			<c:choose>
				<c:when test="${boards.first}">
					<li class="page_item disabled" style="background-color: #eee"
						title="첫 페이지입니다"><a class="page_link">이전페이지</a></li>
				</c:when>
				<c:otherwise>
					<li class="page_item"><a class="page_link"
						href="?page=${boards.number-1}">이전페이지</a></li>
				</c:otherwise>
			</c:choose>

			<c:forEach begin="${startBlockPage}" end="${endBlockPage}" var="i">
				<c:choose>
				<c:when test="${ulist.pageable.pageNumber+1 == i}">
				<li class="page_num disabled" style="font-weight:bold" title="현재페이지"><a class="page-link"
					href="?page=${i-1}">${i}</a></li>
				</c:when>
				<c:otherwise>
					<li class="page_num"><a class="page-link"
					href="?page=${i-1}">${i}</a></li>
				</c:otherwise>
				</c:choose>
			</c:forEach>


			<c:choose>
				<c:when test="${boards.last}">
					<li class="page_item disabled" style="background-color: #eee"
						title="마지막 페이지입니다"><a class="page_link">다음페이지</a></li>
				</c:when>
				<c:otherwise>
					<li class="page_item"><a class="page_link"
						href="?page=${boards.number+1}">다음페이지</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>

</section>

<%@ include file="../layout/footer.jsp"%>