const modal = document.querySelector(".modal");
const closeButton = modal.querySelector(".modal_close_btn");
const modalBackground = modal.querySelector(".modal_background");

function displayModal(){
    modal.classList.toggle("hidden");
}



closeButton.addEventListener("click", displayModal);
modalBackground.addEventListener("click", displayModal);

let massage="";
const modalInner = modal.querySelector(".modal_inner");

let index = {
	init: function() {
		$("#btn-save").on("click", () => {
			if($("#title").val()=="") {
				message = "제목을 입력해주세요.";
				modalInner.innerText=message;
				this.modal();
				return false;
			}
			if($("#content").val()=="") {
				message = "내용을 입력해주세요.";
				modalInner.innerText=message;
				this.modal();
				return false;
			}
			this.save();
		});
				
		$("#btn-delete").on("click",()=>{
			const deleteButton = modal.querySelector(".modal_delete_btn");
			message = "정말 삭제하시겠습니까?\n확인 시 되돌릴 수 없습니다.";
			modalInner.innerText=message;
			this.modal();
			
			deleteButton.addEventListener("click", this.deleteById);
			
		});
		
		$("#btn-update").on("click",()=>{
			if($("#title").val()=="") {
				message = "제목을 입력해주세요.";
				modalInner.innerText=message;
				this.modal();
				return false;
			}
			if($("#content").val()=="") {
				message = "내용을 입력해주세요.";
				modalInner.innerText=message;
				this.modal();
				return false;
			}
			this.update();
		});
		
		//////////////////////////////////////////////
		
		$("#reply-save").on("click", () => {
			this.replySave();
		});
		
		$("#reply-delete").on("click", () => {
			const deleteButton = modal.querySelector(".modal_delete_btn");
			message = "정말 삭제하시겠습니까?\n확인 시 되돌릴 수 없습니다.";
			modalInner.innerText=message;
			this.modal();
			
			deleteButton.addEventListener("click", this.replyDelete);
		});
		
	},
	
	modal: function(){
    	modal.classList.toggle("hidden");
	},

	save: function() {
		let data = {
			title: $("#title").val(),
			content: $("#content").val()
		};

		$.ajax({
			type: "POST",
			url: "/api/board",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
			
		}).done(function(resp) {
			/*alert("글쓰기가 완료되었습니다.");*/
			location.href = "/board";
			
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
	
	deleteById: function() {

		let id = $("#id").text();

		$.ajax({
			type: "DELETE",
			url: "/api/board/" + id,
			dataType: "json"
			
		}).done(function(resp) {
			/*alert("삭제가 완료되었습니다.");*/
			location.href = "/board";
			
		}).fail(function(error) {
			alert(JSON.stringify(error));

		});

	},
	
	update: function() {

		let id = $("#id").val();
		
		let data = {
			title: $("#title").val(),
			content: $("#content").val()
		};

		$.ajax({
			type: "PUT",
			url: "/api/board/"+id,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"

		}).done(function(resp) {
			/*alert("수정이 완료되었습니다.");*/
			location.href = "/board";
			
		}).fail(function(error) {
			alert(JSON.stringify(error));

		});

	},
	
	///////////////////////////////////////////////////
	
	replySave: function() {
		let boardId = $("#id").text();
		
		let data = {
			content: $("#new-reply").val()
		};

		$.ajax({
			type: "POST",
			url: `/api/board/${boardId}/reply`,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
			
		}).done(function(resp) {
			/*alert("댓글이 등록되었습니다.");*/
			location.href = "/board/"+boardId;
			
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
	
	replyDelete: function() {
		let boardId = $("#id").text();
		let replyId = $("#reply-id").text();

		$.ajax({
			type: "DELETE",
			url: `/api/board/${boardId}/reply/${replyId}`,
			dataType: "json"
			
		}).done(function(resp) {
			/*alert("삭제가 완료되었습니다.");*/
			location.href = "/board/"+boardId;
			
		}).fail(function(error) {
			alert(JSON.stringify(error));

		});

	}
	
}
index.init();