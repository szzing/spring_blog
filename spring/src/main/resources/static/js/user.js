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
			if(document.querySelector("#username").value == "" || document.querySelector("#nickname").value == "" || document.querySelector("#password").value == "" || document.querySelector("#email").value == "") {
				message = "모든 입력란을 채워주세요.";
				modalInner.innerText=message;
				this.modal();
				return false;
			}
			if(document.querySelector("#password").value != document.querySelector("#password_chk").value) {
				message = "비밀번호가 일치하지 않습니다.";
				modalInner.innerText=message;
				this.modal();
				return false;
			}
			this.save();
		});
		
		$("#btn-update").on("click",()=>{
			if(document.querySelector("#username").value == "" || document.querySelector("#nickname").value == "" || document.querySelector("#password").value == "" || document.querySelector("#email").value == "") {
				message = "모든 입력란을 채워주세요.";
				modalInner.innerText=message;
				this.modal();
				return false;
			}
			if(document.querySelector("#password").value != document.querySelector("#password_chk").value) {
				message = "비밀번호가 일치하지 않습니다.";
				modalInner.innerText=message;
				this.modal();
				return false;
			}
			this.update();
		});
		
	},
	
	modal: function(){
    	modal.classList.toggle("hidden");
	},

	save: function() {
		let data = {
			username: $("#username").val(),
			nickname: $("#nickname").val(),
			password: $("#password").val(),
			email: $("#email").val()
		};
		
		$.ajax({
			type: "POST",
			url: "/auth/joinProc",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
			
		}).done(function(resp) {
			/*alert("회원가입이 완료되었습니다.");*/
			location.href = "/";
			
		}).fail(function(error) {
			alert(JSON.stringify(error));
			
		})
		
	},
	
	update: function() {
		let data = {
			id: $("#id").val(),
			nickname: $("#nickname").val(),
			email: $("#email").val(),
			password: $("#password").val()
		};

		$.ajax({
			type: "PUT",
			url: "/user",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
			
		}).done(function(resp) {
			/*alert("회원정보수정이 완료되었습니다.");*/
			location.href = "/";
			
		}).fail(function(error) {
			alert(JSON.stringify(error));

		});
	}
	
}

index.init();