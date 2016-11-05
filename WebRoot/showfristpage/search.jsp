<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path6 = request.getContextPath();
	String basePath6 = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path6 + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>

		<title>My JSP 'search.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
#search {
	width: 1024px;
}

#search1 {
	border: 0px solid red;
	height: 80px;
	width: 610px;
	position: absolute;
	top:60px;
	left: 420px;
}

#input {
	height: 38px;
	width: 580px;
	border:2px solid #B61d1d;
	position: absolute;
	top: 10px;
	left:0px;
}

#input1 {
	height: 40px;
	width: 80px;
	border: 2px solid #B61d1d;
	position: absolute;
	top:12px;
	left:504px;
	background-color: #B61d1d;
	font-size: 20px;
	color: white;
}

#a {
	font-size:13.5px;
	position: absolute;
	top:55px;
	left: 0px;
}

#a a {
	color: #666666;
	text-decoration: none;
}

#a a {
	color: #666666;
	font-family:"楷体";
}

#a a:hover {
	color: #B61d1d;
}

#dao {
	position: absolute;
	top: 175px;
	left: 340px;
}

#dao a {
	text-decoration: none;
	color:black;
	font-size: 17px;
	font-family: "楷体";
}

#dao a:hover {
	color: #B61d1d;
}

#line {
	position: absolute;
	top: 200px;
	left: 0px;
}

#all {
	border: 0px solid red;
	position: absolute;
	height: 570px;
	width: 200px;
	top: 163px;
	left: 100px;
	font-size:14px;
}
</style>
	</head>

	<body>
		<div id="search">
			<%@include file="../header.jsp"%>

			
			<div id="search1">
				<input type="text" id="input">
				<input type="submit" value="搜索" id="input1" >
				<div id="a">
				&nbsp;
					<a href="#">阿迪达斯男鞋</a>&nbsp;
					<a href="#">耐克</a>&nbsp;
					<a href="#">阿迪达斯</a>&nbsp;
					<a href="#">耐克旗舰店男鞋</a> &nbsp;
					<a href="#">李宁男鞋</a>&nbsp;
					<a href="#">新百伦男鞋</a>&nbsp;
					<a href="#">安踏男鞋</a> &nbsp;
					
				</div>
			</div>

			<div id="dao">
			<a href="<%=basePath6 %>fristpage/search.jsp">首页</a>&nbsp;&nbsp;
				<a href="#">服装城</a>&nbsp;&nbsp;
				<a href="#">美妆馆</a>&nbsp;&nbsp;
				<a href="#">京东超市</a>&nbsp;&nbsp;
				<a href="#">生鲜</a> &nbsp;&nbsp;
				<a href="#">全球购</a>&nbsp;&nbsp;
				<a href="#">闪购</a>&nbsp;&nbsp;
				<a href="#">团购</a> &nbsp;&nbsp;
				<a href="#">拍卖</a>&nbsp;&nbsp;
				<a href="#">金融</a>
			</div>

			<div id="line">
				<hr color="#B61d1d" width="1360px">
			</div>

			<div id="all">
				<div
					style="background-color: #B61d1d; height: 47px; width: 202px; line-height: 45px; font-size: 18px; color: #ffffff; font-weight: bolder;">
					&nbsp;全部商品分类
				</div>
			</div>
	</body>
</html>
