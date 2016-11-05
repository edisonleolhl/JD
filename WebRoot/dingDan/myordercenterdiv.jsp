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
	AddressService as = new AddressService();
	List<Order> orderlist = os.queryAllOrder(userC);
	if(request.getAttribute("ORDERLIST") != null){
		orderlist = (List<Order>) request.getAttribute("ORDERLIST");
	}
	List<String> reNamelist = new ArrayList<String>();  
	for(Order order : orderlist){
		reNamelist.add(as.SelectById(order.getAddress()).getReName());
	}
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'myordercenterdiv.jsp' starting page</title>

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

<body>
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
</body>
</html>
