<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>My JSP 'RaiKe.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
/*头部*/
#last {
	width: 1344px;
	
	border: 0px solid red;
}
/*第一部分*/
#a {
	width: 1344px;
	height: 35px;
	border-top: 1px solid white;
	background-color: #f1f1f1;
}

.a-1-1 {
	margin-left: 40px;
	margin-top: -8px;
}

.a-2-1 {
	float: right;
}

.a-2-2 {
	margin-top: -50px;
	margin-right: 420px;
}

.a-2-3 {
	margin-top: -18px;
	margin-left: 172px;
}

.a-2-4 {
	margin-top: -18px;
	margin-left: 251px;
}

.a-2-5 {
	width: 117px;
	height: 35px;
	margin-top: -24px;
	margin-left: 316px;
}

.a-2-5:hover {
	background-color: #ffffff;
	width: 117px;
	height: 35px;
	margin-top: -25px;
	color:red;
}

#a-2-7 {
	margin-left: 30px;
	position: absolute;
	top: 18px;
}

.a-2-6 {
	width: 240px;
	height: 150px;
	border-left: 0px solid #EAEAEA;
	border-bottom: 0px solid #EAEAEA;
	border-right: 0px solid #EAEAEA;
	background-color: #ffffff;
	position: absolute;
	right: 144px;
}
.a-3-1{
	color:#777;
	font-family:"微软雅黑";
	font-size:13px;
}
.a-3-1:hover{
	color:red;
}
.img4 {
	margin-top: 20px;
	margin-left: 5px;
}

ul li {
	list-style-type: none;
}

ul li a {
	text-decoration: none;
}
/*锚链接*/
.maolianjie{
	width:42px;
	height:42px;
	border:1px solid rgb(153, 153, 153);
	background-color:rgb(153, 153, 153);
	position: fixed;
	top:550px;
	left:1285px;
}
.mao{
	display: block;
    width: 42px;
    height: 40px;
    line-height: 12px;
    padding-top:15px;
    text-align:center;
    font-family: simsun;
    margin-left:0px;
    color:#ffffff;
    font-family:"微软雅黑";
}
/*第二部分*/
#b {
	width: 1344px;
	height: 100px;
}

.b-1-1 {
	margin-left: 50px;
}

.b-1-2 {
	border: 1px solid #EAEAEA;
	width: 100px;
	height: 30px;
	float: right;
	margin-top: -75px;
	margin-right: 80px;
	background-color: #F8F8F8;
}

.b-1-3 {
	font-size: 14px;
	margin-left: 30px;
}
/*第三部分*/
#c {
	width: 1344px;
	height: 37px;
	border: 1px solid white;
	background-color: #cb111b;
}

.c-1-1 {
	margin-left: 20px;
}

.c-1-2 {
	float: left;
	margin-top: -16px;
	font-weight: bold;
	width: 100px;
	height: 37px;
	line-height: 37px;
}

.c-1-2:hover {
	background-color: #bd302b;
}

.c-1-3 {
	color: #ffffff;
	margin-left: 18px;
	font-size: 15px;
}
/*第四部分*/
#d {
	width: 1344px;
	height: 650px;
	border: 0px solid red;
}

.d-1-1 {
	font-weight: bold;
	color: #333333;
	text-decoration: none;
	margin-left: 55px;
	line-height: 40px;
	font-size: 15px;
	font-family: "微软雅黑";
}

.d-1-1:hover {
	color: #333333;
	text-decoration: underline;
}

.d-2-1 {
	width: 1095px;
	height: 570px;
	border-top: 1px solid #eaeaea;
	border-bottom: 0px solid red;
	margin-left: 55px;
}

.d-2-2 {
	width: 420px;
	height: 510px;
	border: 0px solid red;
	margin-top: 8px;
}

.d-2-3 {
	width: 400px;
	height: 400px;
	border: 1px solid gray;
	margin-top: 5px;
	margin-left: 9px;
}

.d-2-4 {
    float:left;
	width: 63px;
	height: 63px;
	border: 1px solid gray;
	margin-top: 15px;
	margin-left: 9px;
}

.d-3-1 {
	width: 645px;
	height: 524px;
	border: 0px solid red;
	float: right;
	margin-top: -512px;
}
/*第五部分*/
#e {
	width: 1344px;
	height: 4896px;
	border: 0px solid red;
	margin-top: 10px;
}

.e-1-1 {
	width: 1210px;
	height: 4881px;
	border: 0px solid red;
	margin-top: 15px;
	margin-left: 55px;
}

.e-2-1 {
	width: 230px;
	height: 600px;
	border: 0px solid red;
	float: left;
}

.e-2-2 {
	width: 228px;
	height: 41px;
	border: 1px solid white;
	background-color: #f7f7f7;
	font-family: "微软雅黑";
}

.e-2-3 {
	margin-top: 10px;
	margin-left: 10px;
}

.e-3-1 {
	width: 930px;
	height: 44px;
	border: 0px solid #eaeaea;
	float: right;
	background-color: #f7f7f7;
	float: right;
}

.e-3-2 {
	margin-top: -1px;
	margin-left: -40px;
}

.e-3-3 {
	width: 153px;
	height: 43px;
	border: 0px solid #eaeaea;
	float: left;
	text-align: center;
	line-height: 42px;
	font-family: "微软雅黑";
	font-size: 14px;
}

.e-4-1 {
	width: 930px;
	height: 200px;
	border: 0px solid red;
	float: right;
	margin-top: 10px;
}

.e-5-1 {
	width: 930px;
	height: 3020px;
	border: 0px solid red;
	float: right;
	margin-top: 10px;
}

.e-5-2 {
	width: 790px;
	height: 3013px;
	border: 0px solid #ffffff;
}

.e-5-3 {
	width: 789px;
	height: 29px;
	border: 0px solid #ffffff;
	background-color: #dddddd;
}

.e-5-4 {
	width: 789px;
	height: 93px;
}

div table tr td {
	text-align: center;
	color: #9999Af;
}
/**********************/
.f {
    float:right;
	width: 950px;
	height: 1575px;
	float: right;
	margin-top: 15px;
	border: 0px solid red;
}

.f-1-1 {
	width: 950px;
	height: 150px;
	border: 0px solid red;
	border-top: 2px solid #999999;
}

.f-1-2 {
	width: 950px;
	height: 50px;
	line-height:50px;
	background-color:#F7F7F7;
}

.f-1-3 {
	font-family: "微软雅黑";
	margin-left: 20px;
	
}

.f-2-1 {
	width: 950px;
	height: 40px;
	border: 0px solid red;
	margin-top: 10px;
}
.f-3-1 {
	width: 950px;
	height: 450px;
	border-top: 0px solid #999999;
	border-bottom: 0px solid red;
	margin-top: 15px;
}
/*售后保障*/
.j-1-1 {
	color: #333333;
	font-family: "微软雅黑";
	margin-left: 37px;
	font-size: 16px;
}

.j-2-1 {
	color: #777777;
	font-family: "微软雅黑";
	font-size: 15px;
	font-weight: bold;
	margin-top: 10px;
	margin-bottom: 7px;
}
img
{
cursor: pointer;
}
#d-3-2 a
{
text-decoration:none;
}
#d-3-2 a:hover
{
text-decoration:none;
color:#E4393C;
}
.choese
{
cursor: pointer;
}
.b-1-2 a{
color:black;
text-decoration: none;
}
.b-1-2 a:hover{
color:#E4393C;
text-decoration: none;
}
.b-1-2{
line-height:30px;
}
.l-1-3{
	width:190px;
	height:50px;
	border:0px solid red;
	font-family:"微软雅黑";
	font-size:12px;
	float:left;
	margin-left:18px;
}
.l-1-3:hover{
	font-family:"微软雅黑";
	font-size:12px;
	color:red;
 }
  .l-1-4{
 	font-family:"微软雅黑";
 	font-size:20px;
 	color:red;
 	margin-left:18px;
 }
 #lianxi
 {
 float:right;
 margin-right:30px;
 }
 #lianxi a{
 color:gray;
 text-decoration: none;
 font-size:14px;
 }
 #lianxi a:hover{
 color:#E4393C;
 text-decoration: none;
 }

.smallimgborder{height:400px;width:400px;border:1px solid #000000;overflow:hidden;position:relative;margin-left:0px;z-index:2;}
.smallimgborder img{height:400px;}
.largeimgborder{height:300px;width:300px;border:1px solid #000000;overflow:hidden;position:absolute;z-index:1000;display:none;left:474px;margin-top:-400px;}
</style>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.js"></script>
<script type="text/javascript">
	/*隐藏图片*/
	$(function() {

		$(".a-2-5").mouseover(function() {
			$(".a-2-6").show();
			$(".a-2-6").css("color","red");
		});
		$(".a-2-5").mouseout(function() {
			$(".a-2-6").hide();
		});
	});
	/*隐藏和显示*/
	function huan(obj){obj.innerHTML="∧"};
	function huan1(obj){obj.innerHTML="顶部"};
	$(function(){
		$(".maolianjie").hover(
			function(){
				$(".maolianjie").css("background-color","#c81623");
			},
			function(){
				$(".maolianjie").css("background-color","rgb(153, 153, 153)");
		});
	});
	/*滚动条*/
	$(window).scroll(function(){
        var st = $(this).scrollTop()+540;
        $(".maolianjie").css("top",st);
    });
    $(".maolianjie").find("a").click(function(){
        $(".maolianjie").hide();
    });
    //返回顶部
    jQuery(document).ready(function($){
	// browser window scroll (in pixels) after which the "back to top" link is shown
	var offset = 300,
		//browser window scroll (in pixels) after which the "back to top" link opacity is reduced
		offset_opacity = 1200,
		//duration of the top scrolling animation (in ms)
		scroll_top_duration = 700,
		//grab the "back to top" link
		$back_to_top = $('.maolianjie');

	//hide or show the "back to top" link
	$(window).scroll(function(){
		//( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
		//if( $(this).scrollTop() > offset_opacity ) { 
		//	$back_to_top.addClass('cd-fade-out');
		//}
		$('.maolianjie').css("position","absolute").top = $(this).top+550;
	});

	//smooth scroll to top
	$back_to_top.on('click', function(event){
		event.preventDefault();
		$('body,html').animate({
			scrollTop: 0 ,
		 	}, scroll_top_duration
		);
	});
});
	/*边框变颜色*/
	$(function() {
		$(".b-1-2").mouseover(function() {
			$(".b-1-2").css("border", "1px solid red");
		});
		$(".b-1-2").mouseout(function() {
			$(".b-1-2").css("border", "1px solid #EAEAEA");
		});
	});
	
	
	
	$(function(){
		var img_=$("#smallimgborderimg").attr("src");
		magnifier.bigimgurl = img_;
		$(".d-2-4").mouseover(function(){
			var img=$(this).children().attr("src");
			magnifier.bigimgurl = img;
			$("#smallimgborderimg").attr("src",img);
			$("#largeimgborderimg").attr("src",img);
		});
		
		$(".choese").click(function(){
			$(".choese").css("border","1px solid gray");
			$(this).css("border","2px solid #DF3033");
			$("[name=ShoesColor]").val($(this).attr("choese"));
			$("[name=Simg]").val($(this).attr("choeseImg"));
		});
		
		$(".choeseSize").click(function(){
			$(".choeseSize").css("border","1px solid gray");
			$(this).css("border","2px solid #DF3033");
			$("[name=Size]").val($(this).attr("choeseSize"));
		});
	});
	
	$(function(){
		$("#addNum").click(function(){
			var num = parseInt($("#buyNum").html());
			$("#buyNum").html(num+1);
			$("[name=Amount]").val(num+1);
		});
		
		$("#lessNum").click(function(){
			var num = $("#buyNum").html();
			if(num>1){
				$("#buyNum").html(num-1);
				$("[name=Amount]").val(num-1);
			}else{
				alert("数量最少为1！");
				$("[name=Amount]").val(num);
			}
			
		});
		
	});
	
	
	var smallimgborderimg="";
	
	
	var magnifier={
			multiple:2,//放大倍数，手动设置
			smallimgborderid:"smallimgborder",//小图div id,手动设置
			bigimgurl:"images/1.jpg",//大图图片url，手动修改
			bigimgborderid:"largeimgborder",//显示大图div id，手动设置
			bigimgid:"largeimgborderimg",//大图图片id，手动设置
			
			smallimgheight:0,//小图高度,自动设置
			smallimgwidth:0,//小图宽度，自动设置
			bigimgheight:0,//大图高度，自动设置
			bigimgwidth:0,//大图宽度，自动设置
			bigborderheight:0,//大图div高度，自动设置
			bigborderwidth:0,//大图div宽度，自动设置
			bigborderheight2:0,//大图div高度一半，自动设置
			bigborderwidth2:0,//大图div宽度一半，自动设置
			bigborderobj:null,//大图div，自动设置
			smallborderobj:null,//小图div对象，自动设置
			bigimgobj:null,//大图图像对象，自动设置
			mover:function(event,obj){//鼠标进入图像
				this.smallborderobj = document.getElementById(this.smallimgborderid);//小图div对象
				this.bigborderobj = document.getElementById(this.bigimgborderid);//大图div对象
				this.bigimgobj = document.getElementById(this.bigimgid);
				
				//设置小图宽、高
				this.smallimgheight = obj.height;
				this.smallimgwidth = obj.width;
				
				this.bigimgheight = this.multiple*this.smallimgheight;//设置大图高度
				this.bigimgwidth = this.multiple*this.smallimgwidth;//设置大图高度
				this.bigimgobj.src=this.bigimgurl;//设置大图src
				this.bigimgobj.height=this.bigimgheight;//设置大图高度
				
				//显示弹出层，可以对弹出层绝对定位
				this.bigborderobj.style.display="block";//显示div
				
				//计算宽度高度
				this.bigborderheight = (this.bigborderobj.offsetHeight);//显示大图div高度
				this.bigborderwidth = (this.bigborderobj.offsetWidth);//显示大图div宽度
				this.bigborderheight2 = (this.bigborderheight)/2;//显示大图div高度一半
				this.bigborderwidth2 = (this.bigborderwidth)/2;//显示大图div宽度一半
				this.bigborderheight2 = parseInt(this.bigborderheight2);//显示大图div高度一半
				this.bigborderwidth2 = parseInt(this.bigborderwidth2);//显示大图div宽度一半
				//alert(window.pageYOffset)
				//alert(document.documentElement.scrollTop)
			},
			mout:function(event){//鼠标移出图像
				this.bigborderobj.style.display="none";//鼠标移出小图区域，隐藏弹出层
			},
			mmove:function(event,obj){//鼠标在图像内移动
				var ml = event.clientX+document.documentElement.scrollLeft;//鼠标距离左侧距离
				var mt = event.clientY+document.documentElement.scrollTop;//鼠标距离上边距离
				var t = this.smallborderobj.offsetTop;//小图边框距离上边距离
				var l = this.smallborderobj.offsetLeft;//小图边框距离左侧距离
				var offsetl = ml-l;//鼠标在小图像上的位置 X
				var offsett = mt-t;//鼠标在小图象上的位置 Y
				offsetl = this.multiple*offsetl-this.bigborderheight2;//大图需要移动的X轴距离
				offsett = this.multiple*offsett-this.bigborderwidth2;//大图需要移动Y轴距离
				
				//防止大图左右出现空白
				if(offsetl<0)
				{
					offsetl = 0;
				}
				else if(offsetl>(this.bigimgwidth-this.bigborderwidth))
				{
					offsetl = this.bigimgwidth-this.bigborderwidth;
				}
				
				//防止大图上下出现空白
				if(offsett<0)
				{
					offsett = 0;
				}
				else if(offsett>(this.bigimgheight-this.bigborderheight))
				{
					offsett = this.bigimgheight-this.bigborderheight;
				}
				
				this.bigimgobj.style.marginLeft = -offsetl+"px";//设置大图移动距离
				this.bigimgobj.style.marginTop = -offsett+"px";//设置大图移动距离
				document.getElementById("test").innerHTML = "==="+this.bigborderobj.style.width+"==="+ml+" / "+mt+" ==== "+offsetl+" / "+offsett+"===="+this.bigborderheight2+" / "+this.bigborderwidth2+(document.getElementById(this.bigimgborderid)).style.width+"===="+this.bigimgwidth+" / "+this.bigimgheight;
			}
		}
		
	$(function(){
		$("input[name=addtoshoppingcar]").click(function(){
			$("#largeimgborderimg").clone().appendTo(document.body)
			.css("position","absolute")
			.animate(
				{
					opacity:0,
					height:0,
					width:0,
					top:$(".b-1-2").offset().top,
					left:$(".b-1-2").offset().left
				},2000
				
			
			);
		});
	});
	
	
	
	/*字体变颜色
	$(function(){
		$(".d-1-1").mouseover(function(){
			$(".d-1-1").css("background-color","#bd302b");
		});
		$(".d-1-1").mouseout(function(){
			$(".d-1-1").css("background-color","#efefef");
		});
	});
	 */
</script>
</head>

<body>
	<!-- 首页 -->
	<div id="last">
		
		<div class="maolianjie">
			<a>
			<span class="mao" style="font-size:15px;" onmouseover="huan1(this);" onmouseout="huan(this);">∧</span>
			</a>
		</div>
		<!-- 第二部分 -->
		<div id="b">
			<div class="b-1-1">
				<img src="dengluimg/naike/logo-new.jpg">&nbsp;&nbsp;&nbsp;<img
					src="dengluimg/naike/logo-ad.jpg">
			</div>
			<div class="b-1-2">
				<a class="b-1-3" href="<%=basePath %>shoppingcar/GouWuChe.jsp">购物袋</a>
			</div>
		</div>
		<!-- 第三部分 -->
		<div id="c">
			<div>
				<ul class="c-1-1">
					<li class="c-1-2"><a href="#" class="c-1-3">今日上新</a></li>
					<li class="c-1-2"><a href="#" class="c-1-3">闪购自营</a></li>
					<li class="c-1-2"><a href="#" class="c-1-3">潮流服饰</a>
					</li>
					<li class="c-1-2"><a href="#" class="c-1-3">品质鞋包</a>
					</li>
					<li class="c-1-2"><a href="#" class="c-1-3">运动户外</a>
					</li>
					<li class="c-1-2"><a href="#" class="c-1-3">居家生活</a>
					</li>
					<li class="c-1-2"><a href="#" class="c-1-3">母婴童装</a>
					</li>
					<li class="c-1-2"><a href="#" class="c-1-3">时尚轻奢</a>
					</li>
				</ul>
			</div>
		</div>
		
		
		
		<!-- 第四部分 -->
		<div id="d">
			<a href="#" class="d-1-1">首页</a>
			<div class="d-2-1">
				<div class="d-2-2">
					<div class="d-2-3">
						<div class="smallimgborder" id="smallimgborder" style="position:relative ">
							<img id="smallimgborderimg" onMouseOut="magnifier.mout(event)" onMouseOver="magnifier.mover(event,this)" onMouseMove="magnifier.mmove(event,this)" src="ShoesImg/${ShoesImg.shoesImg1 }" width="400px" height="400px" />
						</div>
						<div id="largeimgborder" class="largeimgborder"><img id="largeimgborderimg" src="ShoesImg/${ShoesImg.shoesImg1 }"></div>
					</div>
					 <c:if test="${ShoesImg.shoesImg1 != null }">
						<div class="d-2-4">
							<img src="ShoesImg/${ShoesImg.shoesImg1 }" width="63px" height="63px" />
						</div>
						
					</c:if>
					<c:if test="${ShoesImg.shoesImg2 != null }">
						<div class="d-2-4">
							<img src="ShoesImg/${ShoesImg.shoesImg2 }" width="63px" height="63px" />
						</div>
					</c:if>
					<c:if test="${ShoesImg.shoesImg3 != null }">
						<div class="d-2-4">
							<img src="ShoesImg/${ShoesImg.shoesImg3 }" width="63px" height="63px" />
						</div>
					</c:if>
					<c:if test="${ShoesImg.shoesImg4 != null }">
						<div class="d-2-4">
							<img src="ShoesImg/${ShoesImg.shoesImg4 }" width="63px" height="63px" />
						</div>
					</c:if>
					<c:if test="${ShoesImg.shoesImg5 != null }">
						<div class="d-2-4">
							<img src="ShoesImg/${ShoesImg.shoesImg5 }" width="63px" height="63px" />
						</div>
					</c:if>
					<c:if test="${ShoesImg.shoesImg6 != null }">
						<div class="d-2-4">
							<img src="ShoesImg/${ShoesImg.shoesImg6 }" width="63px" height="63px" />
						</div>
					</c:if>
				</div>
				<div class="d-3-1">
					<div id="d-3-2">
					<Strong style="color:#666666; font-size:20px;float:left;">
					${Shoes.shoesName }
					</Strong>
					
					<div style="width:645px;height:90px;background-color:#EFEFEF;float:left;margin-top:5px;line-height:40px;">
					<span style="color:gray;font-size:14px;">京 东 价</span>&nbsp;<span style="color:#E4393C;">￥</span><span style="font-size:25px;color:#E4393C;">${Shoes.shoesPrice}</span>
					<a href="#" style="font-size:15px;margin-left:50px;">降价通知</a>
					<span style="float:right;margin-right:10px;">累积评价  <a href="#">${Shoes.shoesAvailableAmount }</a></span><br>
					<span style="color:gray;font-size:14px;float:left;">促   &nbsp;  销</span>&nbsp;<div style="float:left;margin-left:20px;background-color:#F0999B;height:30px;line-height:30px;margin-top:5px;"><span style="font-size:14px;color:white;">手机专享价</span></div>
					<span style="color:gray;font-size:14px;float:left;margin-left:5px;">￥${Shoes.shoesPrice-50}</span><span style="float:left;margin-left:50px;font-size:14px;">去手机购买</span><span id="lianxi">
					<a href="http://wpa.qq.com/msgrd?v=3&uin=1279264643&site=qq&menu=yes">联系卖家</a>
					</span>
					</div>
					<div style="line-height:30px;">
					<span style="color:gray;font-size:14px;float:left;margin-top:5px;">配 送 至</span>&nbsp;<span style="font-size:13px;">北京朝阳区三环以内    &nbsp;&nbsp;&nbsp;店铺单笔订单不满388元，收运费10元 <br>&nbsp;<span style="color:gray;padding-top:5px;">由<span style="color:#E4393C;">${Shoes.shoesSeller}</span> 发货，并提供售后服务。</span></span>
					</div>
					<hr color="#EFEFEF">
					<div>
					<span style="color:gray;font-size:14px;float:left;">选择颜色</span>&nbsp;
					 <c:if test="${ShoesImg.shoesImg1 != null && ShoesColor.color1 != null}">
						<div class="choese" Style="float:left;margin-left:10px;border:1px solid gray;height:40px;" choese="${ShoesColor.color1}" choeseImg="${ShoesImg.shoesImg1 }" >
							<img src="ShoesImg/${ShoesImg.shoesImg1 }" width="40px" height="40px" style="float:left;"/><span style="float:left;margin-left:5px;margin-top:11px;margin-right:5px;font-size:13px;color:gray;">${ShoesColor.color1}</span>
						</div>
						</c:if>
						
						<c:if test="${ShoesImg.shoesImg2 != null && ShoesColor.color2 != null}">
						<div class="choese" Style="float:left;margin-left:10px;border:1px solid gray;height:40px;"  choese="${ShoesColor.color2}" choeseImg="${ShoesImg.shoesImg2 }" >
							<img src="ShoesImg/${ShoesImg.shoesImg2 }" width="40px" height="40px" style="float:left;"/><span style="float:left;margin-left:5px;margin-top:11px;margin-right:5px;font-size:13px;color:gray;">${ShoesColor.color2}</span>
						</div>
						</c:if>
						
						<c:if test="${ShoesImg.shoesImg3 != null && ShoesColor.color3 != null}">
						<div class="choese" Style="float:left;margin-left:10px;border:1px solid gray;height:40px;"  choese="${ShoesColor.color3}" choeseImg="${ShoesImg.shoesImg3 }" >
							<img src="ShoesImg/${ShoesImg.shoesImg3 }" width="40px" height="40px" style="float:left;"/><span style="float:left;margin-left:5px;margin-top:11px;margin-right:5px;font-size:13px;color:gray;">${ShoesColor.color3}</span>
						</div>
						</c:if>
						
						<c:if test="${ShoesImg.shoesImg4 != null && ShoesColor.color4 != null}">
						<div class="choese" Style="float:left;margin-left:10px;border:1px solid gray;height:40px;"  choese="${ShoesColor.color4} " choeseImg="${ShoesImg.shoesImg4 }" >
							<img src="ShoesImg/${ShoesImg.shoesImg4 }" width="40px" height="40px" style="float:left;"/><span style="float:left;margin-left:5px;margin-top:11px;margin-right:5px;font-size:13px;color:gray;">${ShoesColor.color4}</span>
						</div>
						</c:if>
						
						<c:if test="${ShoesImg.shoesImg5 != null && ShoesColor.color5 != null}">
						<div class="choese" Style="float:left;margin-left:10px;border:1px solid gray;height:40px;"  choese="${ShoesColor.color5}" choeseImg="${ShoesImg.shoesImg5}" >
							<img src="ShoesImg/${ShoesImg.shoesImg5 }" width="40px" height="40px" style="float:left;"/><span style="float:left;margin-left:5px;margin-top:11px;margin-right:5px;font-size:13px;color:gray;">${ShoesColor.color5}</span>
						</div>
						</c:if>
						
						<c:if test="${ShoesImg.shoesImg6 != null && ShoesColor.color6 != null}">
						<div class="choese" Style="float:left;margin-left:10px;border:1px solid gray;height:40px;"  choese="${ShoesColor.color6}" choeseImg="${ShoesImg.shoesImg6 }" >
							<img src="ShoesImg/${ShoesImg.shoesImg6 }" width="40px" height="40px" style="float:left;"/><span style="float:left;margin-left:5px;margin-top:11px;margin-right:5px;font-size:13px;color:gray;">${ShoesColor.color6}</span>
						</div>
						</c:if>

					</div>
					<br><br>
					<div >
					<span style="color:gray;font-size:14px;float:left;">选择尺码</span>&nbsp;
					<c:forEach items="${ShoesSize}" var="s">
					<div class="choeseSize" choeseSize="${s.shoesSize}" style="float:left;border:1px solid gray;height:35px;width:40px;margin-left:10px;line-height:35px;text-align:center;color:gray;">
					${s.shoesSize }
					</div>
					</c:forEach>
					</div>
					
					</div>
					<hr color="#EFEFEF" style="margin-top:30px;">
					
					<div>
					<span style="color:gray;font-size:14px;float:left;">增值保障</span>&nbsp;
					<div style="float:left;border:1px solid gray;height:30px;width:140px;margin-left:10px;color:gray;line-height:30px;font-size:14px;">
					&nbsp;鞋靴洗护 ￥55
					</div>
					</div>
					<br><br><br>
					<hr color="#EFEFEF" >
					
					<div style="float:left;border:1px solid gray; height:60px;width:60px;">
					<div id="buyNum" style="float:left;height:60px;width:35px;border:0px solid red;font-size:20px;line-height:60px;text-align:center;" >1</div>
					<div id="addNum" style="float:left;height:30px;width:23px;border-left:1px solid gray;line-height:30px;text-align:center;background-color:#F1F1F1;cursor:hand;">+</div>
					<div id="lessNum" style="float:left;height:29px;width:23px;border-left:1px solid gray;border-top:1px solid gray;line-height:30px;text-align:center;background-color:#F1F1F1;cursor:hand;">-</div>
					</div>
					
					<div style="float:left;border:0px solid gray; height:60px;width:140px;margin-left:20px;">
						<form name="addtoshoppingcarform" action="<%=basePath %>AddToShoppingcar.action" method="post">
							<input type="hidden" value="${Shoes.shoesId }" name="ShoesId">
							<input type="hidden" value="${Shoes.shoesName }" name="ShoesName">
							<input type="hidden" value="${Shoes.shoesPrice }" name="Shoesprice">
							<input type="hidden" value="choese" name="ShoesColor">
							<input type="hidden" value="${Shoes.shoesSeller}" name="Seller">
							<input type="hidden" value="choeseImg" name="Simg">
							<input type="hidden" value="choeseSize" name="Size">
							<input type="hidden" value="1" name="Amount">
							<input type="submit" value="加入购物车" style="height:60px;width:140px;color:white;background-color:#DF3033;font-size:20px;border:none;" name="addtoshoppingcar">
						</form>
					</div>
					<div style="float:left;border:0px solid gray; height:60px;width:100px;margin-left:20px;">
						<form name="directpayform" action="<%=basePath %>directPay.action" method="post">
							<input type="hidden" value="${Shoes.shoesId }" name="ShoesId">
							<input type="hidden" value="${Shoes.shoesName }" name="ShoesName">
							<input type="hidden" value="${Shoes.shoesPrice }" name="Shoesprice">
							<input type="hidden" value="choese" name="ShoesColor">
							<input type="hidden" value="${Shoes.shoesSeller}" name="Seller">
							<input type="hidden" value="choeseImg" name="Simg">
							<input type="hidden" value="choeseSize" name="Size">
							<input type="hidden" value="1" name="Amount">
							<input type="submit" value="一键购" style="height:60px;width:100px;color:white;background-color:#85C360;font-size:20px;border:none;">
						</form> 
					</div>
				</div>
			</div>
		</div>
		<!-- 第五部分 -->
		<div id="e">
			<div class="e-1-1">
				<div class="e-2-1">
					<div class="e-2-2">
						<h4 class="e-2-3">热卖推存</h4>
					</div>
					<div class="l-1-1">
					<center><img src="dengluimg/naike/image-1-1.jpg" class="l-1-2"></center>
					<a class="l-1-3">斐乐（FILA）男简意时尚系列文化跑鞋21625409标准白/淡灰色/火红</a>
					<a class="l-1-4">￥549.00</a>
					</div>
					<div class="l-1-1">
					<center><img src="dengluimg/naike/image-1-2.jpg" class="l-1-2"></center>
					<a class="l-1-3">斐乐（FILA）女简意时尚系列增高鞋22525103荧光浅橙/标准白37</a>
					<a class="l-1-4">￥269.00</a>
					</div>
					<div class="l-1-1">
					<center><img src="dengluimg/naike/image-1-3.jpg" class="l-1-2"></center>
					<a class="l-1-3">斐乐（FILA）男简意时尚系列文化跑鞋21625418黑/标准白41</a>
					<a class="l-1-4">￥539.00</a>
					</div>
				</div>
				<!-- 商品介绍 -->
				<div class="e-3-1">
					<ul class="e-3-2">
						<li class="e-3-3">商品介绍</li>
						<li class="e-3-3">售后保障</li>
						<li class="e-3-3">商品评价</li>
					</ul>
				</div>
				<div class="e-5-1">
						<!-- div居中 -->
						<div class="e-5-2">
							<div class="e-5-5">
								<img src="ShoesInfoImg/${requestScope.Shoesinfo.shoesInfoImg1 }"> 
								<img src="ShoesInfoImg/${requestScope.Shoesinfo.shoesInfoImg2 }">
								<img src="ShoesInfoImg/${requestScope.Shoesinfo.shoesInfoImg3 }">
								<img src="ShoesInfoImg/${requestScope.Shoesinfo.shoesInfoImg4 } ">
								<img src="ShoesInfoImg/${requestScope.Shoesinfo.shoesInfoImg5 }">
								<img src="ShoesInfoImg/${requestScope.Shoesinfo.shoesInfoImg6 }">
								<img src="ShoesInfoImg/${requestScope.Shoesinfo.shoesInfoImg7 }">
								<img src="ShoesInfoImg/${requestScope.Shoesinfo.shoesInfoImg8 }">
								<div class="f-1-2">
							<a class="f-1-3">商品评价</a>
						</div>
							<div class="f-2-1" style="font-size:14px;">全部评价(<span style="color:red;">${count}</span>)</div>
							<c:forEach items="${Comment}" var="comment">
							<div style="float:left;border-bottom:1px solid gray;height:100px;width:950px;line-height:30px;">
							<div style="color:gray;font-size:13px;float:left;margin-left:100px;">&nbsp;${comment.commentDescription }</div><br>
							<div style="float:left;color:gray;font-size:13px;margin-left:20px;">${comment.commentTime }</div>
							<div style="float:right;color:gray;font-size:13px;margin-right:30px;">${comment.userAccount }</div>
							<div style="float:right;color:green;font-size:13px;margin-top:20px;margin-right:-15px;">金牌会员</div>
							<div style="float:right;color:gray;font-size:13px;margin-top:35px;margin-right:-75px;">来自京东客户端</div>
							</div>
							</c:forEach>
							</div>
						</div>
				</div>
				</div>
		</div>
	</div>
</body>
</html>
