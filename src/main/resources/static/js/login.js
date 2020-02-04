//捕捉Enter键下事件并转换为Tab键事件
function keyHandler() {
	if(event.keyCode == 13){
		if($("input[name='username']").val() == ''){
			$("input[name='username']").focus();
			return false;
		} 
		if($("input[name='password']").val() == ''){
			$("input[name='password']").focus();
			return false;
		}
		
		login();
	}
	return true;
}

function login(){
	logon_form.submit();
	return true;
}
