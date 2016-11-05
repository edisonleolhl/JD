<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=ISO-8859-1">
		<title>耐克 男鞋</title>
	</head>

	<style type="text/css">
.tianjia {
	width: 100%;
	height: 210px;
}

.a {
	font-family: "微软雅黑";
}

.a a {
	color: #666666;
	text-decoration: none;
}

.a a:hover {
	color: red;
}

.a-b a:hover {
	border: 1px solid red;
}

.a-b a strong {
	color: #666666;
}

.a-c {
	width: 85px;
	height: 20px;
	margin-left: 220px;
	margin-top: -20px;
}

.b {
	width: 1150px;
	height: 35px;
	margin-left: 100px;
	font-family: "微软雅黑";
	font-size: 14px;
	border-top: 1.5px solid #dddddd;
}

.b ul li {
	list-style-type: none;
	float: left;
}

.b ul li a {
	color: #2a00ff;
	text-decoration: none;
}

.b ul {
	margin-top: -30px;
	margin-left: 70px;
}

.b-a {
	width: 85px;
	height: 30px;
	padding-left: 5px;
	padding-top: 5px;
	background-color: #f3f3f3;
}

.c {
	border-top: 1.5px solid #dddddd;
	width: 1150px;
	height: 35px;
	margin-left: 100px;
	font-family: "微软雅黑";
	font-size: 14px;
}

.c ul li {
	list-style-type: none;
	float: left;
}

.c ul li a:hover {
	color: #e4393c;
}

.c ul li a {
	color: #2a00ff;
	text-decoration: none;
}

.c ul {
	margin-top: -30px;
	margin-left: 70px;
}

.c-a {
	width: 85px;
	height: 30px;
	padding-left: 5px;
	padding-top: 5px;
	background-color: #f3f3f3;
}

.d {
	width: 1150px;
	height: 35px;
	margin-left: 100px;
	font-family: "微软雅黑";
	font-size: 14px;
	border-top: 1.5px solid #dddddd;
}

.d ul li {
	list-style-type: none;
	float: left;
}

.d ul li a {
	color: #2a00ff;
	text-decoration: none;
}

.d ul li a:hover {
	color: #e4393c;
}

.d ul {
	margin-top: -30px;
	margin-left: 70px;
}

.e ul li {
	list-style-type: none;
	float: left;
}

.e ul li a {
	color: #2a00ff;
	text-decoration: none;
}

.e ul li a:hover {
	color: #e4393c;
}

.f {
	border-top: 1.5px solid #dddddd;
	border-bottom: 1.5px solid #dddddd;
	width: 1150px;
	height: 35px;
	margin-left: 100px;
	font-family: "微软雅黑";
	font-size: 14px;
}

.f ul li a:hover {
	color: #e4393c;
}

.f ul li {
	list-style-type: none;
	float: left;
}

.f ul li input {
	color: #2a00ff;
}

.f ul {
	margin-top: -30px;
	margin-left: 70px;
}

.f-a {
	width: 85px;
	height: 30px;
	padding-left: 5px;
	padding-top: 5px;
	background-color: #f3f3f3;
}

.leftpage p a {
	color: black;
}

.leftpage p a:hover {
	color: red;
}

.c1 p a {
	color: #666666;
}

.c1 p a:hover {
	color: red;
}
</style>
<%String z=(String)request.getAttribute("input"); %>
	<body>
		<div id="maxdiv">
			<div class="tianjia">
				<%@include file="search.jsp"%>

			</div>


		</div>


		<div class="a"
			style="width: 300px; height: 30px; font-size: 14px; margin-top: 5px; padding-top: 5px; margin-left: 98px;">
			&nbsp;
			<a href="#">全部结果</a>>
			<div class="a-b"
				style="width: 140px; height: 20px; margin-left: 70px; margin-top: -20px;">
				<a href="#"><strong>&nbsp;品牌：</strong>耐克（NIKE）</a>
			</div>
			<div class="a-c">
				>
				<span><%=z %></span>
			</div>
		</div>
		<div class="b">

			<div class="b-a">
				运动鞋包：
			</div>
			<ul>

				<li>
					&nbsp;&nbsp;&nbsp;
					<a href="#">跑步鞋</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">休闲鞋</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#"> 板鞋</a>
				</li>
				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#"> 拖鞋</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">帆布鞋</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">训练鞋</a>
				</li>

			</ul>
		</div>

		<div class="c">

			<div class="c-a">
				闭合方式：
			</div>
			<ul>

				<li>
					&nbsp;&nbsp;
					<a href="#">系带</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">不系带</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#"> 搭扣</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#"> 不系带</a>
				</li>

			</ul>
		</div>
		<div class="d">

			<div class="d-a"
				style="width: 85px; height: 30px; padding-left: 5px; padding-top: 5px; background-color: #f3f3f3;">
				上市时间：
			</div>
			<ul>

				<li>
					&nbsp;&nbsp;&nbsp;
					<a href="#">2016夏季</a>
				</li>

				<li>
					&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">2016春季</a>
				</li>

				<li>
					&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">2015夏季</a>
				</li>
				<li>
					&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">2015春季</a>
				</li>

				<li>
					&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">2016秋季</a>
				</li>

				<li>
					&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">2016冬季</a>
				</li>

				<li>
					&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">2015秋季</a>
				</li>

				<li>
					&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">2015冬季</a>
				</li>

				<li>
					&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">2014秋季</a>
				</li>
			</ul>
		</div>
		<div class="e"
			style="width: 1150px; height: 35px; margin-left: 100px; font-size: 14px; border-top: 1.5px solid #dddddd;">

			<div class="e-a"
				style="width: 85px; height: 30px; padding-left: 5px; padding-top: 5px; background-color: #f3f3f3;">
				适用人群：
			</div>
			<ul style="margin-top: -30px; margin-left: 70px;">

				<li>
					&nbsp;&nbsp;
					<a href="#">男生</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">女生</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#"> 儿童</a>
				</li>

				<li>
					&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#"> 情侣</a>
				</li>
				<li>
					&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#">中性</a>
				</li>
			</ul>
		</div>

		<div class="f">

			<div class="f-a">
				高级选项：
			</div>

			<ul>

				<li>
					&nbsp;&nbsp;&nbsp;
					<input type="button" value="价格">
				</li>

				<li>

					&nbsp;&nbsp;&nbsp;
					<input type="button" value="尺码">
				</li>

				<li>

					&nbsp;&nbsp;&nbsp;
					<input type="button" value="功能科技">
				</li>
				<li>

					&nbsp;&nbsp;&nbsp;
					<input type="button" value="款式">
				</li>

				<li>

					&nbsp;&nbsp;&nbsp;
					<input type="button" value="场合">
				</li>

				<li>

					&nbsp;&nbsp;&nbsp;
					<input type="button" value="鞋底材质">
				</li>
				<li>

					&nbsp;&nbsp;&nbsp;
					<input type="button" value="适合路面">
				</li>
				<li>

					&nbsp;&nbsp;&nbsp;
					<input type="button" value="其他分类">
				</li>
			</ul>

		</div>


		<div class="page"
			style="width: 1150px; height: 2750px; margin-left: 100px;">

			<div class="leftpage"
				style="width: 180px; height: 2300px; padding-top: 10px; font-size: 14px; color: #666666; float: left;">

				&nbsp;
				<strong>推广商品</strong>
				<img src="<%=basePath%>/showfristimage/left2.jpg"
					style="width: 180px">
				<strong style="color: red;">&nbsp;&nbsp;￥268.00</strong>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					<a href="#" style="text-decoration: none;"> NEW
						BARLUN运动鞋跑步鞋情侣款四季男鞋慢跑</a>
				</p>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					已有
					<span style="color: blue">121</span>人评价
				</p>

				&nbsp;
				<img src="<%=basePath%>/showfristimage/left22.jpg">
				<strong style="color: red;">&nbsp;&nbsp;￥299.00</strong>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					<a href="#" style="text-decoration: none;">Kappa卡帕背靠背 惠
						情侣款男板鞋低帮透气鞋运动</a>
				</p>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					已有
					<span style="color: blue">109</span>人评价
				</p>




				&nbsp;
				<img src="<%=basePath%>/showfristimage/left3.jpg"
					style="padding-left: 10px; margin-bottom: 10px;">
				<strong style="color: red;">&nbsp;&nbsp;￥349.00</strong>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					<a href="#" style="text-decoration: none;">乔丹百尚男鞋休闲运动鞋轻便耐磨时尚复古男跑步</a>
				</p>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					已有
					<span style="color: blue">18</span>人评价
				</p>
				<img src="<%=basePath%>/showfristimage/left4.jpg"
					style="margin-left: 10px; margin-bottom: 10px;">
				<strong style="color: red;">&nbsp;&nbsp;￥299.00</strong>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					<a href="#" style="text-decoration: none;">安踏男鞋
						春秋季新款全掌气垫透气舒适减震跑步鞋 </a>
				</p>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					已有
					<span style="color: blue">158</span>人评价
				</p>





				<img src="<%=basePath%>/showfristimage/left5.jpg"
					style="margin-left: 10px; margin-bottom: 10px;">
				<strong style="color: red;">&nbsp;&nbsp;￥169.00</strong>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					<a href="#" style="text-decoration: none;">NBA男鞋
						篮球鞋文化鞋潮鞋板鞋复古休闲鞋运动鞋 </a>
				</p>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					已有
					<span style="color: blue">77</span>人评价
				</p>
				<img src="<%=basePath%>/showfristimage/left6.jpg"
					style="margin-left: 10px; margin-bottom: 10px;">
				<strong style="color: red;">&nbsp;&nbsp;￥239.00</strong>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					<a href="#" style="text-decoration: none;">安踏ANTA男鞋运动鞋男鞋子男休闲鞋男士运动鞋夏</a>
				</p>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					已有
					<span style="color: blue">2340</span>人评价
				</p>

				<img src="<%=basePath%>/showfristimage/left7.jpg"
					style="margin-left: 10px; margin-bottom: 10px;">
				<strong style="color: red;">&nbsp;&nbsp;￥399.00</strong>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					<a href="#" style="text-decoration: none;">乔丹百尚男鞋运动休闲鞋男潮流跑鞋跑步鞋情侣鞋
					</a>
				</p>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					已有
					<span style="color: blue">26</span>人评价
				</p>


				<img src="<%=basePath%>/showfristimage/left8.jpg"
					style="margin-left: 10px; margin-bottom: 10px;">
				<strong style="color: red;">&nbsp;&nbsp;￥488.00</strong>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					<a href="#" style="text-decoration: none;">【经典】鬼塚虎 休闲运动鞋 懒人鞋
						一脚蹬 男鞋 </a>
				</p>
				<p style="margin-left: 25px; margin-right: 25px; font-size: 13px;">
					已有
					<span style="color: blue">858</span>人评价
				</p>

			</div>

			<div class="rightpage"
				style="width: 965px; height: 2350px; float: right;">
				<div class="toppage"
					style="width: 965px; height: 100px; float: left;">


					<div class="f-top"
						style="width: 950px; height: 40px; font-size: 14px; margin-top: 10px; margin-left: 10px;">
						<div class="f-sort"
							style="width: 60px; height: 25px; border: 1px solid red; float: left; background-color: red; padding-top: 5px;">
							<a class="curr" style="color: #ffffff">综合排序<i></i> </a>
						</div>
						<div class="f-sort"
							style="width: 40px; height: 25px; border: 1px solid #666666; float: left; padding-top: 5px; padding-left: 10px;">

							<a href="#" class="" style="text-decoration: none; color: black">销量<i></i>
							</a>
						</div>
						<div class="f-sort"
							style="width: 40px; height: 25px; border: 1px solid #666666; float: left; padding-top: 5px; padding-left: 10px;">
							<a href="#" class="" style="text-decoration: none; color: black">价格<i></i>
							</a>
						</div>
						<div class="f-sort"
							style="width: 50px; height: 25px; border: 1px solid #666666; float: left; padding-top: 5px; padding-left: 6px;">
							<a href="#" class="" style="text-decoration: none; color: black">评论数<i></i>
							</a>
						</div>
						<div class="f-sort"
							style="width: 40px; height: 25px; border: 1px solid #666666; float: left; padding-top: 5px; padding-left: 10px;">
							<a href="#" class="" style="text-decoration: none; color: black">新品<i></i>
							</a>
						</div>
						&nbsp;&nbsp;&nbsp;

						<input type="text" style="margin-top: 10px;">
						<input type="button" value="确定">


						
					</div>



					<div
						style="width: 950px; height: 35px; font-size: 14px; margin-top: 5px; margin-left: 10px;">


						<span style="color: #666666">配送至</span>&nbsp;
						<input type="text" value="北京朝阳区三环以内">
						&nbsp;
						<input type="radio">
						京东配送 &nbsp;
						<input type="radio">
						货到到付款 &nbsp;
						<input type="radio">
						仅显示有货 &nbsp;
						<input type="radio">
						全球购
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value="店铺">
						<input type="button" value="商品">
					</div>
				</div>
				<div class="bottompage"
					style="width: 965px; height: 2130px; float: left;">
					<%@include file="midbottom.jsp"%>

				</div>





				

				<div class="cai"
					style="border: 1px solid #f1f1f1; width: 1150px; height: 260px; float: left; margin-top: 100px; margin-left: -184px;">

					<span
						style="margin-left: 10px; margin-top: 5px; font-size: 14px; float: left;">猜你喜欢</span>
					<span
						style="margin-rigth: -10px; margin-top: 5px; font-size: 14px; float: right;">换一批&nbsp;</span>
					<div class="c1"
						style="float: left; width: 150px; height: 220px; margin-left: -30px; margin-top: 25px;">
						<img src="<%=basePath%>/showfristimage/luyouqi.jpg">
						<p style="margin-left: 10px; margin-right: 10px;">
							<a href="#"
								style="color: #666666; font-size: 13px; text-decoration: none;">TP-LINK
								TL-WR86N 450M无线路由器</a>
						</p>
						<p style="font-size: 13px; margin-top: -10px; color: #005ea7">
							&nbsp;已有14039人评价
						</p>

						</p>
						<p style="font-size: 13px; margin-top: -10px; color: red">
							&nbsp;&nbsp;&nbsp;￥99.00
						</p>
					</div>




					<div class="c1"
						style="float: left; width: 150px; height: 220px; margin-left: 30px; margin-top: 25px;">
						<img src="<%=basePath%>/showfristimage/luyouqi2.jpg">
						<p style="margin-left: 10px; margin-right: 10px;">
							<a href="#" style="font-size: 13px; text-decoration: none;">
								迅捷FWR310 300M家用wifi无线路由器</a>
						</p>
						<p style="font-size: 13px; margin-top: -10px; color: #005ea7">
							&nbsp;已有14245人评价
						</p>

						<p style="font-size: 13px; margin-top: -10px; color: red">
							&nbsp;&nbsp;&nbsp;￥69.00
						</p>
					</div>
					<div class="c1"
						style="float: left; width: 150px; height: 220px; margin-left: 30px; margin-top: 25px;">
						<img src="<%=basePath%>/showfristimage/upan.jpg">
						<p style="margin-left: 10px; margin-right: 10px;">
							<a href="#" style="font-size: 13px; text-decoration: none;">
								金士顿DT 101G2 8GB U盘 红色 经典</a>
						</p>
						<p style="font-size: 13px; margin-top: -10px; color: #005ea7">
							&nbsp;已有1141577人评价
						</p>

						</p>
						<p style="font-size: 13px; margin-top: -10px; color: red">
							&nbsp;&nbsp;&nbsp;￥19.00
						</p>
					</div>


					<div class="c1"
						style="float: left; width: 150px; height: 220px; margin-left: 30px; margin-top: 25px;">
						<img src="<%=basePath%>/showfristimage/upan2.jpg">
						<p style="margin-left: 10px; margin-right: 10px;">
							<a href="#" style="font-size: 13px; text-decoration: none;">
								金士顿DT SE9H 16GB 金属U盘 银色</a>
						</p>
						<p style="font-size: 13px; margin-top: -10px; color: #005ea7">
							&nbsp;已有80245人评价
						</p>

						</p>
						<p style="font-size: 13px; margin-top: -10px; color: red">
							&nbsp;&nbsp;&nbsp;￥39.90
						</p>
					</div>


					<div class="c1"
						style="float: left; width: 150px; height: 220px; margin-left: 30px; margin-top: 25px;">
						<img src="<%=basePath%>/showfristimage/bijiben.jpg">
						<p style="margin-left: 10px; margin-right: 10px;">
							<a href="#" style="font-size: 13px; text-decoration: none;">
								Apple iPad mini 2 平板电脑 7.9英寸</a>
						</p>
						<p style="font-size: 13px; margin-top: -10px; color: #005ea7">
							&nbsp;已有315163人评价
						</p>

						</p>
						<p style="font-size: 13px; margin-top: -10px; color: red">
							&nbsp;&nbsp;&nbsp;￥1989.00
						</p>
					</div>


					<div class="c1"
						style="float: left; width: 150px; height: 220px; margin-left: 30px; margin-top: 25px;">
						<img src="<%=basePath%>/showfristimage/yin.jpg">
						<p style="margin-left: 10px; margin-right: 10px;">
							<a href="#" style="font-size: 13px; text-decoration: none;">
								齐心C3874-5 利捷享印复印纸70克 A4 5包</a>
						</p>
						<p style="font-size: 13px; margin-top: -10px; color: #005ea7">
							&nbsp;已有76329人评价
						</p>

						</p>
						<p style="font-size: 13px; margin-top: -10px; color: red">
							&nbsp;&nbsp;&nbsp;￥89.00
						</p>
					</div>
				</div>


				<img src="<%=basePath%>/showfristimage/di.jpg"
					style="margin-left: -184px; margin-top: 20px; width: 1150px;">


			</div>

		</div>

	</body>
</html>