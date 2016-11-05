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

		<title>My JSP '1.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<Script type="text/javascript"
			src="<%=basePath%>/js/jquery-1.8.3.min.js"></script>
		<Script type="text/javascript">
	
</Script>
		<style>
#last {
	width: 100%;
	height: 400px;
}

.frit {
	height: 65px;
	width: 100%;
	position: abstract;
	padding-top: 35px;
	padding-left: 150px;
	background-color: #F5f5f5;
}

.frit strong {
	color: #c81623;
	font-size: 25px;
}

.frit em {
	color: #666666;
	font-size: 20px;
}

.secend {
	height: 65px;
	width: 1024px;
	position: abstract;
	margin-left: 120px;
	padding-left: 100px;
	padding-top: 15px;
}

.secend table {
	height: 180px;
	width: 1024px;
}

.secend table a {
	font-size: 13px;
	color: #666666;
	text-decoration: none;
}

.secend table a:hover {
	font-size: 13px;
	color: red;
}

.secend table strong {
	color: #666666;
	font-size: 16px;
}

.thri {
	height: 25px;
	width: 824px;
	position: abstract;
	margin-left: 240px;
	margin-top: 150px;
	padding-left: 0px;
}

.thri table {
	width: 820px;
}

.thri a {
	font-size: 12px;
	color: #666666;
	text-decoration: none;
}

.thri a:hover {
	color: #ff0000;
}

.fours {
	margin-left: 240px;
	margin-top: 20px;
	width: 840px;
	font-size: 12.5px;
	height: 50px;
	color: #666666;
}

.fours img {
	vertical-align: middle;
}

.fours a {
	text-decoration: none;
	color: #666666;
}

.fours a:hover {
	color: #ff0000;
}

.five {
	margin-left: 220px;
	margin-top: -25px;
	width: 900px;
	font-size: 12.5px;
	height: 50px;
	color: #666666;
}

.five a {
	text-decoration: none;
	color: #666666;
}

.five a:hover {
	color: #ff0000;
}

.six{
	margin-left: 400px;
	margin-top: -25px;
	width:500px;
	font-size: 12.5px;
	height: 50px;
	color: #666666;

}
.seven{
	margin-left:550px;
	margin-top: -25px;
	width:300px;
	font-size: 12.5px;
	height: 50px;
	color: #666666;

}
.eight{
width:800px;
margin-left:250px;
	margin-top: -25px;
}
</style>
	</head>

	<body>
		<div id="last">

			<div class="frit">

				&nbsp;
				<Strong>多</Strong>
				<em>品类齐全,轻松购物</em>&nbsp;&nbsp;&nbsp;
				<Strong>快</Strong>
				<em>多仓直发,急速配送</em>&nbsp;&nbsp;&nbsp;
				<Strong>好</Strong>
				<em>正品行货,精致服务</em>&nbsp;&nbsp;&nbsp;
				<Strong>省</Strong>
				<em>天天低价,畅选无忧</em>&nbsp;
			</div>
			<div class="secend">

				<table>
					<tr>
						<td>
							<strong>购物指南</strong>
						</td>
						<td>
							<strong>配送方式</strong>
						</td>
						<td>
							<strong>支付方式</strong>
						</td>
						<td>
							<strong>售后服务</strong>
						</td>
						<td>
							<strong>特色服务</strong>
						</td>
						<td>
							<strong>京东自营覆盖区县</strong>
						</td>
					</tr>

					<tr>
						<td>
							<a href="#">购物流程</a>
						</td>
						<td>
							<a href="#">上门自提</a>
						</td>
						<td>
							<a href="#">货到付款</a>
						</td>
						<td>
							<a href="#">售后政策</a>
						</td>
						<td>
							<a href="#">夺宝岛</a>
						</td>
						<td>
							<a>京东已向全国2644个区县 </a>
						</td>
					</tr>

					<tr>
						<td>
							<a href="#">会员介绍</a>
						</td>
						<td>
							<a href="#">211限时到达</a>
						</td>
						<td>
							<a href="#">在线支付</a>
						</td>
						<td>
							<a href="#">价格保护</a>
						</td>
						<td>
							<a href="#">DIY装机</a>
						</td>
						<td>
							<a>提供自营配送服务，</a>
						</td>
					</tr>

					<tr>
						<td>
							<a href="#">生活旅行团购</a>
						</td>
						<td>
							<a href="#">配送服务保证</a>
						</td>
						<td>
							<a href="#">分期付款</a>
						</td>
						<td>
							<a href="#">退款说明</a>
						</td>
						<td>
							<a href="#">延保服务</a>
						</td>
						<td>
							<a href="#">支持货到付款、</a>
						</td>
					</tr>

					<tr>
						<td>
							<a href="#">常见问题</a>
						</td>
						<td>
							<a href="#">配送费收取标准</a>
						</td>
						<td>
							<a href="#">邮局汇款</a>
						</td>
						<td>
							<a href="#">返修退换货</a>
						</td>
						<td>
							<a href="#">京东E卡</a>
						</td>
						<td>
							<a>POS机刷卡和</a>
						</td>
					</tr>

					<tr>
						<td>
							<a href="#">大家电</a>
						</td>
						<td>
							<a href="#">海外派送</a>
						</td>
						<td>
							<a href="#">公司转账</a>
						</td>
						<td>
							<a href="#">取消订单</a>
						</td>
						<td>
							<a href="#">京东通信</a>
						</td>
						<td>
							<a>售后上门服务。</a>
						</td>
					</tr>

					<tr>
						<td>
							<a href="#">联系客服</a>
						</td>
						<td></td>
						<td></td>
						<td>

						</td>
						<td>
							<a href="#">京东JD+</a>
						</td>
						<td>
							<a href="#">查看详情》</a>
						</td>
					</tr>



				</table>

			</div>
			<div class="thri">
				<hr />
				<table>
					<tr>
						<td>
							<a href="#">关于我们</a>
						</td>
						<td>
							|
						</td>
						<td>
							<a href="#">联系我们</a>
						</td>

						<td>
							|
						</td>
						<td>
							<a href="#">联系客服</a>
						</td>
						<td>
							|
						</td>
						<td>
							<a href="#">商家入驻</a>
						</td>
						<td>
							|
						</td>


						<td>
							<a href="#">营销中心</a>
						</td>
						<td>
							|
						</td>
						<td>
							<a href="#">手机京东</a>
						</td>
						<td>
							|
						</td>

						<td>
							<a href="#">友情链接</a>
						</td>
						<td>
							|
						</td>
						<td>
							<a href="#">销售联盟</a>
						</td>
						<td>
							|
						</td>
						<td>
							<a href="#">京东社区</a>
						</td>
						<td>
							|
						</td>
						<td>
							<a href="#">京东公益</a>
						</td>
						<td>
							|
						</td>
						<td>
							<a href="#">English Site</a>
						</td>
						<td>
							|
						</td>
						<td>
							<a href="#">Contact Us</a>
						</td>
						<td>
							|
						</td>
					</tr>


				</table>
				<br />

			</div>
			<div class="fours">
				<img src="<%=basePath%>/fristimage/56a0a994Nf1b662dc.png">

				<a href="#">京公网安备 11000002000088号 </a>
				<span> | 京ICP证070359号 | </span>
				<a href="#"> 互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>
				<span> | 新出发京零 字第大120007号 </span>



			</div>
			<div class="five">

				<span> 互联网出版许可证编号新出网证(京)字150号 | </span>
				<a href="#"> 出版物经营许可证 </a>
				<span> | </span>
				<a href="#"> 网络文化经营许可证京网文[2014]2148-348号 </a>
				<span>| 违法和不良信息举报电话：4006561155 </span>



			</div>
		<div class="six">
		
		<span>Copyright © 2004 - 2016  京东JD.com 版权所有  |  消费者维权热线：4006067733</span>
		</div>
		<div class="seven">
		
		<span>京东旗下网站：京东钱包</span>
		</div>
		
		<div class="eight">
		
		<img src="<%=basePath%>/fristimage/54b8871eNa9a7067e.png">
		&nbsp;
		<img src="<%=basePath%>/fristimage/54b8872dNe37a9860.png">
		&nbsp;
		<img src="<%=basePath%>/fristimage/56a89b8fNfbaade9a.jpg">
		&nbsp;
		<img src="<%=basePath%>/fristimage/54b8875fNad1e0c4c.png">
		
		&nbsp;
		<img src="<%=basePath%>/fristimage/5698dc03N23f2e3b8.jpg">
		&nbsp;
		<img src="<%=basePath%>/fristimage/5698dc16Nb2ab99df.jpg">
		
		</div>
		</div>

	</body>
</html>
