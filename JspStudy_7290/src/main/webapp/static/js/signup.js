const itemInputs = document.querySelectorAll(".item-input");
const usernameInput = itemInputs[2].querySelector("input");
let usernameCheckFlag = "true";

const signupBtn = document.querySelector(".signup-button");

signupBtn.onclick = () => {
	let emptyFlag = true;
	
	for(let i = 0; i < itemInputs.length; i++){
		let inputValue = itemInputs[i].querySelector("input").value;
		emptyFlag = isEmpty(inputValue) ? true : false;
		if(emptyFlag == true){
			let inputLabel = itemInputs[i].querySelector("label").textContent;
			alert(inputLabel + " 을(를) 입력해 주세요" );
			return;
		}
	}
	
	if(usernameCheckFlag == "true" ){
		alert("사용자 이름 중복확인을 해주세요");
	}else{
		document.querySelector("form").submit();		
	}
	
}



/*function isEmpty(str){
	return str == "" || str == null || typeof str == "undefined";
}*/


function isEmpty(str){
	let flag = true;
	if(str == "" || typeof str == "undefined" || str == null){
		flag = true;
	}else{
		flag = false;
	}
	
	return flag;
}

usernameInput.onblur = () => {
	
	let username =  usernameInput.value;
	
	if(isEmpty(username)){
		alert("사용자 아이디를 입력해 주세요");
		usernameCheckFlag = "true";
	}else{
		$.ajax({
			type : "get",
			url : "/JspStudy_7290/auth/signup-username-check",
			data : {"username" : username},
			dataType : "text",
			success : function(data){
				if(data == "true"){
					alert("이미 존재하는 아이디 입니다");
					usernameCheckFlag = "true";
				}else{
					alert("사용 가능한 아이디 입니다");
					usernameCheckFlag = "false";
				}
				
			},
			error : function(data){
				alert("비동기 통신 오류");
			}
			
		});
	}

	}