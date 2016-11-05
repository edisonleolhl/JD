<%@page import="com.shopping.models.Order"%>
<%@page import="com.shopping.models.User"%>
<%@page import="com.shopping.serveice.AddressService"%>
<%@page import="com.shopping.serveice.OrderService"%>
<%@page import="com.shopping.serveice.ShoesOrderService"%>
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
	User userC = (User) session.getAttribute("USER");
	if(userC==null){
%>
<script>
   			alert("请登录");
   			location.href="../enter/DengRu.jsp";
   		</script>
<%
	return;
   	}
	OrderService os = new OrderService();
	ShoesOrderService sos = new ShoesOrderService();
	List<Order> orderlist = os.queryAllOrder(userC);
	if(request.getAttribute("ORDERLIST") != null){
		orderlist = (List<Order>) request.getAttribute("ORDERLIST");
	}
	AddressService as = new AddressService();
	List<String> reNamelist = new ArrayList<String>();  
	for(Order order : orderlist){
		reNamelist.add(as.SelectById(order.getAddress()).getReName());
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'center.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.2.js"></script>
<script type="text/javascript">
$(function(){
	$("#allorder").click(function(){
			var url = "<%=basePath%>QueryOrderByUserAndStatusServlet?status=allorder";
			var param = "";	
			$.post(url,param,function(result){
				$("#showorderdiv").html(result);
			});
			$("#allorder").css("color","red");
			$("#notpay").css("color","#5457A6");
			$("#notrec").css("color","#5457A6");
			$("#notappr").css("color","#5457A6");
			$("#allorder").css("font-weight","bold");
			$("#notpay").css("font-weight","normal");
			$("#notrec").css("font-weight","normal");
			$("#notappr").css("font-weight","normal");		
	});
	$("#notpay").click(function(){
			var url = "<%=basePath%>QueryOrderByUserAndStatusServlet?status=notpay";
			var param = "";	
			$.post(url,param,function(result){
				$("#showorderdiv").html(result);
			});
			$("#notpay").css("color","red");
			$("#allorder").css("color","#5457A6");
			$("#notrec").css("color","#5457A6");
			$("#notappr").css("color","#5457A6");
			$("#notpay").css("font-weight","bold");
			$("#allorder").css("font-weight","normal");
			$("#notrec").css("font-weight","normal");
			$("#notappr").css("font-weight","normal");		
	});
//	$("#notsend").click(function(){
//			var url = "<%=basePath%>QueryOrderByUserAndStatusServlet?status=notsend";
//			var param = "";	
//			$.post(url,param,function(result){
//				$("#showorderdiv").html(result);
//			});
//			$("#notsend").css("color","red");
//			$("#allorder").css("color","#5457A6");
//			$("#notpay").css("color","#5457A6");
//			$("#notrec").css("color","#5457A6");
//			$("#notappr").css("color","#5457A6");
//	});
	$("#notrec").click(function(){
			var url = "<%=basePath%>QueryOrderByUserAndStatusServlet?status=notrec";
			var param = "";	
			$.post(url,param,function(result){
				$("#showorderdiv").html(result);
			});
			$("#notrec").css("color","red");
			$("#allorder").css("color","#5457A6");
			$("#notpay").css("color","#5457A6");
			$("#notappr").css("color","#5457A6");
			$("#notrec").css("font-weight","bold");
			$("#notpay").css("font-weight","normal");
			$("#allorder").css("font-weight","normal");
			$("#notappr").css("font-weight","normal");	
	});
	$("#notappr").click(function(){
			var url = "<%=basePath%>QueryOrderByUserAndStatusServlet?status=notappr";
			var param = "";
			$.post(url, param, function(result) {
				$("#showorderdiv").html(result);
			});
			$("#notappr").css("color", "red");
			$("#allorder").css("color", "#5457A6");
			$("#notpay").css("color", "#5457A6");
			$("#notrec").css("color", "#5457A6");
			$("#notappr").css("font-weight","bold");	
			$("#notrec").css("font-weight","normal");
			$("#notpay").css("font-weight","normal");
			$("#allorder").css("font-weight","normal");
	});	
	$(".recOrder").click(function(){
		var url = "<%=basePath%>RecOrderServlet";
		var orderNum = $(this).attr("orderNum");
		var param = "OrderNumber=" + orderNum;
		alert("收货成功!");
		$.post(url, param, function(result) {
			$("#showorderdiv").html(result);
		});
	});
	$(".cancelOrder").click(function(){
		var url = "<%=basePath%>CancelOrderServlet";
		var orderNum = $(this).attr("orderNum");
		var param = "OrderNumber=" + orderNum;
		alert("取消成功!");
		$.post(url, param, function(result) {
			$("#showorderdiv").html(result);
		});
	});
});
</script>

</head>
<style type="text/css">
.div1 {
	width: 1050px;
	margin: 0px auto;
}

#a1 {
	width: 1366px;
	height: 3105px;
}

.wodeDingDan {
	width: 1050px;
	height: 60px;
	margin-bottom: 10px;
	background-color: #fff;
}

.dingDanXIAng {
	height: 500px;
	background-color: #f1f1f1;
	margin-top: 30px;
}

#zhi1 {
	height: 50px;
	width: 1050px;
	background-color: #ffffff;
	margin-top: 15px;
	line-height: 17px;
}

#zhi1 a {
	margin-top: 90px;
}

.zhi3 {
	font-size: 13px;
	color: #E4393C;
	cursor:pointer;
}

.zhi4 {
	font-size: 13px;
	margin-left: -6px;
	cursor:pointer;
}

.zhi5 {
	font-size: 13px;
	margin-left: -27px;
}

.zhi7 {
	font-size: 13px;
	margin-left: -20px;
}

.zhi6 {
	font-size: 13px;
	color: #CCCCCC;
	margin-left: 38px;
}

#txt1 {
	width: 173px;
	height: 26px;
	color: #CCCCCC;
	line-height: 20px;
	font-size: 13px;
	border: 1px #CCCCCC solid;
}

#txt2 {
	width: 50px;
	height: 26px;
	margin-left: -9px;
	font-size: 13px;
	background-color: #F4F3F3;
	border: 1px #CCCCCC solid;
}

.txt {
	margin-top: -5px;
	margin-right: 25px;
	float: right;
}

#box3 {
	margin: 0px auto;
	background-color: #fff;
	width: 100%;
	margin-top: 10px;
	height: 30px;
	font-size: 13px;
	color: #666666;
}

#box3 a {
	position: relative;
	top: 8px;
}

#box4 {
	line-height: 40px;
	margin: 0px auto;
	width: 25%;
	height: 100px;
	border: 0px #CCCCCC solid;
	font-size: 20px;
	color: #666666;
	margin-top: 150px;
}

#txt4 {
	width: 90px;
	height: 25px;
	font-size: 13px;
	background-color: #F4F3F3;
	border: 1px #CCCCCC solid;
	border-radius: 3px;
	color: #323333;
}

#txt44 {
	width: 90px;
	height: 25px;
	font-size: 13px;
	color: #FFFFFF;
	background-color: #E64346;
	border: 1px #E64346 solid;
	border-radius: 3px;
}

#lo {
	width: 100%;
	height: 330px;
	background-color: #FFFFFF;
	margin-top: 20px;
}

.wddd {
	font-size: 13px;
	color: #666666;
	margin-left: -1px;
}

#lo1 {
	width: 100%;
	height: 130px;
	background-color: #FFFFFF;
	margin-top: 20px;
}

#cainixiuan {
	
}

.d-1 {
	margin: 20px;
	color: red;
	font-family: "微软雅黑";
	font-size: 20px;
}

.d-1-1 {
	width: 980px;
	height: 307px;
	margin-top: 10px;
	margin-left: 35px;
	border: 1px dotted #666666;
}

.d-1-2 {
	float: left;
	width: 243px;
	height: 307px;
	border: 1px dotted #ffffff;
}

.d-2-1 {
	width: 980px;
	float: left;
	margin-top: 20px;
}

dl dd a {
	color: #666;
	text-decoration: none;
}

dl dd a:hover {
	color: red;
}

.classifyorder {
	color: #5457A6;
}

#allorder {
	color: red;
	font-weight:bold;
}
</style>
<body>
	<div id="a1">
		<div class="div1">
			<!-- 整个大box -->
			<div class="head">
				<%@include file="../header.jsp"%>

			</div>
			<div class="a"
				style="height: 80px; background-color: #e45050; margin-left: -8px; margin-right: -3px; z-index: 0; margin-top: 10px;">
				</br> <span
					style="color: #ffffff; font-size: 23px; font-family: 楷体; padding-left: 240px;">我的京东</span>
				&nbsp;&nbsp; <a href="<%=basePath%>fristpage/search.jsp"
					style="color: #ffffff; text-decoration: none;">首页</a> &nbsp;&nbsp;
				<a class="aa" href="#"
					style="color: #ffffff; text-decoration: none;"> 账户设置</a>
				&nbsp;&nbsp; <a href="#"
					style="color: #ffffff; text-decoration: none;">社区</a> &nbsp;&nbsp;
				<a href="#" style="color: #ffffff; text-decoration: none;">消息</a> <input
					type="text" size=15 style="height: 30px; margin-left: 250px;">
				<input type="button" value="搜索"
					style="height: 30px; font-family: 楷体; margin-left: -10px; font-size: 13px">


				<div
					style="float: right; margin-top: 5px; margin-right: 80px; background-color: #ffffff; height: 30px;line-height:30px;">

					<a href="<%=basePath%>/shoppingcar/GouWuChe.jsp"
						style="color: #666666; font-size: 18px; text-decoration: none;">&nbsp;我的购物车&nbsp;</a>
				
				</div>

				<div class="a1"
					style="width: 85px; height: 15px; border: 1px solid #f1f1f1; border-radius: 30px; margin-top: 0px; margin-left: 237px; padding-left: 10px; padding-top: 2px;">
					<a href="<%=basePath%>fristpage/search.jsp"
						style="text-decoration: none; font-size: 12.5px;">返回京东首页</a>
				</div>
				<div class="a-1"
					style="display: none; padding-left: 20px; width: 80px; height: 350px; margin-left: 450px; background-color: red; margin-top: -27px; z-index: 1;">


					<span> 账户设置</span>
					<p>
						<a href="#"> 个人信息</a>
					</p>
					<p>
						<a href="#"> 账号绑定</a>
					</p>
					<p>
						<a href="#"> 账户安全</a>
					</p>
					<p>
						<a href="#"> 我的级别</a>
					</p>
					<p>
						<a href="#"> 收货地址</a>
					</p>
					<p>
						<a href="#"> 分享绑定</a>
					</p>
					<p>
						<a href="#"> 邮件订阅</a>
					</p>
					<p>
						<a href="#"> 消费记录</a>
					</p>
					<p>
						<a href="#"> 应用授权</a>
					</p>
					<p>
						<a href="#"> 快捷支付</a>
					</p>
					<p>
						<a href="#"> 增票资质</a>
					</p>


				</div>



			</div>
			<br>

			<div class="page"
				style="width: 100%; height: 1800px; background-color: #f5f5f5; margin-left: -6px; margin-top: 5x; z-index: 0;">

				<div class="left"
					style="width: 120px; height: 1600px; background-color: #f5f5f5; margin-left: 70px; margin-top: 35px; float: left;">
					<strong style="margin-left: 20px;">订单中心 </strong> </br>

					<dl style="background-color: #f5f5f5">

						<dd>
							<a href="#"> &nbsp;我的订单</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;团购订单</a>
						</dd>


						<dd>
							<a href="#"> &nbsp;本地生活订单</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;我的预售</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;评价晒单</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;取消订单记录</a>
						</dd>

					</dl>


					<strong style="margin-left: 20px;">关注中心 </strong> </br>

					<dl style="background-color: #f5f5f5">

						<dd>
							<a href="#"> &nbsp;关注的商品</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;关注的店铺</a>
						</dd>


						<dd>
							<a href="#"> &nbsp;关注的专辑</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;关注的品牌</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;关注的活动</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;浏览历史</a>
						</dd>

					</dl>


					<strong style="margin-left: 20px;">资产中心 </strong> </br>

					<dl style="background-color: #f5f5f5">

						<dd>
							<a href="#"> &nbsp;小金库</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;京东白条</a>
						</dd>


						<dd>
							<a href="#"> &nbsp;京东白拿</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;小白理财</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;京东福卡</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;余额</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;优惠券</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;京东卡/E卡</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;京东图书卡</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;京豆</a>
						</dd>

					</dl>



					<strong style="margin-left: 20px;">特色业务 </strong> </br>

					<dl style="background-color: #f5f5f5">

						<dd>
							<a href="#"> &nbsp;我的营业厅</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;京东通信</a>
						</dd>


						<dd>
							<a href="#"> &nbsp;定期送</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;京东代下单</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;我的回收单</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;节能补贴</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;医药服务</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;流量加油站</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;黄金托管</a>
						</dd>


					</dl>

					<strong style="margin-left: 20px;">客服服务 </strong> </br>

					<dl style="background-color: #f5f5f5">


						<dd>
							<a href="#"> &nbsp;返修退换货</a>
						</dd>


						<dd>
							<a href="#"> &nbsp;价格保护</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;意见建议</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;购买咨询</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;交易纠纷</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;京东维修</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;上门预约服务</a>
						</dd>
						<dd>
							<a href="#"> &nbsp;我的发票</a>
						</dd>


					</dl>

					<strong style="margin-left: 20px;">设置</strong> </br>

					<dl style="background-color: #f5f5f5">


						<dd>
							<a href="#"> &nbsp;个人信息</a>
						</dd>


						<dd>
							<a href="#"> &nbsp;收货地址</a>
						</dd>

						<dd>
							<img src="peocenimage/left1.gif"
								style="width: 100px; margin-left: -5px;" />

						</dd>
					</dl>
				</div>


				<div class="dingDanXIAng"
					style="width: 1050px; height: 1500px; margin-left: 30px; margin-top: 35px; float: left; z-index: 0">

					<div class="wodeDingDan">
						<br> &nbsp; <a class="wddd"><b>我的订单</b> </a>
					</div>

					<div id="zhi1" class="classifyorder">
						<br> &nbsp; <a class="zhi3" id="allorder">全部订单 </a> &nbsp; <a
							class="zhi4" id="notpay">待付款</a> &nbsp; <a class="zhi4" id="notrec">待收货</a> &nbsp; <a
							class="zhi4" id="notappr">待评价</a> &nbsp;&nbsp;&nbsp;&nbsp; <a class="zhi5" style="color:#CCCCCC;"><b>我的常购商品</b>
						</a> &nbsp;&nbsp;&nbsp;&nbsp; <a class="zhi7"  style="color:#CCCCCC;"><b> 特价·清仓</b> </a> <a
							class="zhi6">订单回收站</a>
						<div class="txt">
							<input TYPE="TEXT" size="18" id="txt1" value="商品名称/商品编号/订单号"
								onfocus="if (value =='商品名称/商品编号/订单号'){value =''}"
								onblur="if (value ==''){value='商品名称/商品编号/订单号'}"> <input
								type="reset" id="txt2" name="butReset" value="  "> <input
								type="reset" id="txt2" name="butReset1" value="高级">
						</div>
						<hr size="22" width="0px"
							style="border: none; border-left: 1px dotted #E0E0E0; margin-top: -18px; margin-left: 265px;">
						<hr size="22" width="0px"
							style="border: none; border-left: 1px dotted #E0E0E0; margin-top: -28px; margin-left: 402px;">
						<hr size="22" width="0px"
							style="border: none; border-left: 1px dotted #E0E0E0; margin-top: -28px; margin-left: 522px;">
					</div>
					<div id="box3">
						<a>&nbsp;&nbsp;近三个月订单&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							订单详情
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							收货人 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							金额&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全部状态&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作</a>
					</div>
					<div id="showorderdiv"
						style="width:100%;background-color:#fff;margin: 0px auto;z-index:0;">
						<%
							int orderindex = 0;
						%>
						<cc:forEach items="<%=orderlist %>" var="order">
							<div class="dingdan"
								style="float:left;width:100%;margin: 0px auto;height:30px;background-color:#ddd;
							 	 margin-top:0px;padding-top:10px;border-top:2px solid grey;font-size:15px;">
								<!-- order的div -->
								<div style="float:left;width:20%;">
									<span style="color:#aaa;">${order.seller }</span>
								</div>
								<div style="float:left;width:26.5%;text-align:center;">
									<span style="color:#aaa;">订单号:</span>${order.orderNumber}
								</div>
								<div style="float:left;width:13%;text-align:center;"><%=reNamelist.get(orderindex)%></div>
								<div style="float:left;width:14.5%;text-align:center;">
									<span style="color:#aaa;">总额：</span>${order.totalPrice }
								</div>
								<div style="float:left;width:14.5%;text-align:center;">${order.status
									}</div>
								<div style="float:left;width:10%;text-align:center;">
									<cc:set var="notpay" value="待付款" scope="request"></cc:set>
									<cc:set var="notsend" value="待发货" scope="request"></cc:set>
									<cc:set var="notrec" value="待收货" scope="request"></cc:set>
									<cc:set var="notappr" value="待评价" scope="request"></cc:set>
									<cc:set var="alreadyappr" value="已评价" scope="request"></cc:set>
									<cc:if test="${order.status == notpay }">
										<a href="<%=basePath %>gopay?OrderId=${order.orderNumber}"style="color:#E45050;cursor:pointer;text-decoration: none;">去付款</a>
										<a style="color:#E45050;cursor:pointer;text-decoration: none;" class="cancelOrder"
											ordernum="${order.orderNumber }">取消</a>
									</cc:if>
									<cc:if test="${order.status == notsend }">
										<label
											style="cursor:pointer;color:#E45050;text-decoration: none"
											onclick="alert('商家已收到您的催单！');">催促发货</label>
									</cc:if>
									<cc:if test="${order.status == notrec }">
										<a style="color:#E45050;cursor:pointer;text-decoration: none;" class="recOrder"
											ordernum="${order.orderNumber }">确认收货</a>
									</cc:if>
									<cc:if test="${order.status == notappr }">
										<a style="color:#E45050;cursor:pointer;text-decoration: none;" 
											onclick="alert('评价成功！');">去评价</a>
									</cc:if>
									<cc:if test="${order.status == alreadyappr }">
										谢谢惠顾！
									</cc:if>
								</div>
							</div>
							<!-- shoesorder的div -->
							<div style="width:100%;margin: 0px auto;">
								<cc:forEach items="${order.shoesOrderList }" var="shoesorder">
									<div class="shop"
										style="float:left;width:100%;height:100px;margin:0px auto;background-color:#fff;border-bottom:0.5px solid #f1f1f1;font-size:13px;">
										<div style="float:left;border:0.5px solid #eee;">
											<img src="<%=basePath%>ShoesImg/${shoesorder.simg}"
												style="width: 80px; height: 80px;padding:10px;" />
										</div>
										<div style="float:left;width:250px;height:80px;padding:30px;">${shoesorder.shoesName}</div>
										<div
											style="float:left;width:50px;height:80px;padding:30px;text-align:center;">${shoesorder.shoesColor}</div>
										<div
											style="float:left;width:50px;height:80px;padding:30px;text-align:center;">${shoesorder.size}码</div>
										<div
											style="float:left;width:50px;height:80px;padding:30px;text-align:center;">x${shoesorder.amount}</div>
										<div
											style="float:left;width:150px;height:80px;padding:30px;text-align:center;font-family:微软雅黑;">
											<span style="color:#aaa">金额：${shoesorder.shoesPrice}x${shoesorder.amount}=</span>
											${shoesorder.shoesPrice * shoesorder.amount }
										</div>
									</div>
								</cc:forEach>
							</div>
							<!-- 下面的div用来隔开每个订单 -->
							<div
								style="float:left;width:100%;height:20px;margin:0px auto;background-color:#f5f5f5;"></div>
							<%
								orderindex++;
							%>
						</cc:forEach>
					</div>



					<div class="d-2-1"
						style="float:left;width:100%;height:400px;background-color:#ffffff;margin: 0px auto;margin-top:30px;z-index:0;">
						<div class="d-1">
							<a>猜你喜欢的</a>
						</div>
						<div class="d-1-1">
							<div class="d-1-2">
								<img src="shoppingcarimg/568b809aN5bc1894c.jpg"
									style="margin-top: 35px; margin-left: 40px;" />

								<p
									style="font-size: 13px; margin-left: 10px; margin-right: 10px;">
									[2016]春季demo韩版新款小脚裤男 2577-672222-064黑+灰</p>
								<p
									style="font-size: 16px; color: red; margin-left: 20px; margin-right: 20px;">
									&nbsp;&nbsp;&nbsp;&nbsp;￥222.00</p>
							</div>
							<div class="d-1-2">
								<img src="shoppingcarimg/57172bd8N0b790113.jpg"
									style="margin-top: 35px; margin-left: 40px;" />
								<p
									style="font-size: 13px; margin-left: 10px; margin-right: 10px;">
									ZJ NIKE耐克男鞋Flight休闲鞋新款运动鞋306252-027 306252-026黑+水泥灰</p>
								<p
									style="font-size: 16px; color: red; margin-left: 20px; margin-right: 20px;">
									&nbsp;&nbsp;&nbsp;&nbsp;￥527.00</p>
							</div>
							<div class="d-1-2">
								<img src="shoppingcarimg/574e5417N16f9c436.jpg"
									style="margin-top: 35px; margin-left: 40px;" />
								<p
									style="font-size: 13px; margin-left: 10px; margin-right: 10px;">
									【团购】耐克Nike2016新款男鞋跑步鞋运动鞋air max跑步806771-001</p>
								<p
									style="font-size: 16px; color: red; margin-left: 20px; margin-right: 20px;">
									&nbsp;&nbsp;&nbsp;&nbsp;￥624.00</p>
							</div>
							<div class="d-1-2" style="width:230px;height:200px;">
								<img src="shoppingcarimg/5795b8b3Nf68e71e5.jpg"
									style="margin-top: 35px; margin-left:40px;" />
								<p style="font-size: 13px; margin-left:5px; margin-right: 10px;">
									筱沐2016春秋季女装上新品韩版妈妈装蕾丝雪纺包臀印花两件外套大码</p>
								<p
									style="font-size: 16px; color: red; margin-left: 20px; margin-right: 20px;">
									&nbsp;&nbsp;&nbsp;&nbsp;￥156.00</p>
							</div>
						</div>



					</div>

				</div>


			</div>
			<!-- 整个大box -->
			<div class="head"></div>

		</div>
</body>
</html>
