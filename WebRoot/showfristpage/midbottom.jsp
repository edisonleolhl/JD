<%@page import="com.shopping.models.PageBean"%>
<%@page import="com.shopping.models.Shoes"%>
<%@page import="com.shopping.serveice.ShoesService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'midbottom.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<style>
a {
	color: black;
	text-decoration: none;
}

a:hover {
	color: #E4393C;
}

img {
	cursor: pointer;
}
</style>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript">
$(function(){
	$(".frib").mouseover(function(){
		var img=$(this).children().attr("src");
		$(this).parent().children(".fria").children().attr("src",img);
	});
	
});

function goPage(url){
	location.href=url;
}

function goPage2(url){
	location.href=url;
}

function goPage3(){
	var page = document.getElementById("page").value;
	location.href='<%=request.getContextPath()%>/Myservlet?currentPage='+ page;
	}
</script>
<body>
	<div class="bottompage"
		style="width: 965px; height: 2230px; border: 1px solid #f3f3f3; float: left;">

		<!-- 第一排 第一个 -->

		<c:forEach items="${page.data }" var="l">
			<div class="fri"
				style="width: 220px; height: 400px;  float: left; margin-top: 20px; margin-left: 15px;">

				<div class="fria"
					style="width: 220px; height: 220px; background-color: black; float: left; margin-top: 8px;">
					<img src="ShoesImg/${l.shoesimg}" width="220px" height="220px" />
				</div>
				<c:forEach items="${map }" var="ll">
				
					<c:if test="${ll.key==l.shoesid }">
						<c:forEach items="${ll.value }" var="v">

							<div class="frib"
								style="border:1px gray solid;background-color: green; width: 30px; height: 30px; float: left; margin-top: 15px; margin-left: 4px;">
								<img src="ShoesImg/${v}" width="30px" height="30px">
							</div>

						</c:forEach>
					</c:if>
				</c:forEach>


				<div style="margin-right:150px;">

					<strong style="margin-top: 50px; color:black;"> <span
						style="font-size:23px;color:#E4393C;">￥${l.shoesprice }</span>
					</strong>
				</div>
				<p style="margin-top: 5px; color: black;font-size:13px;">
					<a href="<%=request.getContextPath() %>/Shoesinfo?shoesid=${l.shoesid}">${l.shoesname}</a>
				</p>
				<p style="margin-top: 5px; font-size: 13px;">
					已有 <span style="color: blue">${l.shoesdesc}</span>人评价
				</p>
				<p style="margin-top: 5px; font-size: 13px;">${l.shoesroom}</p>

			</div>
			
			
		</c:forEach>


		<div class="fen"
			style="width: 880px; height: 60px;  margin-top: 40px; float: right; margin-right: 30px;">


			<input type="button" value="上一页"
				onclick="goPage('<%=request.getContextPath() %>/Myservlet?currentPage=${page.prePage }')"
				style="float:left;margin-left: 90px; margin-top: 20px; font-size: 14px;">

			<%
				PageBean p = (PageBean) request.getAttribute("page");
				for (int i = 1; i <= p.getPageCount(); i++) {
					if (i == p.getCurrentPage()) {
			%>

			<div
				style="background-color: #f3f3f3;width:23px;height:23px;border:1px solid #848282;padding-left: 12px; padding-top: 10px; 
						float:left;margin-left:20px;margin-top:13px;color:red;">
				<%=i%>
			</div>

			<%
				} else {
			%>
			<div
				style="background-color: #f3f3f3;width:23px;height:23px;border:1px solid #848282;padding-left: 12px; padding-top: 10px; 
						float:left;margin-left:20px;margin-top:13px;">
				<%=i%>
			</div>
			<%
				}
				}
			%>

			<div class="lastpage" style="margin-left: 330px; margin-top: -30px;">
				&nbsp;&nbsp;&nbsp; <input type="button" value="下一页"
					onclick="goPage2('<%=request.getContextPath() %>/Myservlet?currentPage=${page.nextPage }')"
					style="font-size: 14px;float:left;margin-top:20px;"> &nbsp;
				<span style="float:left;margin-top:15px;margin-left:150px;">共<strong>${page.pageCount }</strong>页
					到第
				</span>
				<div class="fen4"
					style="float:left;width: 23px; height: 23px; margin-top:0px; margin-left:0px; padding-left: 12px; padding-top: 10px; font-family: 楷体">
					<input type="text" style="float:left;width: 25px; height: 25px;"
						value="1" id="page">

				</div>
				<div class="p"
					style="margin-top:0px; margin-left:15px;float:left;">
					<span style="float:left;width:10px;height:10px;margin-top:15px;margin-left:3px;">页&nbsp;</span> 
					&nbsp;
					<input type="button" value="确定" onclick="goPage3()"
						style="float:left;height: 37px;margin-left:15px;margin-top:7px;">
				</div>
			</div>

		</div>


	</div>
</body>
</html>
