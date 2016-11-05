function qiehuan1(){
	$(".diyibu").slideUp("normal");
	$(".dierbu").slideDown("normal");
}

function qiehuan2(){
	$(".dierbu").slideUp();
	$(".diyibu").slideDown();
}

$(document).ready(function(){
	
	$("#phoneOrEmail").focus(function(){
		$("#phoneOrEmail").val("");
	});
	
	$("#phoneOrEmail").blur(function(){
		var txtName = $("#phoneOrEmail").val();
		if(txtName != "18711353039"){
			$(".warmName").html("请输入正确的手机号!");
			$(".warmName").css("color","red")
		} else {
			$(".warmName").html("");
		}
	});
	
	$("#pwd").blur(function(){
		var txtName = $("#pwd").val();
		if(txtName != "123456"){
			$(".warmPwd").html("请输入正确的支付密码!");
			$(".warmPwd").css("color","red");
		} else {
			$(".warmPwd").html();
		}
	});
})