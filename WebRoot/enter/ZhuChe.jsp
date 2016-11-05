<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'ZhuChe.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
/*头部*/
#toubu {
	width: 1024px;
	height: 1000px;
	margin: 0px auto;
	overflow: hidden;
}
/*第一部分*/
#a {
	width: 900px;
	height: 40px;
	border-left: 1px solid #666666;
	margin-top: 20px;
	margin-left: 100px;
}

#a-1 {
	font-size: 22px;
	font-weight: normal;
	margin-top: 400px;
	line-height: 39px;
	margin-left: 30px;
}

#a-2 {
	float: right;
	margin-top: 10px;
	color: #999999;
}
/*第二部分*/
#b {
	width: 650px;
	height: 650px;
	margin-top: 55px;
	margin-left: 100px;
	border-right: 1px solid #666666;
}

#b-1-1 {
	width: 470px;
	height: 60px;
	border: 1px solid #666666;
}

#b-1-2 {
	font-size: 20px;
	line-height: 55px;
	margin-left: 20px;
	font-size: 16px;
}

#b-1-3 {
	width: 360px;
	height: 60px;
	float: right;
}

#b-1-4 {
	width: 350px;
	height: 60px;
}

#b-2-1 {
	width: 470px;
	height: 60px;
	margin-top: 30px;
	border: 1px solid #666666;
}

#b-3-1 {
	margin-top: 25px;
	font-size: 15px;
}

#b-4-1 {
	margin-top: 20px;
	margin-left: 40px;
}

#b-4-2 {
	width: 400px;
	height: 50px;
	font-size: 35px;
	background-color: #ee2222;
	color: #ffffff;
}
/*第三部分*/
#c {
	width: 250px;
	height: 500px;
	float: right;
	margin-top: -650px;
	margin-right: 10px;
}

#c-1-1 {
	margin-top: 20px;
	margin-left: 50px;
}

#c-1-3 {
	text-decoration: none;
	position: relative;
	top: 20px;
	left: 20px;
}
/*第四部分*/
#d {
	width: 1024px;
	height: 80px;
	margin-top: 90px;
	border-top: 1px solid red;
}

#d-1-1 {
	margin-top: 30px;
	margin-left: 75px;
	color: #666666;
}

#d-1-1 a {
	color: #666666;
	font-size: 13.5px;
}

#d-1-3 {
	margin-top: 15px;
	text-align: center;
	color: #666666;
}

#d-1-2 {
	text-decoration: none;
}

#d-1-2:HOVER {
	color: red;
}
.div3 {
	width: 750px;
	height: 534px;
	background: #fff;
}
.div3 {
	height: 69px;
	width: 990px;
}
a
{
color:black;
text-decoration: none;
}
a:hover
{
color:#E4393C;
text-decoration: none;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript">
function accountIsEmpty(){
	var $account=$(".account");
	var $accountText=$(".accountText");
	$accountText.html("");
	if($account.val()==""){
		$accountText.html("用户名不能为空！");
		
		return false;
	}
}

function phoneIsEmpty(){
	var $phone=$(".phone");
	var $phoneText=$(".phoneText");
	$phoneText.html("");
	if($phone.val()==""){
		$phoneText.html("手机不能为空！");
		
		return false;
	}
}

function pwdisnull(){
	var $Userpwd=$(".Userpwd");
	var $UserpwdText=$(".UserpwdText");
	$UserpwdText.html("");
	if($Userpwd.val()==""){
		$UserpwdText.html("密码不能为空！");
		
		return false;
	}
}

function pwd1isnull(){
	var $checkpwd=$(".checkpwd");
	var $checkpwdText=$(".checkpwdText");
	$checkpwdText.html("");
	if($checkpwd.val()==""){
		$checkpwdText.html("确认密码不能为空！");
		return false;
	}
}

$(function(){
	$(".account").blur(accountIsEmpty);
	$(".phone").blur(phoneIsEmpty);
	$(".checkpwd").blur(pwd1isnull);
	$(".Userpwd").blur(pwdisnull);
});

$(function() {
	$("#yz").click( hyz);
	function hyz() {
		/*
		 * 更换验证码
		 */
		$("#imgVerifyCode").attr("src",
				"<%=basePath%>Yzm?temp" + Math.random());
	}
	//校验验证码是否正确
	function ajaxyzm() {
		$.ajax({
			url : "<%=basePath%>UserRegisterServlet",//要请求的servlet
			data : {
				method : "ajaxYzm",
				yzm : $("#yzm").val(),//获取输入框内容
				temp : Math.random()
			},//给服务器的参数
			type : "POST",
			dataType : "json",
			async : false,//是否异步请求，如果是异步，那么不会等服务器返回，我们这个函数就向下运行了。
			cache : false,
			success : function(result) {
				alert(result);
				if (!result) {//如果校验失败
					$("#noyzm").text("验证码错误！");
					return false;
				} else if (result) {
					$("#noyzm").html("<img src='../img/gou.png'>");
					return true;
				}
			}
		});
		return true;
	}
	
	function doClick(){
		if(!ajaxyzm()){
			return false;
		}
	}
});



</script>
</head>

<body>
	<div id="toubu">
		<!-- 第一部分 头部-->
		<div id="a">
			<span id="a-1">欢迎注册</span><span id="a-2">已有账号 <a href="<%=basePath%>/enter/DengRu.jsp"
				style="text-decoration:none;color:#333333;">请登录</a> </span>
		</div>
		<!-- 第二部分  注册表格 -->
		<div id="b">
			<form name="myform" action="/JD/reg.action" method="post">
				<div id="b-1-1">
					<a id="b-1-2">用 户 名 </a><input type="text" name="account" 
						placeholder="您的账户名和登录名"
						maxlength="20" id="b-1-3" class="account">
				</div>
				<div class="accountText" style="color:red;">
				</div>
				<div id="b-2-1">
					<a id="b-1-2">设置密码 </a><input type="password" name="Userpwd"
						placeholder="建议至少使用两种字符组合" maxlength="20" id="b-1-3" class="Userpwd">
				</div>
				<div class="UserpwdText" style="color:red;">
				</div>
				<div id="b-2-1">
					<a id="b-1-2">确认密码 </a><input type="password" name="checkpwd"
						placeholder="请再次输入密码"
						maxlength="20" id="b-1-3" class="checkpwd">
				</div>
				<div class="checkpwdText" style="color:red;">
				</div>
				<div id="b-2-1">
					<a id="b-1-2">中国 +86 </a><input type="number" name="phone"
						placeholder="建议使用常用手机或邮箱" maxlength="11" id="b-1-3" class="phone">
				</div>
				<div class="phoneText" style="color:red;">
				</div>
				
				<div class="div3" id="b-2-1">
						<label id="b-1-2"><span class="span6"></span>验证码</label> <input
						style="height:62px;margin-left:30px;margin-top:-5px; " name="indentifyingCode"	type="text" placeholder="请输入右侧的验证码"
							id="yzm"> <img
							id="imgVerifyCode" src="Yzm" style="padding-left:20px;" /> <label>
							<a href="javascript:void(0)" id="yz" style="margin-top:-20px;margin-right:50px;  float:right;">看不清,换一张</a> </label> <span
							id="noyzm" style="font-size:12px;"></span>
					</div>
			
				<div id="b-2-1">
					<a id="b-1-2">手机验证码</a><input type="text" name="phoneIdentifyingCode"
						placeholder="请输入手机验证码"
						maxlength="20" id="b-1-4" class="">
				</div>
				<div id="b-3-1">
					<input type="checkbox">我已阅读并同意<a href="#"
						style="text-decoration: none;">《京东用户注册协议》</a>
				</div>
				<div id="b-4-1">
					<input type="submit" value="立即注册" id="b-4-2" style="font-size:17px;" onclick="doClick()">
				</div>
			</from>
		</div>
		<!-- 第三部分  -->
		<div id="c">
			<img src="dengluimg\zhuche\TuPian1-1.PNG" style="margin-left:15px;" />
			<div id="c-1-1">
				<img src="dengluimg\zhuche\TuPian-1-2.PNG"
					style=" vertical-align:middle;"><a href="#"
					style="text-decoration: none;"> 企业用户注册</a>
			</div>
			<div
				style="border-top:1px solid red;width:170px;margin-top:20px; margin-left:40px;"></div>
			<div id="c-1-3">
				<img src="dengluimg\zhuche\TuPian-1-3.PNG"
					style="vertical-align:middle;"><a href="#"
					style="text-decoration:none;">INTERNATIONALCUSTOMERS</a>
			</div>
		</div>
		<!-- 尾部 -->
		<div id="d">
			<table id="d-1-1">
				<tr>
					<td><a href="#" id="d-1-2">关于我们</a> |</td>
					<td><a href="#" id="d-1-2">联系我们 </a> |</td>
					<td><a href="#" id="d-1-2">人才招聘 </a> |</td>
					<td><a href="#" id="d-1-2">商家入驻 </a> |</td>
					<td><a href="#" id="d-1-2">广告服务</a> |</td>
					<td><a href="#" id="d-1-2">手机京东</a> |</td>
					<td><a href="#" id="d-1-2">友情链接</a> |</td>
					<td><a href="#" id="d-1-2">销售联盟</a> |</td>
					<td><a href="#" id="d-1-2">京东社区</a> |</td>
					<td><a href="#" id="d-1-2">京东公益 </a> |</td>
					<td><a href="#" id="d-1-2">English Site</a></td>
				</tr>
			</table>
			<div id="d-1-3">Copyright©2004-2016 京东JD.com 版权所有</div>
		</div>
	</div>
</body>
</html>
