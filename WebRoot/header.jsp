<%@page import="com.shopping.models.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="co"%>

<%
	String path1 = request.getContextPath();
	String basePath1 = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path1 + "/";
	User userH = (User) session.getAttribute("USER");
	String userimgH = "default.PNG";
	if(userH!=null){
		userimgH = userH.getUserimg();
	}
%>
<co:set var="isNotLogin" value="${empty sessionScope.USER}" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<style type="text/css">
.dl1 .dd8:hover {
	color: red;
	cursor: pointer;
}

.dd11:hover {
	color: red;
	cursor: pointer;
}

.dd12 {
	cursor: pointer;
}

.dl1 table {
	display: none;
}

.dl1:hover table {
	display: block;
}

.dl1 dt,dd {
	margin: 0px;
	font-size: 13px;
}

.dl1:hover .img1 {
	display: none;
}

.dl1:hover .img2 {
	z-index: 100;
}

.img2 {
	z-index: -1;
}

.dd1,.dd2,.dd3,.dd4,.dd5,.dd6,.dd7 {
	float: left;
}

dd {
	line-height: 30px;
	padding-left: 15px;
}

.dd8 {
	padding-left: 30px;
}

.div1 {
	background: #F1F1F1;
	width: 1363px;
	height: 30px;
	margin-left: -5px;
	margin: 0px auto;
	margin-top: -15px;
}

.menuq {
	width: 115px;
	height: 30px;
	padding-left: 15px;
}

.dl1:hover dt,dd {
	background: #fff;
}

.dd9 {
	background-color: #bf0000;
	padding: 0px 3px 0px 5px;
	width: 30px;
	color: #fff;
	margin-left: 10px;
}

.dl1 {
	margin-left: 60px;
	float: left;
	margin-top: 0px;
}

.dd10 {
	padding-left: 38px;
}

.ul1 li {
	list-style-type: none;
	float: left;
	font-size: 13px;
	margin-left: 0px;
	margin-top: 7px;
}

.ul1 {
	margin-left: 320px;
}

.yanse a {
	color: #cc3300;
	text-decoration: none;
}

.yanse a:hover {
	color: #cc3300;
	text-decoration: none;
}

.yanse1 a {
	color: black;
	text-decoration: none;
}

.yanse1 a:hover {
	color: #cc3300;
	text-decoration: none;
}

.img4 {
	z-index: -1;
}

.li1:hover .img5_ {
	z-index: -100;
}

.li1:hover .img4 {
	z-index: 1000;
}

.dd15 {
	float: left;
}

.dd16 {
	padding-left: 150px;
}

.dl2 {
	display: none;
	width: 220px;
	height: 220px;
}

.div3:hover .li1 .dl2 {
	display: block;
}

.dl2 {
	position: absolute;
	z-index: 1;
	top: 10px;
	left: 597px;
}

.dl3 {
	position: absolute;
	z-index: 1;
	top: 10px;
	display: none;
	height: 97;
	right: 313px;
}

.li2:hover .dl3 {
	display: block;
}

.dd17 {
	float: left;
}

.dl4 {
	position: absolute;
	z-index: 1;
	width: 204px;
	height: 165px;
	display: none;
	top: 7.5px;
	right: 100px;
}

.dd18 {
	padding-left: 120px;
}

.dt1 {
	font-weight: bold;
	margin-top: 10px;
}

.dd17,.dd18 {
	line-height: 20px;
}

.li3:hover .dl4 {
	display: block;
}

.dd20 {
	float: left;
}

.dt3 {
	font-weight: bold;
}

.dl5 dd {
	margin: 0px;
	padding: 0px;
	line-height: 25px;
	padding-top: 4px;
}

.dl5 .dd22 {
	padding-left: 20px;
}

.dl5 .dd23 {
	width: 52px;
}

.dl5 .dd24 {
	padding-left: 20px;
}

.dl5 .dd25 {
	width: 52px;
}

.dl5 .dd26 {
	margin-left: 225px;
}

.dl5 {
	float: left;
	padding-left: 10px;
}

.img8 {
	float: left;
	margin-top: 30px;
	margin-left: 25px;
}

.dl6 dd {
	margin: 0px;
	padding: 0px;
	line-height: 25px;
	padding-top: 4px;
}

.dl6 .dd27 {
	float: left;
}

.dl6 .dd28 {
	width: 52px;
}

.dl6 {
	padding-left: 25px;
}

.dl6 .dd29 {
	padding-left: 25px;
}

.dl6 .dd30 {
	padding-left: 75px;
	width: 52px;
}

.dl6 .dd31 {
	padding-left: 155px;
}

.dl6 {
	float: left;
}

.dl7 .dd32 {
	float: left;
}

.dl7 {
	width: 230px;
}

.dl7 dd {
	margin: 0px;
	padding: 0px;
	line-height: 25px;
	padding-top: 4px;
}

.dl7 {
	padding-left: 30px;
}

.dl7 .dd33 {
	width: 66px;
}

.dl7 .dd34 {
	padding-left: 25px;
	width: 52px;
}

.dl7 .dd35 {
	padding-left: 170px;
}

.dl7 {
	float: left;
}

.dl8 dd {
	padding: 0px;
}

.dl8 {
	padding-left: 552px;
}

.dl8 .dd36 {
	float: left;
}

.dl8 .dd37 {
	width: 65px;
}

.dl8 .dd38 {
	width: 78px;
	padding-left: 30px;
}

.dl8 .dd39 {
	padding-left: 105px;
}

.divTop {
	position: absolute;
	width: 850px;
	top: 25px;
	left: 85px;
	display: none;
	border-bottom: 2.5px solid #f0f0f0;
	border-left: 2.5px solid #f0f0f0;
	border-right: 2.5px solid #f0f0f0;
}

.li4:hover .divTop,.dl5,.dl6,.dl7,.dl8,.li4 {
	display: block;
}

.yanse:hover {
	cursor: pointer;
	color: #cc3300;
}

.yanse1:hover {
	cursor: pointer;
}

.yanse1 {
	color: #cc3300;
}

.dl5,.dl6,.dl7,.dl8 {
	margin-top: 30px;
}

.dl4 {
	border: 2.5px solid #f0f0f0;
}

.dl3 {
	border: 2.5px solid #f0f0f0;
}

.dl2 {
	border: 2.5px solid #f0f0f0;
}

.chacha {
	background: #f1f1f1;
}

.dl1 table tr td a {
	font-family: "楷体";
	color: #666666;
	text-decoration: none;
}

.dl1:hover table {
	display: block;
}

.dl1 table tr td a:hover {
	color: red;
	cursor: pointer;
}
</style>
	<script type="text/javascript" src="<%=basePath1%>js/jquery-1.8.2.js"></script>
	<script type="text/javascript">
	$(function() {

		$(".dl1 table tr td").click(function() {

			var zz = $(this).text();
			$(this).css("color", "#ffffff");
			$(".menuq a").text(zz);

		});

	});
</script>
	<head>


		<title>京东 首页</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<div class="chacha" style="polition: absolute; top: 0px; left: 0px;">
			<div class="div1">
				<dl class="dl1">
					<dt class="menuq" style="position: relative; top: 0px">
						送至：
						<a>北京</a>
						<img src="<%=basePath1%>img/head/6.PNG" class="img1"
							style="position: absolute; top: 4px;">
						<img src="<%=basePath1%>img/head/7.PNG" class="img2"
							style="position: relative; top: 5px; right: 6px;">
					</dt>
					<div
						style="position: absolute; z-index: 1; border-bottom: 2.5px solid #f0f0f0; background-color: #ffffff; font-family: 楷体; margin-top: 10px;">
						<div class="div23" style="margin-top: -10px;">
							<table>
								<tr>
									<td>
										<a>北京&nbsp;</a>
									</td>
									<td>
										<a>上海&nbsp;</a>
									</td>
									<td>
										<a>天津&nbsp;</a>
									</td>
									<td>
										<a>重庆&nbsp;</a>
									</td>
									<td>
										<a>河北&nbsp;</a>
									</td>


								</tr>


								<tr>
									<td>
										<a>山西&nbsp;</a>
									</td>
									<td>
										<a>河南</a>
									</td>
									<td>
										<a>辽宁</a>
									</td>
									<td>
										<a>吉林</a>
									</td>
									<td>
										<a>黑龙江</a>
									</td>


								</tr>

								<tr>
									<td>
										<a>内蒙古</a>
									</td>
									<td>
										<a>江苏</a>
									</td>
									<td>
										<a>山东</a>
									</td>
									<td>
										<a>安徽</a>
									</td>
									<td>
										<a>浙江</a>
									</td>


								</tr>

								<tr>
									<td>
										<a>福建&nbsp;</a>
									</td>
									<td>
										<a>湖北</a>
									</td>
									<td>
										<a>湖南</a>
									</td>
									<td>
										<a>吉林</a>
									</td>
									<td>
										<a>黑龙江</a>
									</td>


								</tr>

								<tr>
									<td>
										<a href="#">江西</a>
									</td>
									<td>
										<a>四川&nbsp;</a>
									</td>
									<td>
										<a>海南</a>
									</td>
									<td>
										<a>贵州</a>
									</td>
									<td>
										<a>云南</a>
									</td>


								</tr>

								<tr>
									<td>
										<a>西藏&nbsp;</a>
									</td>
									<td>
										<a>陕西</a>
									</td>
									<td>
										<a>甘肃</a>
									</td>
									<td>
										<a>宁夏</a>
									</td>
									<td>
										<a>青海</a>
									</td>


								</tr>

								<tr>
									<td>
										<a>新疆</a>
									</td>
									<td>
										<a>香港</a>
									</td>
									<td>
										<a>澳门</a>
									</td>
									<td>
										<a>台湾</a>
									</td>
									<td>
										<a>钓鱼岛</a>
									</td>


								</tr>
								<tr>
									<td>
										<a>海外&nbsp;</a>
									</td>
									<td>
										<a> </a>
									</td>
									<td>
										<a> </a>
									</td>
									<td>
										<a> </a>
									</td>
									<td>
										<a> </a>
									</td>


								</tr>
							</table>
						</div>
				</dl>
				<ul class="ul1">
					<li class="yanse">
						<co:if test="${isNotLogin }">
							<a href="<%=basePath1%>enter/DengRu.jsp">你好，请登录</a>
							<li>
								<span class="yanse1"><a href="<%=basePath1%>enter/ZhuChe.jsp">免费注册</a></span> |
							</li>
						</co:if>
						<co:if test="${!isNotLogin }">
							<li>
								<span class="yanse1"><%=userH.getAccount() %>，你好！</span> |    
							<li>
								<span class="yanse1"><a href="/JD/loginout.action">注销</a></span> |
							</li>
							<li>
								<span class="yanse1"><a href="<%=basePath1%>peoplecenter/geren.jsp">个人中心</a></span> |
								</span>
							</li>
						</co:if>
					</li>
					
					<li class="yanse1">
						<a href="dingDan/center.jsp">我的订单</a> |
					</li>
					<div class="div3">
						<li class="li1">
							我的京东
							<img src="<%=basePath1%>img/head/6.7.PNG" class="img5_"
								align="absmiddle"
								style="padding-bottom: 4px; position: relative;">
							<img src="<%=basePath1%>img/head/6.6.PNG" class="img4"
								align="absmiddle"
								style="padding-bottom: 4px; position: relative; top: -1px; right: 21px">
							<span style="margin-left: -6px;">|</span>
							<dl class="dl2"
								style="background-color: #fff; margin-top: 20px; margin-left: -180px;">
								<co:if test="${isNotLogin }">
									<dt>
										<img src="<%=basePath1%>dengluimg/dengru/default.PNG"
											align="absmiddle" width="90px" height="90px" />
										<span class="yanse" s style="font-weight: bold;">你好，请登录</span>
									</dt>
								</co:if>
								<co:if test="${!isNotLogin }">
									<dt>
										<img src="../dengluimg/dengru/<%=userimgH %>"
											align="absmiddle" width="90px" height="90px">
										<span class="yanse" style="font-weight: bold;">你好，${sessionScope.USER.account}</span>
									</dt>
								</co:if>
								<dd class="dd15 yanse">
									待处理订单
								</dd>
								<dd class="dd16 yanse">
									我的关注
								</dd>
								<dd class="dd15 yanse">
									咨询回复
								</dd>
								<dd class="dd16 yanse">
									我的京豆
								</dd>
								<dd class="dd15 yanse">
									降价商品
								</dd>
								<dd class="dd16 yanse">
									我的理财
								</dd>
								<dd class="dd15 yanse">
									返修退换货
								</dd>
								<dd class="dd16 yanse">
									京东白条
								</dd>
							</dl>
						</li>
					</div>
					<li class="yanse">
						京东会员 |
					</li>
					<li class="yanse">
						企业采购 |
					</li>
					<li class="li1">
						手机京东
						<img src="<%=basePath1%>img/head/6.7.PNG" class="img5_"
							align="absmiddle"
							style="padding-bottom: 4px; position: relative;">
						<img src="<%=basePath1%>img/head/6.6.PNG" class="img4"
							align="absmiddle"
							style="padding-bottom: 4px; position: relative; right: 21px; top: -1px;">
						<span style="margin-left: -6px;">|</span>
					</li>
					<li class="li1 li2">
						关注京东
						<img src="<%=basePath1%>img/head/6.7.PNG" class="img5_"
							align="absmiddle"
							style="padding-bottom: 4px; position: relative;">
						<img src="<%=basePath1%>img/head/6.6.PNG" class="img4"
							align="absmiddle"
							style="padding-bottom: 4px; position: relative; right: 20px; top: -1px;">
						<span style="margin-left: -6px;">|</span>
						<dl class="dl3" style="background-color: white;">
							<dt
								style="padding-left: 0px; position: absolute; top: 0px; left: 60px;">
								<img src="<%=basePath1%>img/head/9.PNG">
							</dt>
						</dl>
					</li>
					<li class="li1 li3">
						客户服务
						<img src="<%=basePath1%>img/head/6.7.PNG" class="img5_"
							align="absmiddle"
							style="padding-bottom: 4px; position: relative;">
						<img src="<%=basePath1%>img/head/6.6.PNG" class="img4"
							align="absmiddle"
							style="padding-bottom: 4px; position: relative; right: 21px; top: -1px;">
						<span style="margin-left: -6px;">|</span>
						<dl class="dl4"
							style="background-color: white; left: 900px; margin-top: 16px;">
							<dt class="dt2">
								<img src="<%=basePath1%>img/head/10.PNG">
							</dt>
							<dt class="dt1"
								style="padding-left: 20px; background-color: #fff">
								客户
							</dt>
							<dd class="dd17 yanse"
								style="padding-left: 21px; padding-top: 5px;">
								帮助中心
							</dd>
							<dd class="dd18 yanse" style="padding-top: 5px;">
								售后服务
							</dd>
							<dd class="dd17 yanse" style="padding-left: 21px;">
								在线客服
							</dd>
							<dd class="dd18 yanse">
								意见建议
							</dd>
							<dd class="yanse" style="padding-left: 21px;">
								客服邮箱
							</dd>
							<dt class="dt1" style="padding-left: 21px;">
								商户
							</dt>
							<dd class="yanse" style="padding-left: 21px;">
								京东商学院
							</dd>
						</dl>
					</li>
					<li class="li1 li4">
						网站导航
						<img src="<%=basePath1%>img/head/6.7.PNG" class="img5_"
							align="absmiddle"
							style="padding-bottom: 4px; position: relative;">
						<img src="<%=basePath1%>img/head/6.7.PNG" class="img4"
							align="absmiddle"
							style="padding-bottom: 4px; position: relative; right: 21px; top: -1px;">
						<div class="divTop"
							style="z-index: 100; background-color: #ffffff; margin-top: 10px; margin-left: 260px;">
							<dl class="dl5" style="background-color: #fff;">
								<dt class="dt3">
									特色主题
								</dt>
								<dd class="dd20 dd23 yanse">
									品牌街
								</dd>
								<dd class="dd20	dd22 dd25 yanse">
									今日抄底
								</dd>
								<dd class="dd20 dd24 yanse">
									好东西
								</dd>
								<dd class="dd21 dd26 yanse">
									京东预售
								</dd>
								<dd class="dd20 dd23 yanse">
									尖er货
								</dd>
								<dd class="dd20	dd22 dd25 yanse">
									京东首发
								</dd>
								<dd class="dd20 dd24 yanse">
									今日团购
								</dd>
								<dd class="dd21 dd26 yanse">
									优惠券
								</dd>
								<dd class="dd20 dd23 yanse">
									闪购
								</dd>
								<dd class="dd20	dd22 dd25 yanse">
									京东会员
								</dd>
								<dd class="dd20 dd24 yanse">
									天天低价
								</dd>
								<dd class="dd21 dd26 yanse">
									定期送
								</dd>
								<dd class="dd20 dd23 yanse">
									装机大师
								</dd>
								<dd class="dd20	dd22 dd25 yanse">
									新奇特
								</dd>
								<dd class="dd20 dd24 yanse">
									京东试用
								</dd>
								<dd class="dd21 dd26 yanse">
									礼品购
								</dd>
								<dd class="dd20 dd23 yanse">
									智能馆
								</dd>
								<dd class="dd20	dd22 dd25 yanse">
									玩bigger
								</dd>
								<dd class="dd20 dd24 yanse">
									大牌免息
								</dd>
								<dd class="dd21 dd26 yanse">
									北京老字号
								</dd>
							</dl>

							<dl class="dl6" style="background-color: #fff">
								<dt class="dt3">
									行业频道
								</dt>
								<dd class="dd27 dd28 yanse">
									服装城
								</dd>
								<dd class="dd27 dd29 yanse">
									家用电器
								</dd>
								<dd class="dd31 yanse">
									电脑办公
								</dd>
								<dd class="dd27 dd28 yanse">
									手机
								</dd>
								<dd class="dd27 dd29 yanse">
									美妆馆
								</dd>
								<dd class="dd31 yanse">
									食品
								</dd>
								<dd class="dd27 dd28 yanse">
									数码
								</dd>
								<dd class="dd27 dd29 yanse">
									母婴
								</dd>
								<dd class="dd31 yanse">
									家装城
								</dd>
								<dd class="dd27 dd28 yanse">
									运动户外
								</dd>
								<dd class="dd27 dd29 yanse">
									整车
								</dd>
								<dd class="dd31 yanse">
									图书
								</dd>
								<dd class="dd27 dd28 yanse">
									农资频道
								</dd>
								<dd class="dd30 yanse">
									京东智能
								</dd>
							</dl>


							<dl class="dl8" style="background-color: #fff">
								<dt class="dt3">
									更多精选
								</dt>
								<dd class="dd36 dd37 yanse">
									京东社区
								</dd>
								<dd class="dd36 dd38 yanse">
									京东通信
								</dd>
								<dd class="dd39 yanse">
									在线读书
								</dd>
								<dd class="dd36 dd37 yanse">
									京东E卡
								</dd>
								<dd class="dd36 dd38 yanse">
									智能社区
								</dd>
								<dd class="dd39 yanse">
									游戏社区
								</dd>
								<dd class="dd36 dd37 yanse">
									京友邦
								</dd>
								<dd class="dd36 dd38 yanse">
									卖家入驻
								</dd>
								<dd class="dd39 yanse">
									企业采购
								</dd>
								<dd class="dd36 dd37 yanse">
									服务市场
								</dd>
								<dd class="dd36 dd38 yanse">
									乡村招募
								</dd>
								<dd class="dd39 yanse">
									校园加盟
								</dd>
								<dd class="dd36 dd37 yanse">
									办公生活馆
								</dd>
								<dd class="dd36 dd38 yanse">
									知识产权维权
								</dd>

							</dl>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</body>
</html>
