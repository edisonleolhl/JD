<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.net.URLDecoder"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";

	String UserAccount="";
	String Userpwd="";
	
	//读取cookie
	Cookie[] cs=request.getCookies();
	if(cs!=null){
		for(Cookie c:cs){
	if("USERACCOUNT".equals(c.getName())){
		UserAccount = URLDecoder.decode(c.getValue(), "UTF-8");
	}
	if("USERPWD".equals(c.getName())){
		Userpwd = URLDecoder.decode(c.getValue(), "UTF-8");
	}
		}
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
#last {
	width: 1024px;
	height: 720px;
	margin: 0px auto;
	overflow: hidden;
	background-color: #FFFFFF;
}

.taobu {
	margin-left: 60px;
	margin-top: 10px;
}

#last1 {
	width: 100%;
	height: 500px;
	margin-top: 20px;
	background-color: #35A7FF;
}

#fudong {
	float: left;
	margin-top: 10px;
	margin-left: 10px;
}

#kuanjia {
	float: right;
	margin-top: 45px;
	margin-right: 20px;
	width: 350px;
	height: 380px;
	background-color: #ffffff;
}

#a {
	float: right;
	margin-top: -45px;
	margin-right: 20px;
	text-decoration: none;
}

#a1 {
	vertical-align: middle;
}

#a2 {
	margin-left: 24px;
	width: 295px;
	height: 25px;
	font-size: 12px;
	color: #666666;
	background-color: #fff6d2;
	border: 1px solid #ffe57d;
}

#a3 {
	margin-top: 2px;
	margin-left: 20px;
}

#b-1-0 {
	float: right;
	margin-right: 21px;
}

#b {
	margin-top: 10px;
	width: 260px;
	height: 35px;
	border: 1px solid #BDBDBD;
}

.red {
	color: #666666;
	font-family: "微软雅黑";
	font-size: 13px;
	margin-left: 10px;
	position: absolute;
}

#b1 {
	margin-top: 25px;
	width: 260px;
	height: 35px;
	border: 1px solid #BDBDBD;
}

.red1 {
	color: #666666;
	font-family: "微软雅黑";
	font-size: 13px;
	margin-left: 10px;
	position: absolute;
}

#b-1 {
	position: relative;
	top: -1px;
	left: 9px;
	border: 1px solid #BDBDBD;
	width: 35px;
	height: 33px;
	vertical-align: middle;
}

#b-1-1 {
	margin-top: 135px;
	width: 323px;
	herght: 25px;
}

#autoLogin {
	margin-left: 25px;
}

#b-3 {
	float: right;
}

#b-1-3 {
	margin-top: 20px;
	margin-left: 24px;
}

#b-1-2 {
	width: 297px;
	height: 35px;
	background-color: #E4393C;
	font-size: 25px;
	color: #FFFFFF;
}

#b-1-4 {
	margin-top: 28px;
	margin-left: 26px;
	width: 300px;
	height: 40px;
}

#b-1-5 {
	font-size: 14px;
	color: #d5ccd5;
	margin-top: 7px;
}

#b-1-6 {
	text-decoration: none;
}

#c-1-1 {
	width: 1024px;
	height: 80px;
	margin-top: 40px;
}

#c-1-2 {
	margin-left: 35px;
}

#c-1-3 {
	margin-top: 10px;
	text-align: center;
}

#c-1-4 {
	text-decoration: none;
}

#c-1-4:hover {
	color: red;
	text-decoration: underline;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript">
	function zhanghao() {
		var $a = $("#b");
		var $b = $("#DivEmail");
		$b.html("");
		if ($a.val() == "") {
			$b.html("用户名不能为空!");
			return false;
		}
		if ($a.val().length > 20) {
			$b.html("对不起，你的用户名过长");
		}
		return true;
	}
	function MiMa() {

		var $a = $("#b1");
		var $b = $("#DivPW");
		$b.html("");
		if ($a.val() == "") {
			$b.html("密码不能为空！");
			return false;
		}
		if ($a.val().length < 6 || $a.val().length > 16) {
			$b.html("密码必须大于6位数或小数等于16位数");
			return false;
		}
		return true;

	}
	/*失去焦点*/
	$(function() {
		//绑定失去焦点事件
		$("#b").blur(zhanghao);
		$("#b1").blur(MiMa);
		//提交表单,调用验证函数
		$("button").submit(function() {
			var flag = false;
			if (!zhanghao())
				flag = false;
			if (!MiMa())
				flag = false;
			return flag;
		});
	});
</script>
</head>

<body>
	<!-- 头部 -->
	<div id="last">
		<div class="taobu">
			<a href="<%=basePath%>/fristpage/search.jsp"><img
				src="dengluimg\dengru\TuPian1.PNG">
			</a>
		</div>
		<!-- 中间部分 -->
		<div id="last1">
			<div id="fudong">
				<img src="dengluimg\dengru\TuPian2.PNG">
			</div>
			<div id="kuanjia">
				<form name="loginForm" action="/JD/login.action" method="post">
					<h3 style="color:#667db7;margin-left:10px;">京东会员</h3>
					<a href="#" id="a"><img id="a1"
						src="dengluimg\dengru\TuPian3.PNG">立即注册</a>
					<div id="a2">
						<p id="a3">
							<img id="a1" src="dengluimg\dengru\TuPian4.PNG">公共场所不建议自动登录，以防账号丢失
						</p>
					</div>

					<div id="b-1-0">
						<img id="b-1" src="dengluimg\dengru\TuPian5.PNG"> <input
							type="text" placeholder="邮箱/用户名/已验证手机" name="userAccount"
							id="b" value=<%=UserAccount%>>
						<div class="red" id="DivEmail"></div>
						<br /> <img id="b-1" src="dengluimg\dengru\TuPian6.PNG"> <input
							type="password" placeholder="密码" name="password" id="b1"
							value=<%=Userpwd%>>
						<div class="red1" id="DivPW"></div>
					</div>
					<div id="b-1-1">
						<input id="autoLogin" type="checkbox" name="autoLogin" value="yes">
						<label for="autoLogin">自动登录</label> 
						<a id="b-3" href="#">忘记密码?</a>
					</div>
					<div id="b-1-3">
						<input style="border:none;" id="b-1-2" type="submit" value="登   录">
					</div>
				</form>
				<div id="b-1-4">
					<div style="font-size:14px;color:#999999;">使用合作网站账号登录京东：</div>
					<div id="b-1-5">
						<a href="#" id="b-1-6">京东钱包</a> | <a href="#" id="b-1-6">QQ</a> |
						<a href="#" id="b-1-6">微信</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 尾部 -->
		<div id="c-1-1">
			<table id="c-1-2">
				<tr>
					<td><a href="#" id="c-1-4">关于我们</a> |</td>
					<td><a href="#" id="c-1-4">联系我们 </a> |</td>
					<td><a href="#" id="c-1-4">人才招聘 </a> |</td>
					<td><a href="#" id="c-1-4">商家入驻 </a> |</td>
					<td><a href="#" id="c-1-4">广告服务</a> |</td>
					<td><a href="#" id="c-1-4">手机京东</a> |</td>
					<td><a href="#" id="c-1-4">友情链接</a> |</td>
					<td><a href="#" id="c-1-4">销售联盟</a> |</td>
					<td><a href="#" id="c-1-4">京东社区</a> |</td>
					<td><a href="#" id="c-1-4"> 京东公益 </a> |</td>
					<td><a href="#" id="c-1-4">English Site</a>
					</td>
				</tr>
			</table>
			<div id="c-1-3">Copyright©2004-2016 京东JD.com 版权所有</div>
		</div>
	</div>
</body>
</html>
