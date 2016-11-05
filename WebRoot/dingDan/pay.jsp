<%@page import="com.shopping.models.User"%>
<%@page import="com.shopping.serveice.OrderService"%>
<%@page import="com.shopping.models.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"+ request.getServerName() + ":" +request.getServerPort() + path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>付款</title>
</head>
<style>
@CHARSET "UTF-8";
	body{
		background-color:#f0f0f0;
	}
	.zhong{
		width:953px;
		height:529px;
		background-color:white;
		float:right;
		margin-right:195px;
	}
	.diyihang{
		margin-left:195px;
		margin-top:30px;
		font-size:16px;
	}
	.wenhao{
		color:blue;
	}
	.dierhang{
		font-size:18px;
		margin-left:195px;
		margin-top:20px;
	}
	.dingdanhao{
		font-weight:bold;
		font-size:20px;
		margin-right:16px;
	}
	.prices{
		float:right;
		margin-right:220px;
		margin-top:-70px;
	}
	.price{
		font-size:26px;
		font-weight:bold;
		color:red
	}
	
	.saoyisao{
		float:left;
		margin-left:300px;
		margin-top:120px;
	}
	.sao{
		margin-left:50px;
		margin-bottom:8px;
	}
	.yuan{
		font-size:25px;
		color:red;
		font-weight:bold;
		margin-left:50px;
		margin-bottom:10px;
	}
	.jianyi{
		font-size:14px;
		margin-left:14px;
		margin-top:10px;
		color:#bfbfbf;
		text-decoration:underline;
	}
	.zhi{
		float:left;
		margin-top:40px
	}
	.qiehuan{
		float:right;
		margin-right:0px;
	}
	.foot{
		float:left;
		margin-left:195px;
		margin-top:30px;
	}
	.diyibu{
		display:block;
	}
	.yi{
		font-size:15px;
		font-weight:bold;
		float:left;
		margin-left:330px;
		margin-top:-450px;
		border-bottom:2px #727272 solid;
	}
	.xinzhuce{
		font-size:13px;
		color:blue;
		margin-left:100px;
	}
	.zhanghu{
	    font-size:13px;
		float:left;
		margin-left:330px;
		margin-top:-390px;
	}
	.wangjizhm{
		margin-left:180px;
		color:blue;
	}
	.zhanghm{
	
		float:left;
		margin-left:330px;
		margin-top:-370px;
	}
	#phoneOrEmail{
		width:300px;
		height:30px;
		font-size:13px;
	}
	.warmName{
		font-size:15px;
		float:left;
		margin-left:360px;
		margin-top:-320px;
	}
	.zhifumm{
	font-size:13px;
		float:left;
		margin-left:330px;
		margin-top:-270px;
	}
	.password{
		float:left;
		margin-left:330px;
		margin-top:-250px;
	}
	#pwd{
		width:300px;
		height:30px;
		font-size:13px;
	}
	.warmPwd{
		font-size:15px;
		float:left;
		margin-left:360px;
		margin-top:-200px;
	}
	.nextStep{
		float:left;
		margin-left:330px;
		margin-top:-140px;
	}
	.next{
		width:300px;
		height:50px;
		padding-top:10px;
		background-color:#009900;
		padding-left:20px;
		font-size:24px;
		border:none;
	}
	.dierbu{
		display:none;
	}
</style>
<script src="<%=basePath %>/js/jquery-1.8.3.min.js"></script>
<script src="<%=basePath %>/dingDan/pay.js"></script>
<script>
$.ajaxSetup({  
    async : false  
});       

	function checkOrder(){
		var url="<%=basePath%>payokafter?method=queryOrdById&orderId=" + $("#orderId").val();
		$.post(url,"",function(result){
			if(result==1 || result=="1"){
				clearInterval(sit);
				location.href="<%=basePath%>payokafter?method=queryOrderAndqueryCollect";
				
			}
		});
	}
	
	var sit = setInterval("checkOrder()",500);
</script>
<% 
List<String> list=(List<String>)request.getAttribute("list");

OrderService orse=new OrderService();
List<Order> orlist=new ArrayList<Order>();
Order or=new Order();
for(String li:list)
{
	or=new Order();
	or=orse.queryByOrderNum(li);
	orlist.add(or);
}

double money=0;
for(Order orq:orlist)
{
	money+=orq.getTotalPrice();
}

User user = (User) session.getAttribute("USER");
String UserAccount = user.getAccount();

%>
<body>
	<div class="main">
	<div><img src="<%=basePath %>enter/images/head.png"></div>
	<div class="diyihang">正在使用即时到账交易&nbsp;<span class="wenhao"><%=UserAccount %></span></div>
	<c:forEach items="<%=orlist %>" var="orl">
	<div class="dierhang"><span class="dingdanhao">${orl.orderNumber }</span>收款方:${orl.seller }  <span style="color:red;">${orl.totalPrice }元</span></div>
	</c:forEach>
	<div class="prices"><span class="price"><%=money %></span>元</div>
	<span class="numberOne">
	<div class="zhong">
		<div class="diyibu">
		<div class="saoyisao">
			<div class="sao">扫一扫付款(元)</div>
			<div class="yuan">${money }</div>
			<div style="margin-left:40px;"><img src="<%=basePath%>payafter?orderId=${list}"></div>
			<div class="jianyi">首次使用请下载手机支付宝</div>
		</div>
		<div class="zhi"><img src="<%=basePath %>enter/images/zhi.png"></div>
		<div class="qiehuan"><img src="<%=basePath %>enter/images/qiehuan.png" onclick="qiehuan1();"></div>
		</div>
		
		<div class="dierbu">
			<form action="<%=basePath %>" method="post">
			<input type="hidden" id="orderId" value="${list}">
				<div class="qiehuan2"><img src="<%=basePath %>enter/images/qiehuan2.png"  onclick="qiehuan2();"></div>
				<div class="yi">登陆支付宝账户付款<span class="xinzhuce">新用户注册</span></div>
				<div class="zhanghu">账户名:<span class="wangjizhm">忘记账户名？</span></div>
				<div class="zhanghm"><input type="text" value="手机号码" id="phoneOrEmail" name="phoneOrEmail"></div>
				
				<div class="zhifumm">支付密码:<span class="wangjizhm">忘记密码？</span></div>
				<div class="password"><input type="password" value="" id="pwd" name="pwd"></div>
				<div class="warmPwd">请输入支付密码而不是登录密码</div>
				<div class="nextStep"><input type="submit" value="下一步" class="next"></div>
			</form>
		</div>
	</div>
	<div class="foot"><img src="<%=basePath %>enter/images/foot.png"></div>
	</span>
</div>
</body>
</html>