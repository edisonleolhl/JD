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

<title>My JSP 'GouWuChe.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
#dingbu{
	width:1366px;
	height:300px;
	background-color:red;
}
/*消除a标签的下划线*/
#ttbar-mycity{
	width:1366px;
	height:30px;
	background-color:#f1f1f1
}
.a{
	float:left;
}
.aa{
	margin-top:-10px;
}
.a-1{
	
}
.a-1-1{
	float:left;

	list-style-type:none;
}
</style>
</head>

<body>
	<!-- 购物车页面 -->
	<div id="dingbu">
		<div id="ttbar-mycity">
		<ul class="a">
			<li class="aa">送至：北京</li>
		</ul>
		<ul class="a-1">		 
			<li class="a-1-1"><a>你好，请登录</a>  <a>免费注册</a> | </li>
			<li class="a-1-1"><a>我的订单 </a> | </li>
			<li class="a-1-1"><a>我的京东 </a> | </li>
			<li class="a-1-1"><a>京东会员</a> | </li>
			<li class="a-1-1"><a>企业采购 </a> | </li>
			<li class="a-1-1"><a>手机京东</a> | </li>
			<li class="a-1-1"><a>关注京东</a> | </li>
			<li class="a-1-1"><a>客户服务</a> | </li>
			<li class="a-1-1"><a>网站导航</a></li>
		</ul>
		</div>
	</div>
</body>
</html>
