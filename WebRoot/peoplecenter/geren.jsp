<%@page import="com.shopping.models.User"%>
<%@ page import="com.shopping.service.OrderService" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cc"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	OrderService os = new OrderService();
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
	String userimgC = userC.getUserImg();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>个人中心</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
		<script type="text/javascript">
	
</script>
		<style type="text/css">
.a-1  p a {
	text-decoration: none;
	font-size: 15px;
	color: black;
}

#id {
	z-index: 0
}

.a-1 p a:hover {
	color: red;
}

.a1 a {
	color: #ffffff;
}

.a1:hover {
	background-color: #ffffff;
}

.a1 a:hover {
	color: #e45050;
}

.left a {
	text-decoration: none;
	color: #666666;
}

.left a:hover {
	color: red;
}

.left dl dd {
	background-color: #f5f5f5;
}
</style>
	</head>

	<body>
		<div
			id="page" >

			<div class="head">
				<%@include file="../header.jsp"%>

			</div>

			<div class="a"
				style="height: 80px; background-color: #e45050; margin-left: -8px; margin-right: -3px; z-index: 0;margin-top:10px;">
				</br>

				<span
					style="color: #ffffff; font-size: 23px; font-family: 楷体; padding-left: 240px;">我的京东</span>
				&nbsp;&nbsp;




				<a href="<%=basePath %>fristpage/search.jsp" style="color: #ffffff; text-decoration: none;">首页</a>
				&nbsp;&nbsp;
				<a class="aa" href="#"
					style="color: #ffffff; text-decoration: none;"> 账户设置</a>
				&nbsp;&nbsp;
				<a href="#" style="color: #ffffff; text-decoration: none;">社区</a>
				&nbsp;&nbsp;
				<a href="#" style="color: #ffffff; text-decoration: none;">消息</a>


				<input type="text" size=15 style="height: 30px; margin-left: 250px;">
				<input type="button" value="搜索"
					style="height: 30px; font-family: 楷体; margin-left: -10px; font-size: 13px">


<div style="float:right;margin-top:5px;margin-right:80px;background-color:#ffffff;height:30px;">

	 <a href="<%=basePath %>/shoppingcar/GouWuChe.jsp" style="color:#666666;font-size:18px;color:padding-top:15px;#666666;text-decoration:none;">&nbsp;我的购物车</a>
				<div style="background-color:red;width:21px;height:21px;border-radius:100px;float:right;margin-top:-10px;">
				<span style="padding-left:5px;padding-top:0px;color:#ffffff;">0</span></div>
				
				</div>









				<div class="a1"
					style="width: 85px; height: 15px; border: 1px solid #f1f1f1; border-radius: 30px; margin-top: 0px; margin-left: 237px; padding-left: 10px; padding-top: 2px;">
					<a href="<%=basePath %>fristpage/search.jsp" style="text-decoration: none; font-size: 12.5px;">返回京东首页</a>
				</div>
				<div class="a-1"
					style="display:none;padding-left: 20px; width: 80px; height: 350px; margin-left: 450px; background-color: red; margin-top: -27px; z-index: 1; display">


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




			<div class="page"
				style="width: 100%; height:1800px; background-color: #f5f5f5; margin-left: -6px; margin-top: 5x;z-index:0;">

				<div class="left"
					style="width: 120px; height: 1600px; background-color: #f5f5f5; margin-left: 70px; margin-top: 35px; float: left;">
					<strong style="margin-left: 20px;">订单中心 </strong>
					</br>

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


					<strong style="margin-left: 20px;">关注中心 </strong>
					</br>

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


					<strong style="margin-left: 20px;">资产中心 </strong>
					</br>

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



					<strong style="margin-left: 20px;">特色业务 </strong>
					</br>

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

					<strong style="margin-left: 20px;">客服服务 </strong>
					</br>

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

					<strong style="margin-left: 20px;">设置</strong>
					</br>

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

				<div class="right"
					style="width: 1050px; height: 1700px;margin-left: 30px; margin-top: 35px; float: left;z-index:0">

					<span style="float: right">支付有礼 | 智能客服</span>
					<div class="b"
						style="width: 1000px; height: 200px; background-color: #ffffff; float: left; margin-top: 35px; margin-left: 35px; border-top-left-radius: 100px; border-bottom-left-radius: 100px;z-index:0;">

						<img alt="头像" src="dengluimg/dengru/<%=userimgC %>" width=100px height=100px
							style="margin-left: 20px; margin-top: 50px;">

						<div class="username" style="width:80px;height:30px;margin-left:150px;margin-top:-100px;">
						<%=userC.getUserAccount() %></div>
   <div class="username" style="width:140px;height:80px;margin-left:150px;">
             <a href="#" style="font-size:13px;color:blue;text-decoration:none">铜牌会员</a>
             &nbsp;
                  <img alt="头像" src="peocenimage/56284c77N32bf43a2.jpg" style="vertical-align:middle">
   </br>
   <p>
      <a href="#" style="font-size:13px;color:blue;text-decoration:none">账户安全</a>
        </br>
   </p>
      <a href="#" style="font-size:13px;color:blue;text-decoration:none">我的勋章</a>
   </div>



<div style="width:180px;height:150px;margin-top:-130px;margin-left:320px;">
</br>

<span style="color:#666666;font-family:楷体">待付款:</span><strong style="color:red;"><%=os.queryNumOfNotPay(userC) %></strong>&nbsp;&nbsp;
<span style="color:#666666;font-family:楷体">待发货:</span><strong style="color:red;"><%=os.queryNumOfNotSend(userC) %></strong>
</br>
</br></br></br>

<span style="color:#666666;font-family:楷体">待收货:</span><strong style="color:red;"><%=os.queryNumOfNotRec(userC) %></strong>&nbsp;&nbsp;
<span style="color:#666666;font-family:楷体">待评价:</span><strong style="color:red;"><%=os.queryNumOfNotAppr(userC) %></strong>


</div>





<div style="width:400px;height:160px;background-color:#f3f3f3;margin-top:-160;margin-left:550px;">
					
					<table>
					
					<tr>
					<td style="font-size:13.5px;">余额:0.00</td>
					
					<td style="font-size:13.5px;">白条额度</td>
					<td style="font-size:13.5px;">昨天收益(元)</td>
					</tr>
					</br>
					<tr>
					</tr>
					<tr>
					</tr>
					<tr>
					<td style="font-size:13.5px;">金豆:0</td>
					
					<td style="font-size:13.5px;">？ 元</td>
					<td style="font-size:13.5px;">0.00</td>
					</tr>
					<tr>
					
					</tr>
					<tr>
					</tr>
					
					<tr>
					</tr>
					<tr>
					<td style="font-size:13.5px;">京东卡/E卡:0</td>
					
					<td style="font-size:13.5px;">？激活白条,0元购物</td>
					<td style="font-size:13.5px;">小金库:0.00</td>
					</tr>
					
					<tr>
					</tr>
					<tr>
					</tr>
					<tr>
					</tr>
					
					<tr>
					<td style="font-size:13.5px;">购物券:0&nbsp;&nbsp;&nbsp;</td>
					
					<td style="font-size:13.5px;">实名认证:未认证&nbsp;&nbsp;&nbsp;</td>
					<td style="font-size:13.5px;">装入小金库,马上赚钱</td>
					</tr>
					</table>
					
					</div>

</div>

					<div class="b-2"
						style="margin-right: 2px; width: 300px; height: 400px; background-color: #ffffff; float: right; margin-top: 25px; border-left-radius: 50px;">

						</br>

						<strong style="float: left">&nbsp;会员推荐</strong>
						<div class="b2"
							style="background-color: #ff7867; padding-top: 10px; float: left; width: 120px; height: 30px; margin-top: 30px; margin-left: -60px; border: 1px solid #ff7867; border-radius: 30px;">

							<a href="#"
								style="margin-top: 10px; margin-left: 30px; text-decoration: none; color: #ffffff;">京东会员</a>
						</div>


						<div class="b2"
							style="padding-top: 10px; float: left; width: 120px; height: 30px; margin-top: 30px; margin-left: 10px; background-color: #ff7867; border-radius: 30px;">

							<a href="#"
								style="margin-top: 10px; margin-left: 30px; text-decoration: none; color: #ffffff">金融会员</a>
						</div>
						<div class="b3"
							style="width: 120px; height: 120px; background-color: #f3f3f3; margin-left: 20px; margin-top: 90px;">
							</br>
							<a style="font-size: 13px;">&nbsp;开通信用送好礼 &nbsp; 尊享白条提额</a>
							</br>
							<img src="peocenimage/right1.jpg" style="padding-left: 5px;" />
						</div>

						<div class="b3"
							style="width: 120px; height: 120px; background-color: #f3f3f3; margin-right: 20px; margin-top: -120px; float: right;">
							</br>
							<a style="font-size: 13px;">&nbsp;少年,您的劵掉了 &nbsp;快去领劵中心抢吧</a>
							</br>
							<img src="peocenimage/right2.gif" style="padding-left: 5px;" />
						</div>

						<div class="b3"
							style="width: 120px; height: 120px; background-color: #f3f3f3; margin-left: 20px; margin-top: 20px;">
							</br>
							<a style="font-size: 13px;">&nbsp;加入会员PLUS &nbsp;立白150元礼包</a>
							</br>
							<img src="peocenimage/right3.jpg" style="padding-left: 5px;" />

						</div>

						<div class="b3"
							style="width: 120px; height: 120px; background-color: #f3f3f3; margin-right: 20px; margin-top: -120px; float: right;">
							</br>
							<a style="font-size: 13px;">&nbsp;9.9元低购价 &nbsp;电影周边大抽奖</a>
							</br>
							<img src="peocenimage/right4.gif" style="padding-left: 5px;" />
						</div>

					</div>

					<div class="b-3"
						style="width: 700px; height: 450px; background-color: #ffffff; float: left; margin-top: 25px; margin-left: 35px; border-left-radius: 50px;">
						</br>
						&nbsp;
						<strong style="float: left">&nbsp;买什么</strong>
						<a href="#"
							style="float: right; text-decoration: none; color: black">查看更多</a>

						<div
							style="width: 130px; height: 180px; margin-left: -30px; margin-top: 30px; float: left;">

							<img alt="宝马X5汽车挡风板" src="peocenimage/1.jpg" style="">
							<p style="color: red; font-size: 14px; font-family: 楷体">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥168.00
							</p>

						</div>
						<div
							style="width: 130px; height: 180px; margin-left: 30px; margin-top: 30px; float: left;">
							<img alt="头像" src="peocenimage/2.jpg" style="">
							<p style="color: red; font-size: 14px; font-family: 楷体">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥360.00
							</p>

						</div>

						<div
							style="width: 130px; height: 180px; margin-left: 30px; margin-top: 30px; float: left;">
							<img alt="头像" src="peocenimage/3.jpg" style="">
							<p style="color: red; font-size: 14px; font-family: 楷体">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥298.00
							</p>

						</div>

						<div
							style="width: 130px; height: 180px; margin-left: 30px; margin-top: 15px; float: left;">

							<img alt="头像" src="peocenimage/4.jpg" style="">
							<p style="color: red; font-size: 14px; font-family: 楷体">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥18.00
							</p>
						</div>

						<div
							style="width: 130px; height: 180px; margin-left: 35px; margin-top: 20px; float: left;">

							<img alt="头像" src="peocenimage/5.jpg" style="">
							<p style="color: red; font-size: 14px; font-family: 楷体">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥24.00
							</p>

						</div>
						<div
							style="width: 130px; height: 180px; margin-left: 30px; margin-top: 20px; float: left;">
							<img alt="头像" src="peocenimage/6.jpg" width=130px;height=130px;">
			<p style="color: red; font-size: 14px; font-family: 楷体">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥210.00
			</p>

		</div>

		<div
			style="width: 130px; height: 180px; margin-left: 30px; margin-top: 20px; float: left;">

			<img alt="头像" src="peocenimage/7.jpg" width=130px;height=130px;>
			<p style="color: red; font-size: 14px; font-family: 楷体">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥88.00
			</p>
		</div>

		<div
			style="width: 130px; height: 180px; margin-left: 30px; margin-top: 20px; float: left;">

			<img alt="头像" src="peocenimage/8.jpg" width=130px;height=130px;>
			<p style="color: red; font-size: 14px; font-family: 楷体">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;￥9.9
			</p>

		</div>


		</div>
		<div class="b-4"
			style="margin-right: 2px; width: 300px; height: 250px; background-color: #ffffff; float: right; margin-top: 25px; border-left-radius: 50px;">

			</br>
			&nbsp;
			<strong>便民服务</strong>

			<table
				style="margin-left: 10px; width: 200px; text-align: center; margin-top: 10px;">
				<tr>
					<td>
						<a style="color: red">充值</a>
					</td>
					<td>
						<a>旅行</a>
					</td>
					<td>
						<a>彩票</a>
					</td>
					<td>
						<a>游戏</a>
					</td>
				</tr>
			</table>
			</br>
			&nbsp;
			<span style="font-size: 13px; font-family: 楷体"">手机号:</span>
			<input type="text" value="请输入手机号" style="font-family: 楷体" "/>

			&nbsp;&nbsp;&nbsp;&nbsp;
			<span style="font-size: 13px; font-family: 楷体">支持移动、联通、京东通信</span>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span style="font-size: 13px; font-family: 楷体"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;面值:</span>
			<select>
				<option>
					10
				</option>
				<option>
					20
				</option>
				<option>
					30
				</option>
				<option>
					50
				</option>
				<option>
					200
				</option>
				<option>
					300
				</option>
				<option>
					500
				</option>
			</select>
			</br>
			</br>
			&nbsp;&nbsp;&nbsp;
			<input type="button" value="立即充值">
			<a style="color: blue; font-size: 14px;">充话费</a>
		</div>

		<div class="b-5"
			style="width: 700px; height: 150px; background-color: #ffffff; float: left; margin-top: 25px; margin-left: 35px; border-left-radius: 50px;">

			<div
				style="float: left; width: 100px; height: 40px; border-bottom: 2px solid red; margin-left: 240px;">
				<a
					style="font-size: 22px; margin-left: 10px; padding-top: 5px; color: red;">微信推荐</a>
			</div>
			<div style="">
				<a style="font-size: 22px; margin-left: 40px; margin-top: 5px;">京东推荐</a>
			</div>
			</br>
			</br>
			<span>以下内容来自微信购物圈</span>
			<input type="button" value="微信晒单"
				style="font-family: 楷体; float: right; width: 85px; height: 40px; margin-right: 10px; background-color: red; color: #ffffff;">
		</div>
		<div class="b-6"
			style="margin-right: 2px; width: 700px; height: 250px; background-color: #ffffff; float: left; margin-top: 5px;margin-left: 35px; border-left-radius: 50px;">
			</br>
			&nbsp;
			<strong>我的足迹</strong>

			<a href="#" style="float: right; text-decoration: none; color: black">查看更多</a>
			<div
				style="width: 100px; height: 120px; background-color: #ffffff; margin-left: 20px; margin-top: 10px;">
				&nbsp;
				<img alt="浏览足迹" src="peocenimage/right6.jpg" width=80px;
					height=80px;>

				<p>
					&nbsp;￥1289.00
				</p>


			</div>
		</div>
		<div class="b-7"
			style="margin-right: 0px; width: 1020px; height: 400px; float: right;">

			<img alt="头像" src="peocenimage/a.jpg" width=1020px height=120px />
			<img alt="头像" src="peocenimage/b.jpg" width=1020px height=120px />
			<img alt="头像" src="peocenimage/c.jpg" width=1020px height=120px />

		</div>

		</div>



		</div>













































		</div>
		&nbsp;
	</body>
</html>
