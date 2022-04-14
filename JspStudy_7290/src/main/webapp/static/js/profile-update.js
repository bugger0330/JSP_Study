const profileInputs = document.querySelectorAll(".profile-input");
const updateSubmitBtn = document.querySelector(".update-submit-btn");
const passwordUpdateBtn = document.querySelector(".password-update-btn");

const originPrincipal = {
	"name" : profileInputs[0].value,
	"email" : profileInputs[1].value
};

/*function isEmpty(str){
	let flag = true;
	if(str == "" || typeof str == "undefined" || str == null){
		flag = true;
	}else{
		flag = false;
	}
	
	return flag;
}*/
function isEmpty(str){
	return str == "" || str == null || typeof str == "undefined";
}



updateSubmitBtn.onclick = () => {
	//빈값이 아니어야 한다
	//기존 데이터랑 현재 데이터랑 변화가 있는지 체크
	
	//1,2 조건 만족하면 alert("회원정보 수정 요청");

/*	console.log(originPrincipal.name);
	console.log(originPrincipal.email);
	console.log(profileInputs[0].value);
	console.log(profileInputs[1].value);*/
	
	if(isEmpty(profileInputs[0].value)){
		alert("이름 채워라");
	}else if(isEmpty(profileInputs[1].value)){
		alert("이메일 채워라");
	}else if(isEmpty(profileInputs[0].value)){
		alert("빈칸 채워라");
	}else if(originPrincipal.name == profileInputs[0].value && originPrincipal.email == profileInputs[1].value){
		alert("수정할 정보가 없습니다");
	}else{
		document.querySelector("form").submit();
	}

	
	
	
	
	
	
	
}
