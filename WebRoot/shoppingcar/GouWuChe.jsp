<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.shopping.models.*"%>
<%@page import="com.shopping.serveice.*"%>
<%@page import="com.shopping.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path9 = request.getContextPath();
	String basePath9 = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path9 + "/";
	User user = (User) session.getAttribute("USER");
	if(user==null){
%>
<script>
	alert("请登录");
	location.href = "../enter/DengRu.jsp";
</script>
<%
	return;
   	}
  		
	ShoesOrderService sos = new ShoesOrderService();
	ShoesService ss = new ShoesService();

	List<String> sellerList = sos.queryAllSeller(user.getAccount());
	List<List<ShoesOrder>> shoesordertotallist = new ArrayList<List<ShoesOrder>>();
	List<List<Integer>> shoescounttotallist = new ArrayList<List<Integer>>();

	for(int i = 0; i < sellerList.size(); i++){
		List<ShoesOrder> shoesorderlist = sos.queryShoesOrderBySeller(user.getAccount(), sellerList.get(i));
		shoesordertotallist.add(shoesorderlist);
		
		List<Integer> shoescountlist = new ArrayList<Integer>();
		for(ShoesOrder shoesorder : shoesorderlist){
			Shoes shoes = ss.SelectlById(shoesorder.getShoesId());
			int shoescount = shoes.getShoescount();
			System.out.println("shoescount = " + shoescount);
			shoescountlist.add(shoescount);
		}
		shoescounttotallist.add(shoescountlist);
	}
	System.out.println("shoesordertotallist.size() = " + shoesordertotallist.size());
	System.out.println("shoescounttotallist.size() = " + shoescounttotallist.size());
	
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath9%>">

<title>京东</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
#dingbu {
	width: 1366px;
	height: 160px;
	background-color: #ffffff;
	margin-top: -0px;
}

/*消除a标签的下划线*/
#ttbar-mycity {
	width: 1366px;
	height: 30px;
	background-color: #f1f1f1
}

.a-3-1 {
	width: 1366px;
	height: 88px;
	background-color: #ffffff;
}

.a-3-2 {
	margin-top: 20px;
	margin-left: -85px;
}

.a-3-3 {
	width: 100px;
	height: 40px;
	background-color: #ffffff;
	position: absolute;
	top: 60px;
	left: 402px;
}

.c-3-8 a
{color:black;
text-decoration: none;
}
.c-3-8 a:hover
{color:#E4393C;
text-decoration: none;
}
.a-3-4 {
	font-size: 23px;
	font-family: "微软雅黑";
	line-height: 45px;
	margin-left: 15px;
}

.a-4-1 {
	width: 318px;
	height: 30px;
	background-color: #c91623;
	float: right;
	margin-top: 38px;
	margin-right: 125px;
	background-color: #c91623;
}

.a-4-2 {
	border: 2px solid #c91623;
}

.a-4-3 {
	border: 2px solid #c91623;
	background-color: #c91623;
	color: #ffffff;
	font-family: "微软雅黑";
	margin-left: -8px;
}

.a-5-1 {
	width: 1145px;
	height: 45px;
	border: 1px solid #edd28b;
	margin-top: 10px;
	margin-left: 95px;
}

.b-1-1 {
	width: 980px;
	margin-left: 190px;
}

.b-1-2 {
	float: left;
}

.b-2-1 {
	border-bottom: 2px solid red;
	float: left;
}

.b-3-1 {
	width: 980px;
	height: 45px;
	background-color: #f3f3f3;
	border: 1px solid #e0e0e0;
	margin-top: 30px;
}

.c-1-1 {
	width: 980px;
	height: 52px;
	float: left;
	border: 2px solid #f0f0f0;
	margin-top: 10px;
}

.c-1-2 {
	color: #ffffff;
	font-family: "微软雅黑";
	font-size: 20px;
	margin-left: 18px;
	line-height: 50px;
}

.c-2-1 {
	width: 980px;
	height: 30px;
}

.c-2-2 {
	margin-top: 5px;
	border-bottom: 2px solid #aaaaaa;
}

.c-2-3 {
	font-size: 15px;
	color: #434343;
	font-family: "微软雅黑";
	font-weight: bold;
}

.c-3-1 {
	width: 980px;
	height: 103px;
	background-color: #fff4e8;
}

.c-3-2 {
	float: left;
	margin-top: 20px;
	margin-left: 13px;
}

.c-3-3 {
	width: 80px;
	height: 80px;
	border: 1px solid #eeeeee;
	background-color: #ffffff;
	float: left;
	margin-top: 10px;
	margin-left: 10px;
}

.c-3-4 {
	width: 400px;
	height: 70px;
	float: left;
	margin-top: 11px;
	margin-left: 5px;
}

.c-3-5 {
	width: 80px;
	height: 40px;
	float: left;
	margin-top: 11px;
	margin-left: 40px;
}

.c-3-6 {
	width: 90px;
	height: 40px;
	float: left;
	margin-top: 11px;
	margin-left: 25px;
}

.c-3-7 {
	width: 80px;
	height: 40px;
	float: left;
	margin-top: 10px;
	margin-left: 15px;
}

.c-3-8 {
	width: 100px;
	height: 30px;
	float: left;
	margin-top: 10px;
	margin-left: 15px;
}

.d-1 {
	margin-top: 20px;
	color: red;
	font-family: "微软雅黑";
	font-size: 20px;
}

.d-1-1 {
	width: 980px;
	height: 307px;
	margin-top: 10px;
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

.f-1-1 {
	margin-top: 20px;
	float: left;
}
</style>
<script type="text/javascript" src="<%=basePath9%>/js/jquery-1.8.2.js"></script>
<script type="text/javascript">
	
	function change(isChecked) {
var co=0;
		var ch = document.getElementsByTagName("input");
   var cc = document.getElementsByName("sh");
	for(var i = 0; i < cc.length; i++){
	
	co= cc.length;
	
	}
	 Number($(".prise a").text(co));
		for ( var i = 0; i < ch.length; i++) {
		
		
			if (ch[i].type == "checkbox") {
				ch[i].checked = isChecked;

				if($("[name=quan]").attr("checked") == "checked"){
				
				var $s = $("[name=se]").parent().parent().parent().children(
						".c-3-1").children(".c-3-7");
				var count = 0;
				
				$.each($s, function(i, obj) {
                  
					count = Number($(obj).text()) + Number(count);
					

				});
				 Number($(".prise span").text(count));
               
				
				
				
				}
				else{
				
				  Number($(".prise span").text(0));
				}
				
				 
			}
			
		
		}
		calAmtAndCount();
	}
	
			$(function() {
	   
		$("[value=-]")
				.click(
						function() {

							var num = $(this).parent().children("[type=text]")
									.val();

							if (num > 1) {
								$(this).parent().children("[type=text]").val(
										num - 1);

								//nu商品数量
								var nu = $(this).parent().children(
										"[type=text]").val();
								//zd商品id
								var zd=$(this).parent().children("[type=hidden]")
										.val();
								var url = "<%=path9%>/ModifyShoesOrderAmountServlet";
								var param = "id=" + zd + "&newAmount=" + nu;	
								$.post(url,param,function(result){
								});

								var money = $(this).parent().parent().children(
										".c-3-5").text();

								var prise = nu * money;

							
								$(this).parent().parent().children(".c-3-7")
										.text(prise);

								var sum = Number($(".prise span").text());
						        var s = Number($(".prise a").text());
						
					
						if($(this).parent().parent().children("input").attr("checked") == "checked"){
						
						
								$(".prise span").text(
										sum - ((num - nu) * money));
						
						$(".prise a").text(s-(num - nu));
						
						}
						
						

							} else {
								$(this).parent().children("[type=text]").val(
										num);
								var nu = $(this).parent().children(
										"[type=text]").val();
								var money = $(this).parent().parent().children(
										".c-3-5").text();
								var prise = 1 * money;
								var prise = nu * money;
								$(this).parent().parent().children(".c-3-7")
										.text(prise);
                                var s = Number($(".prise a").text());
								var sum = Number($(".prise span").text());
								if($(this).parent().parent().children("input").attr("checked") == "checked"){
								$(".prise a").text(s-(num - nu));
								$(".prise span").text(
									sum - ((nu - num) * money));
							
							
							
								}
								
								

							}
						});
	});

	$(function() {

		$("[name=jia]")
				.click(
						function() {

							var num = $(this).parent().children("[type=text]")
									.val();
             				var shu=$(this).parent().parent().children(".c-3-6").children("sapn").text();

							if (num >= 1 && num<Number(shu)) {
								var nu = num * 2 - num + 1;

								//nu是商品数量
								$(this).parent().children("[type=text]")
										.val(nu);
										
								//zd是id
								var zd=$(this).parent().children("[type=hidden]")
										.val();
										
								var url = "<%=path9%>/ModifyShoesOrderAmountServlet";
								var param = "id=" + zd + "&newAmount=" + nu;	
								$.post(url,param,function(result){
								});
								
								var nu = $(this).parent().children(
										"[type=text]").val();

								var money = $(this).parent().parent().children(
										".c-3-5").text();
     
										
								var prise = nu * money;
								$(this).parent().parent().children(".c-3-7")
										.text(prise);

								var sum = Number($(".prise span").text());
							
							
							var s = Number($(".prise a").text());
							
								if($(this).parent().parent().children("input").attr("checked") == "checked"){
								$(".prise span").text(
										sum + ((nu - num) * money));
								$(".prise a").text(Number(s)+Number(nu)-Number(num));
								}
							
								

							}else{
							alert("不能超过库存数量");
							
							}
						});

	});

	$(function() {

		$("[name=se]").click(
				function() {
					if ($(this).attr("checked") == "checked") {
						
						$(this).parent().parent().parent().children(".c-3-1")
								.children("input").attr("checked",
										$(this).attr("checked"));
                                
                       /*    
                              var sd=0;   
						 var $objs = $(this).parent().parent().parent()
								.children(".c-3-1").children("input");
                                  
						$.each($objs, function(i, obj) {
                        
                         sd=Number(i+1);
							$(obj).attr("checked", "checked");
                               
						});
                     	var summ = $(".prise a").text();
						var pi = Number(summ) + Number(sd);

                        Number($(".prise a").text(pi));

						
						
						var $bjs = $(this).parent().parent().parent().children(
								".c-3-1").children(".c-3-7");
           
						var count = 0;
						
						
						
						$.each($bjs, function(i, obj) {

							count = Number($(obj).text()) + Number(count);

						});

						var summ = $(".prise span").text();
						var pi = Number(summ) + Number(count);
						Number($(".prise span").text(pi));
						*/
					} else {
						$(this).parent().parent().parent().children(".c-3-1")
								.children("input").removeAttr("checked");
					/*
					      var sd=0;   
						var $objs = $(this).parent().parent().parent()
								.children(".c-3-1").children("input");
                                  
						$.each($objs, function(i, obj) {
                         sd=Number(i+1);
							
                               
						});
			
					var smm = $(".prise a").text();
					
					var pi = Number(smm) - Number(sd);
						Number($(".prise a").text(pi));
					
						var $bjs = $(this).parent().parent().parent().children(
								".c-3-1").children(".c-3-7");

						var count = 0;
					
						$.each($bjs, function(i, obj) {

							count = Number($(obj).text()) + Number(count);

						});

						var summ = $(".prise span").text();
						var pi = Number(summ) - Number(count);
						Number($(".prise span").text(pi));

*/	
					}
				
			calAmtAndCount();
				});
				
	});
	
	
	
	$(function() {

		$("[name=sh]").click(
		
				function() {
				/*
				if($(this).attr("checked") == "checked"){
			
			var prise=$(this).parent().children(".c-3-7").text();
				
				var summ = $(".prise span").text();
						var pi = Number(summ) + Number(prise);
						Number($(".prise span").text(pi));
		
				var summ = $(".prise a").text();
				var sss=Number(summ)+Number(1);
				Number($(".prise a").text(sss));
			
				}
				
				else{
				
			var prise=$(this).parent().children(".c-3-7").text();
				
				var summ = $(".prise span").text();
						var pi = Number(summ) - Number(prise);
						Number($(".prise span").text(pi));
		
				var summ = $(".prise a").text();
				var sss=Number(summ)-Number(1);
				Number($(".prise a").text(sss));
			
				
				
				}
				*/
				
				calAmtAndCount();
				
				
				});
				
				
				
				
				});
	
	
	
	
	
	
	
	
	
	function calAmtAndCount(){
		var $chb = $(".c-3-2");
		var num = 0;
		var amt = 0;
		
		$.each($chb,function(i,obj){
			if($(obj).attr("checked") == "checked"){
				amt +=Number($(obj).parent().children(".c-3-7").text());
				num +=Number($(obj).parent().children(".c-3-6").children(".te").val());
				iw=Number($(obj).parent().children(".c-3-6").children("input").val());
			
			}
		});
		$(".prise a").text(num);
		$(".prise span").text(amt);
		
	}
	
	
	
	
	
</script>
</head>

<body>
	<%@include file="../header.jsp"%>
	<form action="<%=basePath9 %>submitOrder.action" method="post">
	<!-- 购物车页面 -->
	<div id="dingbu">

		<div class="a-3-1">
			<img src="shoppingcarimg/logo-201305.png " class="a-3-2">
			<div class="a-3-3">
				<span class="a-3-4">购物车</span>
			</div>
			<div class="a-4-1">
				<input type="text" placeholder="自营"
					style="width: 270px; height: 28px;" class="a-4-2"> <input
					type="button" value="搜索" style="width: 48px; height: 28px;"
					class="a-4-3">
			</div>
		</div>
		
	</div>
	<!-- 商品栏居中 -->
	<div class="b-1-1">
		<!--商品栏 -->
		<div class="b-1-2">
			<div class="b-2-1">
				<a style="color: #e4393c; font-family: '微软雅黑'; font-size: 22px;">全部商品</a>
			</div>
			<div class="b-3-1">
				<div style="margin-top: 12px; margin-left: 10px;">
					<input type="checkbox" id="check" onclick="change(this.checked)"
						name="quan"> <a
						style="color: #e4393c; font-family: '微软雅黑'; font-size: 15px;">全选</a>
				</div>
				<div style="margin-top: -20px; margin-left: 100px;">
					<a style="font-family: '微软雅黑'; font-size: 15px;">商品</a>
				</div>
				<div style="margin-top: -20px; margin-left: 570px;">
					<a style="font-family: '微软雅黑'; font-size: 15px;">单价（元）</a>
				</div>
				<div style="margin-top: -20px; margin-left: 680px;">
					<a style="font-family: '微软雅黑'; font-size: 15px;">数量</a>
				</div>
				<div style="margin-top: -20px; margin-left: 775px;">
					<a style="font-family: '微软雅黑'; font-size: 15px;">小计（元）</a>
				</div>
				<div style="margin-top: -20px; margin-left: 875px;">
					<a style="font-family: '微软雅黑'; font-size: 15px;">操作</a>
				</div>
			</div>
			<%
				int sellerindex = 0;
			%>
			<c:forEach items="<%=sellerList %>" var="seller"
				varStatus="sellerstatus">
				<div>
					<div class="c-2-1" style="margin-top:0px">
						<div class="c-2-2">
							<input type="checkbox" style="margin-left: 13px" name="se">
							<a class="c-2-3">${seller }</a>
						</div>
					</div>
					<%
						int shoesorderindex = 0;
					 %>
					<c:forEach items="<%=shoesordertotallist.get(sellerindex) %>"
						var="shoesorder" varStatus="shoesorderseller">
						<div class="c-3-1">
							<input type="checkbox" class="c-3-2" name="sh" onclick="shop(this.checked)" value="${shoesorder.id }">


							<div class="c-3-3">


								<a><img
									src="<%=basePath9%>ShoesImg/${shoesorder.simg}"
									style="width: 80px; height: 80px;" /> </a>

							</div>
							<div class="c-3-4">
								<div
									style="font-size: 13px; float: left; margin-left: 10px; width: 220px; height: 50px;">
									<a>${shoesorder.shoesName }</a>
								</div>

								<div
									style="font-size: 13px; float: left; margin-left: 10px; width: 140px; height: 25px">
									颜色:${shoesorder.shoesColor }</div>
								<div
									style="font-size: 13px; float: left; margin-left: 10px; width: 60px; height: 25px;">
									尺码:${shoesorder.size }</div>
							</div>
							<div class="c-3-5">${shoesorder.shoesPrice }</div>
							<div class="c-3-6">
								<input type="hidden" value="${shoesorder.id }" /><input type="button" value="-" name="jian"><input type="text" value="${shoesorder.amount}" size=1 class="te"><input type="button" value="+" name="jia">
								<%
									
								%>
								<a style="font-size: 13px; color: red;">&nbsp;库存</a>
								<sapn><%=shoescounttotallist.get(sellerindex).get(shoesorderindex) %></sapn>

							</div>

							<div class="c-3-7">

								${shoesorder.shoesPrice*shoesorder.amount }</div>

							<div class="c-3-8">
								<a href="/JD/DelShoesOrderServlet?UserAccount=<%=user.getAccount()%>&ShoesOrderid=${shoesorder.id }">删除</a>
							</div>
							<%
								shoesorderindex++;
							 %>
						</div>
					</c:forEach>


					<%
						sellerindex++;
					%>
				</div>
			</c:forEach>

		</div>









		<div class="c-1-1">
			<div style="margin-top: 12px; margin-left: 10px;">
				<input type="radio"> 全选
			</div>
			<div style="margin-top: -20px; margin-left: 100px;">
				<a>删除选中的商品</a>
			</div>

			<div class="prise"
				style="float: right; margin-right: 120px; margin-top: -20px;color:#999999">
				已选择 <a style="color:#e4393c;">0</a>件商品 &nbsp;总计 <strong><span
					style="color:#e4393c;">0</span>&nbsp;</strong>元
			</div>

				<input type="submit"  class="c-1-2" value="去结账" style=" width: 100px; height: 52px; background-color: #e54346;margin-top: -29px; margin-left: 880px;border:none;">
			
		</div>
		<!--图片切换 -->
		<div class="d-2-1">
			<div class="d-1">
				<a>猜你喜欢的</a>
			</div>
			<div class="d-1-1">
				<div class="d-1-2">
					<img src="shoppingcarimg/568b809aN5bc1894c.jpg"
						style="margin-top: 35px; margin-left: 40px;" />

					<p style="font-size: 13px; margin-left: 10px; margin-right: 10px;">
						[2016]春季demo韩版新款小脚裤男 2577-672222-064黑+灰</p>
					<p
						style="font-size: 16px; color: red; margin-left: 20px; margin-right: 20px;">
						&nbsp;&nbsp;&nbsp;&nbsp;￥222.00</p>
				</div>
				<div class="d-1-2">
					<img src="shoppingcarimg/57172bd8N0b790113.jpg"
						style="margin-top: 35px; margin-left: 40px;" />
					<p style="font-size: 13px; margin-left: 10px; margin-right: 10px;">
						ZJ NIKE耐克男鞋Flight休闲鞋新款运动鞋306252-027 306252-026黑+水泥灰</p>
					<p
						style="font-size: 16px; color: red; margin-left: 20px; margin-right: 20px;">
						&nbsp;&nbsp;&nbsp;&nbsp;￥527.00</p>
				</div>
				<div class="d-1-2">
					<img src="shoppingcarimg/574e5417N16f9c436.jpg"
						style="margin-top: 35px; margin-left: 40px;" />
					<p style="font-size: 13px; margin-left: 10px; margin-right: 10px;">
						【团购】耐克Nike2016新款男鞋跑步鞋运动鞋air max跑步806771-001</p>
					<p
						style="font-size: 16px; color: red; margin-left: 20px; margin-right: 20px;">
						&nbsp;&nbsp;&nbsp;&nbsp;￥624.00</p>
				</div>
				<div class="d-1-2" style="width:230px;height:200px;" >
					<img src="shoppingcarimg/5795b8b3Nf68e71e5.jpg"
						style="margin-top: 35px; margin-left:40px;" />
					<p style="font-size: 13px; margin-left:5px; margin-right: 10px;">
						筱沐2016春秋季女装上新品韩版妈妈装蕾丝雪纺包臀印花两件外套大码时尚</p>
					<p
						style="font-size: 16px; color: red; margin-left: 20px; margin-right: 20px;">
						&nbsp;&nbsp;&nbsp;&nbsp;￥156.00</p>
				</div>
			</div>
		</div>
	</div>
	
	</form>
	<div class="f-1-1"><%@include file="../showfristpage/last.jsp"%></div>
	<!--全部商品-->
</body>

</html>
