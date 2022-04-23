let index = {
	init: function() {
		$("#reply-save").on("click", () => {
			this.save();
		});
	},

	replySave: function() {
		let id = $("#id").text();
		
		let data = {
			content: $("#new-reply").val()
		};

		$.ajax({
			type: "POST",
			url: "/api/reply/"+id,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
			
		}).done(function(resp) {
			/*alert("댓글이 등록되었습니다.");*/
			location.href = "/board/"+id;
			
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
	
	replyDelete: function() {
		let id =$("#id").text();
		let replyId = $("#reply-id").text();

		$.ajax({
			type: "DELETE",
			url: "/api/reply/" + replyId,
			dataType: "json"
			
		}).done(function(resp) {
			alert("삭제가 완료되었습니다.");
			location.href = "/board"+id;
			
		}).fail(function(error) {
			alert(JSON.stringify(error));

		});

	}
	
}
index.init();