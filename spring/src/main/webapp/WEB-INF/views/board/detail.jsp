<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section>
	<div class="container">
		<h3 class="form_title">게시글 상세보기</h3>

		<div class="list_container">

			<div class="detail_info">
				<button class="btn_back" onclick="history.back()">◀ 돌아가기</button>
				<span hidden="hidden" id="id">${board.id}</span> <span>작성자 :
					${board.users.nickname}(${board.users.username})</span>
			</div>

			<div class="detail_title">
				<h4>${board.title}</h4>
				<div class="detail_btns">
					<div class="writer_btn">
						<c:if test="${board.users.id == principal.user.id}">
							<a href="/board/${board.id}/updateForm" class="btn_edit">수정</a>
							<button id="btn-delete" class="btn_delete">삭제</button>
						</c:if>
					</div>
				</div>
			</div>

			<div class="detail_body">
				<div class="detail_content">
					<pre>${board.content}</pre>
				</div>

			</div>



			<div class="reply_list">
				<div class="reply_title">댓글 목록</div>



				<div class="reply_items">

					<!-- 댓글 -->
					<div class="detail_reply">
						<form>
							<textarea class="reply_area" style="resize: none;"
								placeholder="댓글을 남겨주세요." id="new-reply"></textarea>
						</form>
						<div class="reply_btns">
							<button type="button" id="reply-save" class="btn_reply submit">등록</button>
							<!-- <button class="btn_reply reset" onclick="location.href=''">다시작성</button> -->
						</div>
					</div>

					<!-- 댓글 흩뿌리기 -->
					<c:choose>
						<c:when test="${empty board.reply}">
							<div class="replys">아직 등록된 댓글이 없습니다.</div>
						</c:when>
						<c:otherwise>
							<c:forEach var="reply" items="${board.reply}">
								<div class="replys">
									<pre class="reply_content">${reply.content}</pre>
									<p class="reply_writer">
										<span hidden="hidden" id="reply-id">${reply.id}</span> 작성자 :
										${reply.users.nickname} (${reply.users.username})
										<c:if test="${reply.users.id == principal.user.id}">
										<button id="reply-delete" class="btn_reply delete">삭제</button>
										</c:if>
									</p>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>

				</div>

			</div>

		</div>

	</div>
	
	<div class="modal hidden">
		<div class="modal_background"></div>
		<div class="modal_content">
			<h4 class="modal_message">Caution</h4>
			<p class="modal_inner"></p>
			<button class="modal_delete_btn">
				<!-- <i class='far fa-window-close'></i> -->
				삭제
			</button>
			<button class="modal_close_btn" style="background-color:#ccc">
				<!-- <i class='far fa-window-close'></i> -->
				취소
			</button>
		</div>
	</div>
	
</section>
<script type="text/javascript" src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>