<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path2 = request.getContextPath();
	String basePath2 = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path2 + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<style type="text/css">
#search {
	border: 0px solid red;
	width: 1024px;
	height: 910px;
	position: absolute;
	top: 0px;
	left: 180px;
}

body img {
	cursor: pointer;
}

#search1 {
	border: 0px solid red;
	height: 80px;
	width: 610px;
	position: absolute;
	top: 80px;
	left: 300px;
}

#input {
	height: 40px;
	width: 580px;
	border: 2px solid #B61d1d;
	position: absolute;
	top: 10px;
	left: 0px;
}

#input1 {
	height: 40px;
	width: 80px;
	border: 2px solid #B61d1d;
	position: absolute;
	top: 10px;
	left: 530px;
	background-color: #B61d1d;
	font-size: 20px;
	color: white;
}

#a {
	font-size: 13px;
	position: absolute;
	top: 53px;
	left: 0px;
}

#a a {
	color: #666666;
	text-decoration: none;
}

#a a {
	color: #666666;
}

#a a:hover {
	color: #B61d1d;
}

#dao {
	position: absolute;
	top: 170px;
	left: 240px;
}

#dao a {
	text-decoration: none;
	color: black;
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
	left: 0px;
	line-height: 35px;
}

#allshop {
	background-color: #c81623;
}

.alltype {
	width: 196px;
	color: white;
	font-size: 15px;
}

#aa {
	position: absolute;
	border-bottom: 1px solid gray;
	height: 35px;
	width: 221px;
	line-height: 35px
}

#aa a {
	color: black;
}

#aa a:hover {
	color: #B61d1d;
}

#aa1 {
	position: absolute;
	top: 35px;
	left: 0px;
	border-bottom: 1px solid gray;
	height: 140px;
	width: 221px;
}

#aa1 a {
	color: gray;
	text-decoration: none;
}

#aa1 a:hover {
	color: #B61d1d;
}

#aa2 {
	position: absolute;
	top: 643px;
	left: 800px;
	border: 0px solid gray;
	height: 63px;
	width: 259px;
}

#di {
	position: absolute;
	top: 710px;
	left: 0px;
	border: 0px solid gray;
	height: 160px;
	width: 1020px;
}

/*通栏广告样式*/
#playBox * {
	margin: 0;
	padding: 0;
	list-style: none;
}

#divSmallBox {
	overflow: hidden; *
	display: inline; *
	zoom: 1;
	width: 10px;
	height: 10px;
	margin: 0 5px;
	border-radius: 10px;
	background: #ffffff;
}

#playBox {
	width: 590px;
	height: 480px;
	margin: 20px auto;
	background: #333;
	position: absolute;
	overflow: hidden;
	top: 205px;
	left: 205px;
}

#playBox .oUlplay {
	width: 99999px;
	position: absolute;
	left: 0;
	top: 0;
}

#playBox .oUlplay li {
	float: left;
}

#playBox .pre {
	cursor: pointer;
	width: 45px;
	height: 45px;
	background: url(../img/Searchimg/l.png) no-repeat;
	position: absolute;
	top: 190px;
	left: 10px;
	z-index: 10;
}

#playBox .next {
	cursor: pointer;
	width: 45px;
	height: 45px;
	background: url(../img/Searchimg/r.png) no-repeat;
	position: absolute;
	top: 190px;
	right: 10px;
	z-index: 10;
}

#playBox .smalltitle {
	width: 1000px;
	height: 10px;
	position: absolute;
	bottom: 15px;
	z-index: 10;
	left: -180px;
}

#playBox .smalltitle ul {
	width: 120px;
	margin: 0 auto;
}

#playBox .smalltitle ul li {
	width: 10px;
	height: 10px;
	margin: 0 5px;
	border-radius: 10px;
	background: #ffffff;
	float: left;
	overflow: hidden; *
	display: inline; *
	zoom: 1;
}

#playBox .smalltitle .thistitle {
	background: #69aaec;
}

#playBox .oUlplay img {
	width: 590px;
	height: 480px;
}

#n1 {
	position: absolute;
	top: 5px;
	left: 0px;
}

#n2 {
	position: absolute;
	top: 5px;
	left: 20px;
}

#n3 {
	position: absolute;
	top: 5px;
	left: 40px;
}

#n4 {
	position: absolute;
	top: 5px;
	left: 60px;
}

#n5 {
	position: absolute;
	top: 5px;
	left: 80px;
}

#huan {
	height: 100px;
	width: 30px;
	font-size: 50px;
	background-color: black;
	opacity: 0.2;
	color: white;
	line-height: 100px;
	text-align: center;
	float: right;
	margin-top: 25px;
	cursor: pointer;
}

#tui1 {
	position: absolute;
	top: 0px;
	left: 203px;
}

#tui2 {
	position: absolute;
	top: 0px;
	left: 408px;
}

#tui3 {
	position: absolute;
	top: 0px;
	left: 613px;
}

#tui4 {
	position: absolute;
	top: 0px;
	left: 818px;
}

.qw {
	text-align: center;
	line-height: 30px;
}

.qw img {
	padding-top: 15px;
}

.qw a {
	color: gray;
	text-decoration: none;
}

.qw a:hover {
	color: #B61d1d;
}

.alls1 {
	position: absolute;
	width: 825px;
	height: 530px;
	top: 0px;
	left: 200px;
	border: 0px solid red;
	background-color: #F7F7F7;
	display: none;
	z-index: 100;
}

#all .ww a {
	color: white;
	text-decoration: none;
}

#all .ww a:hover {
	color: #B61d1d;
}

#all .w2 a {
	color: gray;
	text-decoration: none;
}

#all .w2 a:hover {
	color: #B61d1d;
}
</style>

	<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
	<script type="text/javascript">
    function getStyle(obj,name)
    {
    	if(obj.currentStyle)
    	{
    		return obj.currentStyle[name]
    	}
    	else
    	{
    		return getComputedStyle(obj,false)[name]
    	}
    }

    function getByClass(oParent,nClass)
    {
    	var eLe = oParent.getElementsByTagName('*');
    	var aRrent  = [];
    	for(var i=0; i<eLe.length; i++)
    	{
    		if(eLe[i].className == nClass)
    		{
    			aRrent.push(eLe[i]);
    		}
    	}
    	return aRrent;
    }

    function startMove(obj,att,add)
    {
    	clearInterval(obj.timer)
    	obj.timer = setInterval(function(){
    	   var cutt = 0 ;
    	   if(att=='opacity')
    	   {
    		   cutt = Math.round(parseFloat(getStyle(obj,att)));
    	   }
    	   else
    	   {
    		   cutt = Math.round(parseInt(getStyle(obj,att)));
    	   }
    	   var speed = (add-cutt)/4;
    	   speed = speed>0?Math.ceil(speed):Math.floor(speed);
    	   if(cutt==add)
    	   {
    		   clearInterval(obj.timer)
    	   }
    	   else
    	   {
    		   if(att=='opacity')
    		   {
    			   obj.style.opacity = (cutt+speed)/100;
    			   obj.style.filter = 'alpha(opacity:'+(cutt+speed)+')';
    		   }
    		   else
    		   {
    			   obj.style[att] = cutt+speed+'px';
    		   }
    	   }
    	   
    	},30)
    }

      window.onload = function()
      {
    	  var oDiv = document.getElementById('playBox');
    	  var oPre = getByClass(oDiv,'pre')[0];
    	  var oNext = getByClass(oDiv,'next')[0];
    	  var oUlBig = getByClass(oDiv,'oUlplay')[0];
    	  var aBigLi = oUlBig.getElementsByTagName('li');
    	  var oDivSmall = getByClass(oDiv,'smalltitle')[0]
    	  var aLiSmall = oDivSmall.getElementsByTagName('li');
    	  
    	  function tab()
    	  {
    	     for(var i=0; i<aLiSmall.length; i++)
    	     {
    		    aLiSmall[i].className = '';
    	     }
    	     aLiSmall[now].className = 'thistitle'
    	     startMove(oUlBig,'left',-(now*aBigLi[0].offsetWidth))
    	  }
    	  var now = 0;
    	  for(var i=0; i<aLiSmall.length; i++)
    	  {
    		  aLiSmall[i].index = i;
    		  aLiSmall[i].onclick = function()
    		  {
    			  now = this.index;
    			  tab();
    		  }
    	 }
    	  oPre.onclick = function()
    	  {
    		  now--
    		  if(now ==-1)
    		  {
    			  now = aBigLi.length;
    		  }
    		   tab();
    	  }
    	   oNext.onclick = function()
    	  {
    		   now++
    		  if(now ==aBigLi.length)
    		  {
    			  now = 0;
    		  }
    		  tab();
    	  }
    	  var timer = setInterval(oNext.onclick,3000) //滚动间隔时间设置
    	  oDiv.onmouseover = function()
    	  {
    		  clearInterval(timer)
    	  }
    	   oDiv.onmouseout = function()
    	  {
    		  timer = setInterval(oNext.onclick,3000) //滚动间隔时间设置
    	  }
      }

    $(function(){
  
   	
   	 var i=4;
	    $("#huan").click(function(){
	    var page=["img/Searchimg/577e12a7N0ddf3394.jpg","img/Searchimg/5785b76fNbbcaedb4.jpg","img/Searchimg/5784804bN9e4d88a9.jpg","img/Searchimg/5786ef4aN403fd530.jpg","img/Searchimg/q1.jpg","img/Searchimg/q2.jpg","img/Searchimg/q3.jpg","img/Searchimg/q4.jpg"];
	    
	     if(i>=page.length){
	    	i=0;
	    }
	     $(document.getElementById("tui1")).children().attr("src",page[i]);
	     i++;
	     $(document.getElementById("tui2")).children().attr("src",page[i]);
	     i++;
	     $(document.getElementById("tui3")).children().attr("src",page[i]);
	     i++;
	     $(document.getElementById("tui4")).children().attr("src",page[i]);
	     i++;
	    });
	    
	    $("#tt1").hover(function(){
	    $("#type1").css("display","block"),
	    $("#tt1").css("background-color","#F7F7F7"),
	    $("#t1").css("color","black")
	    },function(){
	    $("#type1").css("display","none"),
	    $("#tt1").css("background-color","#c81623"),
	    $("#t1").css("color","white")
	    });
	    
	    $("#tt2").hover(function(){
	    $("#type2").css("display","block"),
	    $("#tt2").css("background-color","#F7F7F7"),
	    $("#t2").css("color","black")
	    },function(){
	    $("#type2").css("display","none"),
	    $("#tt2").css("background-color","#c81623"),
	    $("#t2").css("color","white")
	    });
	    
	     $("#tt3").hover(function(){
	    $("#type3").css("display","block"),
	    $("#tt3").css("background-color","#F7F7F7"),
	    $("#t3").css("color","black")
	    },function(){
	    $("#type3").css("display","none"),
	    $("#tt3").css("background-color","#c81623"),
	    $("#t3").css("color","white")
	    });
	    
	     $("#tt4").hover(function(){
	    $("#type4").css("display","block"),
	    $("#tt4").css("background-color","#F7F7F7"),
	    $("#t4").css("color","black")
	    },function(){
	    $("#type4").css("display","none"),
	    $("#tt4").css("background-color","#c81623"),
	    $("#t4").css("color","white")
	    });
	    
	     $("#tt5").hover(function(){
	    $("#type5").css("display","block"),
	    $("#tt5").css("background-color","#F7F7F7"),
	    $("#t5").css("color","black")
	    },function(){
	    $("#type5").css("display","none"),
	    $("#tt5").css("background-color","#c81623"),
	    $("#t5").css("color","white")
	    });
	    
	     $("#tt6").hover(function(){
	    $("#type6").css("display","block"),
	    $("#tt6").css("background-color","#F7F7F7"),
	    $("#t6").css("color","black")
	    },function(){
	    $("#type6").css("display","none"),
	    $("#tt6").css("background-color","#c81623"),
	    $("#t6").css("color","white")
	    });
	    
	     $("#tt7").hover(function(){
	    $("#type7").css("display","block"),
	    $("#tt7").css("background-color","#F7F7F7"),
	    $("#t7").css("color","black")
	    },function(){
	    $("#type7").css("display","none"),
	    $("#tt7").css("background-color","#c81623"),
	    $("#t7").css("color","white")
	    });
	    
	     $("#tt8").hover(function(){
	    $("#type8").css("display","block"),
	    $("#tt8").css("background-color","#F7F7F7"),
	    $("#t8").css("color","black")
	    },function(){
	    $("#type8").css("display","none"),
	    $("#tt8").css("background-color","#c81623"),
	    $("#t8").css("color","white")
	    });
	    
	     $("#tt9").hover(function(){
	    $("#type9").css("display","block"),
	    $("#tt9").css("background-color","#F7F7F7"),
	    $("#t9").css("color","black")
	    },function(){
	    $("#type9").css("display","none"),
	    $("#tt9").css("background-color","#c81623"),
	    $("#t9").css("color","white")
	    });
	    
	     $("#tt10").hover(function(){
	    $("#type10").css("display","block"),
	    $("#tt10").css("background-color","#F7F7F7"),
	    $("#t10").css("color","black")
	    },function(){
	    $("#type10").css("display","none"),
	    $("#tt10").css("background-color","#c81623"),
	    $("#t10").css("color","white")
	    });
	    
	     $("#tt11").hover(function(){
	    $("#type11").css("display","block"),
	    $("#tt11").css("background-color","#F7F7F7"),
	    $("#t11").css("color","black")
	    },function(){
	    $("#type11").css("display","none"),
	    $("#tt11").css("background-color","#c81623"),
	    $("#t11").css("color","white")
	    });
	    
	     $("#tt12").hover(function(){
	    $("#type12").css("display","block"),
	    $("#tt12").css("background-color","#F7F7F7"),
	    $("#t12").css("color","black")
	    },function(){
	    $("#type12").css("display","none"),
	    $("#tt12").css("background-color","#c81623"),
	    $("#t12").css("color","white")
	    });
	    
	     $("#tt13").hover(function(){
	    $("#type13").css("display","block"),
	    $("#tt13").css("background-color","#F7F7F7"),
	    $("#t13").css("color","black")
	    },function(){
	    $("#type13").css("display","none"),
	    $("#tt13").css("background-color","#c81623"),
	    $("#t13").css("color","white")
	    });
	    
	     $("#tt14").hover(function(){
	    $("#type14").css("display","block"),
	    $("#tt14").css("background-color","#F7F7F7"),
	    $("#t14").css("color","black")
	    },function(){
	    $("#type14").css("display","none"),
	    $("#tt14").css("background-color","#c81623"),
	    $("#t14").css("color","white")
	    });
	    
    });
    
    </script>


	<head>

		<title>京东官网首页</title>

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



		<div id="search">

			<div style="margin-left: -200px">
				<%@include file="../header.jsp"%>
			</div>

			<div
				style="position: absolute; top: 80px; left:20px; width: 200px; height: 90px; border: 0px solid red;">
				<img src="../img/Searchimg/jingdong.PNG" />
			</div>
			<div id="search1">
			<form action="/JD/Myservlet" method="post">
				<input type="text" name="input" id="input">
				<input type="submit" value="搜索" id="input1" >
				</form>
				<div id="a">&nbsp;
					<a href="#">9.9团购</a>
					<a href="#">领免息劵</a>
					<a href="#">3件七折</a>
					<a href="#">手机暑促</a> 
					<a href="#">100元红包</a>
					<a href="#">碗碟套装</a>
					<a href="#">哑铃凳</a> 
					<a href="#">0元试用</a>
					<a href="#">酸奶发酵菌</a>
				</div>
			</div>

			<div id="dao">
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
				<hr color="#B61d1d" width="1024px">
			</div>

			<div id="all">
				<div
					style="background-color: #B61d1d; height: 47px; width: 200px; line-height: 45px; font-size: 18px; color: #ffffff; font-weight: bolder;">
					&nbsp;全部商品分类
				</div>
				<div style="position: absolute; top: 47px; left: 0px;" id="allshop">

					<div style="background-color: #c81623; height: 35px; width: 200px;"
						id="tt1">
						<div class="alls">
							<div class="alltype" id="t1">
								家用电器
								<span style="float: right;">></span>
								<div class="alls1" id="type1">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;家电城</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 110px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;品牌日</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 210px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;智能生活馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 320px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;京东净化馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 430px; border: 0px solid red; width: 110px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;京东帮服务店</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 550px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;家电众筹馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;大家电&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">平板电脑</a>|&nbsp;
											<a href="#">空调</a>|&nbsp;
											<a href="#">冰箱</a>|&nbsp;
											<a href="#">洗衣机</a>|&nbsp;
											<a href="#">家庭影院</a>|&nbsp;
											<a href="#">DVD</a>|&nbsp;
											<a href="#">迷你音响</a>|&nbsp;
											<a href="#">冷柜/冰吧</a>


										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>厨卫大电&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">油烟机</a>|&nbsp;
											<a href="#">燃气灶</a>|&nbsp;
											<a href="#">烟灶套装</a>|&nbsp;
											<a href="#">消毒柜</a>|&nbsp;
											<a href="#">洗碗机</a>|&nbsp;
											<a href="#">电热水器</a>|&nbsp;
											<a href="#">嵌入式厨电</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 90px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 90px;">
											<span>厨房小电&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电饭煲</a>|&nbsp;
											<a href="#">微波炉</a>|&nbsp;
											<a href="#">电烤箱</a>|&nbsp;
											<a href="#">电磁炉</a>|&nbsp;
											<a href="#">电压力锅</a>|&nbsp;
											<a href="#">豆浆机</a>|&nbsp;
											<a href="#">咖啡机</a>|&nbsp;
											<a href="#">面包机</a>
											</br>
											|&nbsp;
											<a href="#">养生壶/煎药壶</a>|&nbsp;
											<a href="#">酸奶机</a>|&nbsp;
											<a href="#">煮蛋机</a>|&nbsp;
											<a href="#">电水壶/热水壶</a>|&nbsp;
											<a href="#">电炖锅</a> |&nbsp;
											<a href="#">多用途锅</a>
											</br>
											|&nbsp;
											<a href="#">其他厨房电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 210px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>生活电器&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a> |&nbsp;
											<a href="#">其他生活电器</a>>
										</div>
									</div>

									<div
										style="position: absolute; top: 290px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>个户健康&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
											</br>
											|&nbsp;
											<a href="#">按摩器</a>|&nbsp;
											<a href="#">按摩椅</a>|&nbsp;
											<a href="#">血压计</a>|&nbsp;
											<a href="#">血糖仪</a>|&nbsp;
											<a href="#">体温计</a>|&nbsp;
											<a href="#">计步器/脂肪检测仪</a>|&nbsp;
											<a href="#">其他健康电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 370px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>五金家装&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a> |&nbsp;
											<a href="#">监控安防</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556faa83N3f4f79e6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/561df11bNb77d20a9.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd23Ne595b106.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562f4957N5b110921.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/54d079f6Nced82388.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/54bf5db9N91ad71b6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/57865664N33f93eb9.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865655Nd67e3b32.jpg"
												width="200px" height="140px" />
										</div>

									</div>

								</div>

							</div>
						</div>

					</div>


					<div style="background-color: #c81623; height: 35px;" id="tt2">
						<div class="alls">
							<div class="alltype" id="t2">
								手机、数码、京东通信
								<span style="float: right;">></span>
								<div class="alls1" id="type2">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;玩3G</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 110px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;手机频道</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 210px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;手机营业厅</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 320px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;配件城</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 410px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;影像Club</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 510px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;以旧换新</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>手机通讯&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">手机</a>|&nbsp;
											<a href="#">对讲机</a>|&nbsp;
											<a href="#">以旧换新</a>|&nbsp;
											<a href="#">手机维修</a>|
										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>京东通信&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">选号中心</a>|&nbsp;
											<a href="#">自助服务</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;运营商&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">合约机</a>|&nbsp;
											<a href="#">办套餐</a>|&nbsp;
											<a href="#">选号码</a>|&nbsp;
											<a href="#">装宽带</a>|&nbsp;
											<a href="#">中国移动</a>|&nbsp;
											<a href="#">中国联通</a>|&nbsp;
											<a href="#">中国电信</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 150px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>数码配件&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a> |&nbsp;
											<a href="#">其他生活电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 220px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>摄影摄像&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
											</br>
											|&nbsp;
											<a href="#">按摩器</a>|&nbsp;
											<a href="#">按摩椅</a>|&nbsp;
											<a href="#">血压计</a>|&nbsp;
											<a href="#">血糖仪</a>|&nbsp;
											<a href="#">体温计</a>|&nbsp;
											<a href="#">计步器/脂肪检测仪</a>|&nbsp;
											<a href="#">其他健康电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56c57918Nff0ae0c7.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56c687b8N46312f49.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56c55fe3N7a02ee30.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56b1b1e4N46eed70b.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56b1b1c0Nef5c7a83.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55c2fde9Nd33569d4.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/54efe0f7N7ec4918e.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/54d09425Na25f4208.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/5785fd48N11cdbff7.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/5785b2abNda7161e7.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt3">
						<div class="alls">
							<div class="alltype" id="t3">
								电脑、办公
								<span style="float: right;">></span>
								<div class="alls1" id="type3">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 70px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;玩3G</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 100px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;本周热卖</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 200px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;游戏部落</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 300px; border: 0px solid red; width: 70px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;GAME+</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 380px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;装机大师</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 480px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;办公生活馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>电脑整机&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">笔记本</a>|&nbsp;
											<a href="#">游戏本</a>|&nbsp;
											<a href="#">平板电脑</a>|&nbsp;
											<a href="#">平板电脑配件</a>|&nbsp;
											<a href="#">台式机</a>|&nbsp;
											<a href="#">一体机</a>|&nbsp;
											<a href="#">服务站/工作站</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 60px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 60px;">
											<span>电脑配键&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">CPU</a>|&nbsp;
											<a href="#">主板</a>|&nbsp;
											<a href="#">显卡</a>|&nbsp;
											<a href="#">硬盘</a>|&nbsp;
											<a href="#">SSD固态硬盘</a>|&nbsp;
											<a href="#">内存</a>|&nbsp;
											<a href="#">机箱</a>|&nbsp;
											<a href="#">电源</a>|&nbsp;
											<a href="#">显示器</a>|
											</br>
											|&nbsp;
											<a href="#">散热器</a>|&nbsp;
											<a href="#">装机配件</a>|&nbsp;
											<a href="#">组装电脑</a>|
										</div>
									</div>

									<div
										style="position: absolute; top: 150px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 60px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 60px;">
											<span>外设产品&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">鼠标</a>|&nbsp;
											<a href="#">键盘</a>|&nbsp;
											<a href="#">键鼠套餐</a>|&nbsp;
											<a href="#">网络仪表仪器</a>|&nbsp;
											<a href="#">U盘</a>|&nbsp;
											<a href="#">移动硬盘</a>|&nbsp;
											<a href="#">鼠标垫</a>|&nbsp;
											<a href="#">摄像头</a>
											</br>
											|&nbsp;
											<a href="#">电脑工具</a>|&nbsp;
											<a href="#">电脑清洁</a>|&nbsp;
											<a href="#">USB电源</a>|&nbsp;
											<a href="#">插座</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 210px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>游戏设备&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a> |&nbsp;
											<a href="#">其他生活电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 290px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 40px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 40px;">
											<span>网络产品&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 330px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>文具耗材&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a> |&nbsp;
											<a href="#">监控安防</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55028b7dN92a6df52.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/57578765Nba8068d2.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55028b77N7e94bb57.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55028b94N8a6f84a6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55028bd4N224a0b87.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/553468d1N0b95413a.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/57722359Nd201dccd.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/57721039N0ae78a4d.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/578655d1Nbb7abff0.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865748N2133e0b3.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt4">
						<div class="alls">
							<div class="alltype" id="t4">
								家居、家具、家装、厨具
								<span style="float: right;">></span>
								<div class="alls1" id="type4">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;家装城</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 110px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;居家日用</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 210px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;精品家居</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 310px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;家装建材</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 410px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;厨房达人</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 510px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;装修服务</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;&nbsp;厨具&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">烹饪锅具</a>|&nbsp;
											<a href="#">刀剪菜饭</a>|&nbsp;
											<a href="#">厨房配材</a>|&nbsp;
											<a href="#">水具酒具</a>|&nbsp;
											<a href="#">餐具</a>|&nbsp;
											<a href="#">茶具/咖啡具</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>家装建材&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">灯饰照明</a>|&nbsp;
											<a href="#">厨房卫具</a>|&nbsp;
											<a href="#">五金工具</a>|&nbsp;
											<a href="#">电工电料</a>|&nbsp;
											<a href="#">墙地面材料</a>|&nbsp;
											<a href="#">装饰材料</a>|&nbsp;
											<a href="#">装修服务</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 60px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 60px;">
											<span>&nbsp;&nbsp;家纺&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电饭煲</a>|&nbsp;
											<a href="#">微波炉</a>|&nbsp;
											<a href="#">电烤箱</a>|&nbsp;
											<a href="#">电磁炉</a>|&nbsp;
											<a href="#">电压力锅</a>|&nbsp;
											<a href="#">豆浆机</a>|&nbsp;
											<a href="#">咖啡机</a>|&nbsp;
											<a href="#">面包机</a>
											</br>
											|&nbsp;
											<a href="#">养生壶/煎药壶</a>|&nbsp;
											<a href="#">酸奶机</a>|&nbsp;
											<a href="#">煮蛋机</a>|&nbsp;
											<a href="#">电水壶/热水壶</a>|&nbsp;
											<a href="#">电炖锅</a> |&nbsp;
											<a href="#">多用途锅</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 190px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>&nbsp;&nbsp;家具&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a> |&nbsp;
											<a href="#">其他生活电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 260px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>生活日用&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 300px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>&nbsp;&nbsp;灯具&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a> |&nbsp;
											<a href="#">监控安防</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/57578765Nba8068d2.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/576394c5N608c0587.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5732ec02N847c5d0f.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5769f0bcN5b1766ac.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562f4957N5b110921.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55028b77N7e94bb57.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55028bd4N224a0b87.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/577389b7N72b95da2.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/577dce9fNac1f0a9f.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt5">
						<div class="alls">
							<div class="alltype" id="t5">
								男装、女装、童装、内衣
								<span style="float: right;">></span>
								<div class="alls1" id="type5">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 70px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;男装</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 100px; border: 0px solid red; width: 70px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;女装</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 180px; border: 0px solid red; width: 70px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;内衣</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 260px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;童装童鞋</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 360px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;国际品牌</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 460px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;自营服装</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;&nbsp;女装&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">连衣裙</a>|&nbsp;
											<a href="#">T恤</a>|&nbsp;
											<a href="#">寸衫</a>|&nbsp;
											<a href="#">休闲裤</a>|&nbsp;
											<a href="#">牛仔裤</a>|&nbsp;
											<a href="#">短外套</a>|&nbsp;
											<a href="#">卫衣</a>|&nbsp;
											<a href="#">小西装</a> |&nbsp;
											<a href="#">风衣</a>

										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;&nbsp;男装&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">寸衫</a>|&nbsp;
											<a href="#">T恤</a>|&nbsp;
											<a href="#">休闲裤</a>|&nbsp;
											<a href="#">牛仔裤</a>|&nbsp;
											<a href="#">POLO衫</a>|&nbsp;
											<a href="#">羽绒服</a>|&nbsp;
											<a href="#">西装套装</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 60px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 60px;">
											<span>&nbsp;&nbsp;内衣&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">文胸</a>|&nbsp;
											<a href="#">男女式内裤</a>|&nbsp;
											<a href="#">美腿袜</a>|&nbsp;
											<a href="#">保暖内衣</a>|&nbsp;
											<a href="#">打底裤</a>|&nbsp;
											<a href="#">打底衫</a>|&nbsp;
											<a href="#">抹胸</a>|&nbsp;
											<a href="#">泳衣</a>
											</br>
											|&nbsp;
											<a href="#">养生壶/煎药壶</a>|&nbsp;
											<a href="#">酸奶机</a>|&nbsp;
											<a href="#">煮蛋机</a>|&nbsp;
											<a href="#">电水壶/热水壶</a>|&nbsp;
											<a href="#">电炖锅</a> |&nbsp;
											<a href="#">多用途锅</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 190px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>&nbsp;&nbsp;配饰&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a>

										</div>
									</div>

									<div
										style="position: absolute; top: 270px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>童鞋童装&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
											</br>
											|&nbsp;
											<a href="#">按摩器</a>|&nbsp;
											<a href="#">按摩椅</a>|&nbsp;
											<a href="#">血压计</a>|&nbsp;
											<a href="#">血糖仪</a>|&nbsp;
											<a href="#">体温计</a>|&nbsp;
											<a href="#">计步器/脂肪检测仪</a>|&nbsp;
											<a href="#">其他健康电器</a>
										</div>
									</div>


									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5732ec02N847c5d0f.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56b1b1e4N46eed70b.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56b1b1c0Nef5c7a83.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56ca8199Nf2aca5d0.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56c57918Nff0ae0c7.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56c687b8N46312f49.jpg" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/54d09425Na25f4208.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/57865891N10af8eef.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865903Na4906dac.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt6">
						<div class="alls">
							<div class="alltype" id="t6">
								个户化妆、清洁用品、宠物
								<span style="float: right;">></span>
								<div class="alls1" id="type6">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;清洁用品</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 120px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;美妆商城</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 220px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;官方旗舰店</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 330px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;美妆特卖</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 430px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;妆比社</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 520px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;全球购美妆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>面部护肤&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">卸妆</a>|&nbsp;
											<a href="#">爽肤水</a>|&nbsp;
											<a href="#">洁面</a>|&nbsp;
											<a href="#">精华</a>|&nbsp;
											<a href="#">眼霜</a>|&nbsp;
											<a href="#">防晒</a>|&nbsp;
											<a href="#">眼膜</a>|&nbsp;
											<a href="#">套装</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>洗发护发&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">洗发</a>|&nbsp;
											<a href="#">护发</a>|&nbsp;
											<a href="#">染发</a>|&nbsp;
											<a href="#">造型</a>|&nbsp;
											<a href="#">假发</a>|&nbsp;
											<a href="#">套装</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>身体护肤&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">沐浴</a>|&nbsp;
											<a href="#">润肤</a>|&nbsp;
											<a href="#">精油</a>|&nbsp;
											<a href="#">手足</a>|&nbsp;
											<a href="#">美胸</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 150px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>口腔护理&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">牙膏/牙粉</a>|&nbsp;
											<a href="#">牙刷/牙线</a>|&nbsp;
											<a href="#">漱口水</a>|&nbsp;
											<a href="#">套装</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 180px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>女性护理&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">卫生巾</a>|&nbsp;
											<a href="#">卫生护垫</a>|&nbsp;
											<a href="#">私密护理</a>|&nbsp;
											<a href="#">脱毛膏</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 210px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>宠物生活&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">宠物主粮</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">宠物零食</a>
											</br>
											|&nbsp;
											<a href="#">护洗美容</a>|&nbsp;
											<a href="#">宠物玩具</a>|&nbsp;
											<a href="#">宠物驱虫</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a> |&nbsp;
											<a href="#">宠物牵引</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/57836d3fNab89214a.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/57833ff8N6f6aa33a.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/550298c3N1bb200c0.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/563313d2N020dc756.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/578304a7N5d4c0c2b.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562f4957N5b110921.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5783326eN5368032a.jpg" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5707833aN15339d6f.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/5784a9a4N46278db1.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/5786e86aN2718bcf5.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt7">
						<div class="alls">
							<div class="alltype" id="t7">
								鞋靴、箱包、珠宝、奢侈品
								<span style="float: right;">></span>
								<div class="alls1" id="type7">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;当季热卖</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 120px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;国际品牌</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 220px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;时尚期刊</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 320px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;国际珠宝馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 430px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;奢侈品</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 520px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;收藏投资</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>时尚女鞋&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">单鞋</a>|&nbsp;
											<a href="#">休闲鞋</a>|&nbsp;
											<a href="#">帆布鞋</a>|&nbsp;
											<a href="#">马丁靴</a>|&nbsp;
											<a href="#">雪地靴</a>|&nbsp;
											<a href="#">人字拖</a>|&nbsp;
											<a href="#">高跟鞋</a>|&nbsp;
											<a href="#">凉鞋</a>


										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>流行男鞋&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">休闲鞋</a>|&nbsp;
											<a href="#">正装鞋</a>|&nbsp;
											<a href="#">帆布鞋</a>|&nbsp;
											<a href="#">沙滩鞋</a>|&nbsp;
											<a href="#">凉鞋</a>|&nbsp;
											<a href="#">雨鞋</a>|&nbsp;
											<a href="#">人字拖</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>流行女包&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">单肩包</a>|&nbsp;
											<a href="#">手提包</a>|&nbsp;
											<a href="#">双肩包</a>|&nbsp;
											<a href="#">钱包</a>|&nbsp;
											<a href="#">手拿包</a>|&nbsp;
											<a href="#">钥匙包</a>|&nbsp;
											<a href="#">卡包</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 150px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>功能箱包&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a>

										</div>
									</div>

									<div
										style="position: absolute; top: 230px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>&nbsp;奢侈品&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
											</br>
											|&nbsp;
											<a href="#">按摩器</a>|&nbsp;
											<a href="#">按摩椅</a>|&nbsp;
											<a href="#">血压计</a>|&nbsp;
											<a href="#">血糖仪</a>|&nbsp;
											<a href="#">体温计</a>|&nbsp;
											<a href="#">计步器/脂肪检测仪</a>|&nbsp;
											<a href="#">其他健康电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 300px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>珠宝首饰&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a>

										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/578304a7N5d4c0c2b.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55028b77N7e94bb57.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5732ec02N847c5d0f.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556faa83N3f4f79e6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562f4957N5b110921.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5769f0bcN5b1766ac.jpg" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/57865664N33f93eb9.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865655Nd67e3b32.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt8">
						<div class="alls">
							<div class="alltype" id="t8">
								运动户外、钟表
								<span style="float: right;">></span>
								<div class="alls1" id="type8">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 70px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;赛事</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 100px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;运动城</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 190px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;户外馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 280px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;健身房</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 370px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;骑行馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 460px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;钟表城</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>运动鞋包&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">平板电脑</a>|&nbsp;
											<a href="#">空调</a>|&nbsp;
											<a href="#">冰箱</a>|&nbsp;
											<a href="#">洗衣机</a>|&nbsp;
											<a href="#">家庭影院</a>|&nbsp;
											<a href="#">DVD</a>|&nbsp;
											<a href="#">迷你音响</a>|&nbsp;
											<a href="#">冷柜/冰吧</a>


										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>运动服饰&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">油烟机</a>|&nbsp;
											<a href="#">燃气灶</a>|&nbsp;
											<a href="#">烟灶套装</a>|&nbsp;
											<a href="#">消毒柜</a>|&nbsp;
											<a href="#">洗碗机</a>|&nbsp;
											<a href="#">电热水器</a>|&nbsp;
											<a href="#">嵌入式厨电</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 90px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 90px;">
											<span>健身训练&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电饭煲</a>|&nbsp;
											<a href="#">微波炉</a>|&nbsp;
											<a href="#">电烤箱</a>|&nbsp;
											<a href="#">电磁炉</a>|&nbsp;
											<a href="#">电压力锅</a>|&nbsp;
											<a href="#">豆浆机</a>|&nbsp;
											<a href="#">咖啡机</a>|&nbsp;
											<a href="#">面包机</a>
											</br>
											|&nbsp;
											<a href="#">养生壶/煎药壶</a>|&nbsp;
											<a href="#">酸奶机</a>|&nbsp;
											<a href="#">煮蛋机</a>|&nbsp;
											<a href="#">电水壶/热水壶</a>|&nbsp;
											<a href="#">电炖锅</a> |&nbsp;
											<a href="#">多用途锅</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 210px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>骑行运动&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a>

										</div>
									</div>

									<div
										style="position: absolute; top: 290px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>体育用品&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
											</br>
											|&nbsp;
											<a href="#">按摩器</a>|&nbsp;
											<a href="#">按摩椅</a>|&nbsp;
											<a href="#">血压计</a>|&nbsp;
											<a href="#">血糖仪</a>|&nbsp;
											<a href="#">体温计</a>|&nbsp;
											<a href="#">计步器/脂肪检测仪</a>|&nbsp;
											<a href="#">其他健康电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 370px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>户外装备&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a>

										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556faa83N3f4f79e6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/561df11bNb77d20a9.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd23Ne595b106.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562f4957N5b110921.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/57578765Nba8068d2.png" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5769f0bcN5b1766ac.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/5786e86aN2718bcf5.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865748N2133e0b3.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt9">
						<div class="alls">
							<div class="alltype" id="t9">
								母婴、玩具乐器
								<span style="float: right;">></span>
								<div class="alls1" id="type9">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;母婴</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 110px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;玩具乐器</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 210px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;品牌街</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 300px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;亲子馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 390px; border: 0px solid red; width: 110px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;全球购母婴</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 510px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;大牌特卖</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;&nbsp;玩具&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">平板电脑</a>|&nbsp;
											<a href="#">空调</a>|&nbsp;
											<a href="#">冰箱</a>|&nbsp;
											<a href="#">洗衣机</a>|&nbsp;
											<a href="#">家庭影院</a>|&nbsp;
											<a href="#">DVD</a>|&nbsp;
											<a href="#">迷你音响</a>|&nbsp;
											<a href="#">冷柜/冰吧</a>

										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;&nbsp;乐器&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">油烟机</a>|&nbsp;
											<a href="#">燃气灶</a>|&nbsp;
											<a href="#">烟灶套装</a>|&nbsp;
											<a href="#">消毒柜</a>|&nbsp;
											<a href="#">洗碗机</a>|&nbsp;
											<a href="#">电热水器</a>|&nbsp;
											<a href="#">嵌入式厨电</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 90px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 90px;">
											<span>妈妈专区&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电饭煲</a>|&nbsp;
											<a href="#">微波炉</a>|&nbsp;
											<a href="#">电烤箱</a>|&nbsp;
											<a href="#">电磁炉</a>|&nbsp;
											<a href="#">电压力锅</a>|&nbsp;
											<a href="#">豆浆机</a>|&nbsp;
											<a href="#">咖啡机</a>|&nbsp;
											<a href="#">面包机</a>
											</br>
											|&nbsp;
											<a href="#">养生壶/煎药壶</a>|&nbsp;
											<a href="#">酸奶机</a>|&nbsp;
											<a href="#">煮蛋机</a>|&nbsp;
											<a href="#">电水壶/热水壶</a>|&nbsp;
											<a href="#">电炖锅</a> |&nbsp;
											<a href="#">多用途锅</a>
											</br>
											|&nbsp;
											<a href="#">其他厨房电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 210px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>营养补品&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a> |&nbsp;
											<a href="#">其他生活电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 290px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>洗护用品&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
										</div>
									</div>



									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55028bd4N224a0b87.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/55028b94N8a6f84a6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/57833ff8N6f6aa33a.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/576394c5N608c0587.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/563313d2N020dc756.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56c687b8N46312f49.jpg" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/54d079f6Nced82388.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/57865664N33f93eb9.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865655Nd67e3b32.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt10">
						<div class="alls">
							<div class="alltype" id="t10">
								食品、酒类、生鲜、特产
								<span style="float: right;">></span>
								<div class="alls1" id="type10">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 70px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;生鲜</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 100px; border: 0px solid red; width: 70px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;酒类</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 180px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;食品饮料</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 280px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;地方蔬菜</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 380px; border: 0px solid red; width: 110px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;全球购美食</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>水果蔬菜&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">平板电脑</a>|&nbsp;
											<a href="#">空调</a>|&nbsp;
											<a href="#">冰箱</a>|&nbsp;
											<a href="#">洗衣机</a>|&nbsp;
											<a href="#">家庭影院</a>|&nbsp;
											<a href="#">DVD</a>|&nbsp;
											<a href="#">迷你音响</a>|&nbsp;
											<a href="#">冷柜/冰吧</a>


										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>海鲜水产&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">油烟机</a>|&nbsp;
											<a href="#">燃气灶</a>|&nbsp;
											<a href="#">烟灶套装</a>|&nbsp;
											<a href="#">消毒柜</a>|&nbsp;
											<a href="#">洗碗机</a>|&nbsp;
											<a href="#">电热水器</a>|&nbsp;
											<a href="#">嵌入式厨电</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>猪羊牛肉&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电饭煲</a>|&nbsp;
											<a href="#">微波炉</a>|&nbsp;
											<a href="#">电烤箱</a>|&nbsp;
											<a href="#">电磁炉</a>|&nbsp;
											<a href="#">电压力锅</a>|&nbsp;
											<a href="#">豆浆机</a>|&nbsp;
											<a href="#">咖啡机</a>|&nbsp;
											<a href="#">面包机</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 150px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>冷冻食品&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 180px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>中外名酒&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 210px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>休闲食品&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a> |&nbsp;
											<a href="#">监控安防</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556faa83N3f4f79e6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/561df11bNb77d20a9.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd23Ne595b106.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562f4957N5b110921.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/54efe0f7N7ec4918e.jpg" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56c55fe3N7a02ee30.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/578354adNe1771558.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/5786576aN075e1074.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt11">
						<div class="alls">
							<div class="alltype" id="t11">
								医药保健
								<span style="float: right;">></span>
								<div class="alls1" id="type11">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;专科用药</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 120px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;滋补养生</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 220px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;膳食补充</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 320px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;健康监测</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 420px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;两性情话</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 520px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;靓眼世界</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 600px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;中西药品></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">平板电脑</a>|&nbsp;
											<a href="#">空调</a>|&nbsp;
											<a href="#">冰箱</a>|&nbsp;
											<a href="#">洗衣机</a>|&nbsp;
											<a href="#">家庭影院</a>|&nbsp;
											<a href="#">DVD</a>|&nbsp;
											<a href="#">迷你音响</a>|&nbsp;
											<a href="#">冷柜/冰吧</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>营养健康&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">油烟机</a>|&nbsp;
											<a href="#">燃气灶</a>|&nbsp;
											<a href="#">烟灶套装</a>|&nbsp;
											<a href="#">消毒柜</a>|&nbsp;
											<a href="#">洗碗机</a>|&nbsp;
											<a href="#">电热水器</a>|&nbsp;
											<a href="#">嵌入式厨电</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 90px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 90px;">
											<span>营养成分&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电饭煲</a>|&nbsp;
											<a href="#">微波炉</a>|&nbsp;
											<a href="#">电烤箱</a>|&nbsp;
											<a href="#">电磁炉</a>|&nbsp;
											<a href="#">电压力锅</a>|&nbsp;
											<a href="#">豆浆机</a>|&nbsp;
											<a href="#">咖啡机</a>|&nbsp;
											<a href="#">面包机</a>
											</br>
											|&nbsp;
											<a href="#">养生壶/煎药壶</a>|&nbsp;
											<a href="#">酸奶机</a>|&nbsp;
											<a href="#">煮蛋机</a>|&nbsp;
											<a href="#">电水壶/热水壶</a>|&nbsp;
											<a href="#">电炖锅</a> |&nbsp;
											<a href="#">多用途锅</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 210px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>滋补养生&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a> |&nbsp;
											<a href="#">其他生活电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 290px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>成人用品&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a>
											</br>
											|&nbsp;
											<a href="#">按摩器</a>|&nbsp;
											<a href="#">按摩椅</a>|&nbsp;
											<a href="#">血压计</a>|&nbsp;
											<a href="#">血糖仪</a>|&nbsp;
											<a href="#">体温计</a>|&nbsp;
											<a href="#">计步器/脂肪检测仪</a>|&nbsp;
											<a href="#">其他健康电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 370px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>护理护具&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a> |&nbsp;
											<a href="#">监控安防</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5783326eN5368032a.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/57578765Nba8068d2.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/578304a7N5d4c0c2b.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/5755216eN0eef7852.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/54d09425Na25f4208.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/54bf5db9N91ad71b6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/56b1b1e4N46eed70b.png" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/57865664N33f93eb9.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865655Nd67e3b32.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt12">
						<div class="alls">
							<div class="alltype" id="t12">
								图书、音像、电子书
								<span style="float: right;">></span>
								<div class="alls1" id="type12">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;图书频道</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 120px; border: 0px solid red; width: 70px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;音像</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 200px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;电子书</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 290px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;图书榜</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 380px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;音乐榜</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 470px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;文娱众筹馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;&nbsp;音像&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">平板电脑</a>|&nbsp;
											<a href="#">空调</a>|&nbsp;
											<a href="#">冰箱</a>|&nbsp;
											<a href="#">洗衣机</a>|&nbsp;
											<a href="#">家庭影院</a>|&nbsp;
											<a href="#">DVD</a>|&nbsp;
											<a href="#">迷你音响</a>|&nbsp;
											<a href="#">冷柜/冰吧</a>


										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;&nbsp;少儿&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">油烟机</a>|&nbsp;
											<a href="#">燃气灶</a>|&nbsp;
											<a href="#">烟灶套装</a>|&nbsp;
											<a href="#">消毒柜</a>|&nbsp;
											<a href="#">洗碗机</a>|&nbsp;
											<a href="#">电热水器</a>|&nbsp;
											<a href="#">嵌入式厨电</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;&nbsp;教育&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电饭煲</a>|&nbsp;
											<a href="#">微波炉</a>|&nbsp;
											<a href="#">电烤箱</a>|&nbsp;
											<a href="#">电磁炉</a>|&nbsp;
											<a href="#">电压力锅</a>|&nbsp;
											<a href="#">豆浆机</a>|&nbsp;
											<a href="#">咖啡机</a>|&nbsp;
											<a href="#">面包机</a>

										</div>
									</div>

									<div
										style="position: absolute; top: 160px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>&nbsp;&nbsp;文艺&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>|&nbsp;
											<a href="#"></br>|&nbsp;<a href="#">净水器</a>|&nbsp;<a href="#">饮水机</a>|&nbsp;<a
												href="#">除湿机</a>|&nbsp;<a href="#">干衣机</a>|&nbsp;<a href="#">清洁机</a>|&nbsp;<a
												href="#">收录/音机</a> |&nbsp;<a href="#">其他生活电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 240px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>个户健康&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
											</br>
											|&nbsp;
											<a href="#">按摩器</a>|&nbsp;
											<a href="#">按摩椅</a>|&nbsp;
											<a href="#">血压计</a>|&nbsp;
											<a href="#">血糖仪</a>|&nbsp;
											<a href="#">体温计</a>|&nbsp;
											<a href="#">计步器/脂肪检测仪</a>|&nbsp;
											<a href="#">其他健康电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 320px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>五金家装&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a> |&nbsp;
											<a href="#">监控安防</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556faa83N3f4f79e6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/561df11bNb77d20a9.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd23Ne595b106.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562f4957N5b110921.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/57865664N33f93eb9.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865655Nd67e3b32.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt13">
						<div class="alls">
							<div class="alltype" id="t13">
								彩票、旅行、充值、票务
								<span style="float: right;">></span>
								<div class="alls1" id="type13">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;家电城</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 110px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;品牌日</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 210px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;智能生活馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 320px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;京东净化馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 430px; border: 0px solid red; width: 110px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;京东帮服务店</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>


									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;大家电&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">平板电脑</a>|&nbsp;
											<a href="#">空调</a>|&nbsp;
											<a href="#">冰箱</a>|&nbsp;
											<a href="#">洗衣机</a>|&nbsp;
											<a href="#">家庭影院</a>|&nbsp;
											<a href="#">DVD</a>|&nbsp;
											<a href="#">迷你音响</a>|&nbsp;
											<a href="#">冷柜/冰吧</a>


										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>厨卫大电&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">油烟机</a>|&nbsp;
											<a href="#">燃气灶</a>|&nbsp;
											<a href="#">烟灶套装</a>|&nbsp;
											<a href="#">消毒柜</a>|&nbsp;
											<a href="#">洗碗机</a>|&nbsp;
											<a href="#">电热水器</a>|&nbsp;
											<a href="#">嵌入式厨电</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 90px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 90px;">
											<span>厨房小电&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电饭煲</a>|&nbsp;
											<a href="#">微波炉</a>|&nbsp;
											<a href="#">电烤箱</a>|&nbsp;
											<a href="#">电磁炉</a>|&nbsp;
											<a href="#">电压力锅</a>|&nbsp;
											<a href="#">豆浆机</a>|&nbsp;
											<a href="#">咖啡机</a>|&nbsp;
											<a href="#">面包机</a>
											</br>
											|&nbsp;
											<a href="#">养生壶/煎药壶</a>|&nbsp;
											<a href="#">酸奶机</a>|&nbsp;
											<a href="#">煮蛋机</a>|&nbsp;
											<a href="#">电水壶/热水壶</a>|&nbsp;
											<a href="#">电炖锅</a> |&nbsp;
											<a href="#">多用途锅</a>|
											</br>
											|&nbsp;
											<a href="#">其他厨房电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 210px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>生活电器&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a> |&nbsp;
											<a href="#">其他生活电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 290px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>个户健康&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
											</br>
											|&nbsp;
											<a href="#">按摩器</a>|&nbsp;
											<a href="#">按摩椅</a>|&nbsp;
											<a href="#">血压计</a>|&nbsp;
											<a href="#">血糖仪</a>|&nbsp;
											<a href="#">体温计</a>|&nbsp;
											<a href="#">计步器/脂肪检测仪</a>|&nbsp;
											<a href="#">其他健康电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 370px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>五金家装&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a> |&nbsp;
											<a href="#">监控安防</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556faa83N3f4f79e6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/561df11bNb77d20a9.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd23Ne595b106.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562f4957N5b110921.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/57865664N33f93eb9.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865655Nd67e3b32.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

					<div style="background-color: #c81623; height: 35px;" id="tt14">
						<div class="alls">
							<div class="alltype" id="t14">
								理财、众筹、白条、保险
								<span style="float: right;">></span>
								<div class="alls1" id="type14">
									<div
										style="position: absolute; top: 20px; left: 20px; border: 0px solid red; width: 80px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;家电城</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 110px; border: 0px solid red; width: 90px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;品牌日</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 210px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;智能生活馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 320px; border: 0px solid red; width: 100px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;京东净化馆</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 430px; border: 0px solid red; width: 110px; height: 25px; line-height: 25px; background-color: gray;">
										<span style="font-size: 12px;" class="ww"><a href="#">&nbsp;京东帮服务店</a>
										</span>
										<div
											style="border: 0px solid red; width: 25px; height: 25px; line-height: 25px; float: right; background-color: #5c5251;">
											<span style="color: white; padding-left: 10px;">></span>
										</div>
									</div>

									<div
										style="position: absolute; top: 60px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>&nbsp;大家电&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">平板电脑</a>|&nbsp;
											<a href="#">空调</a>|&nbsp;
											<a href="#">冰箱</a>|&nbsp;
											<a href="#">洗衣机</a>|&nbsp;
											<a href="#">家庭影院</a>|&nbsp;
											<a href="#">DVD</a>|&nbsp;
											<a href="#">迷你音响</a>|&nbsp;
											<a href="#">冷柜/冰吧</a>


										</div>
									</div>

									<div
										style="position: absolute; top: 90px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 30px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 30px;">
											<span>厨卫大电&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">油烟机</a>|&nbsp;
											<a href="#">燃气灶</a>|&nbsp;
											<a href="#">烟灶套装</a>|&nbsp;
											<a href="#">消毒柜</a>|&nbsp;
											<a href="#">洗碗机</a>|&nbsp;
											<a href="#">电热水器</a>|&nbsp;
											<a href="#">嵌入式厨电</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 120px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 90px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 90px;">
											<span>厨房小电&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电饭煲</a>|&nbsp;
											<a href="#">微波炉</a>|&nbsp;
											<a href="#">电烤箱</a>|&nbsp;
											<a href="#">电磁炉</a>|&nbsp;
											<a href="#">电压力锅</a>|&nbsp;
											<a href="#">豆浆机</a>|&nbsp;
											<a href="#">咖啡机</a>|&nbsp;
											<a href="#">面包机</a>
											</br>
											|&nbsp;
											<a href="#">养生壶/煎药壶</a>|&nbsp;
											<a href="#">酸奶机</a>|&nbsp;
											<a href="#">煮蛋机</a>|&nbsp;
											<a href="#">电水壶/热水壶</a>|&nbsp;
											<a href="#">电炖锅</a> |&nbsp;
											<a href="#">多用途锅</a>
											</br>
											|&nbsp;
											<a href="#">其他厨房电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 210px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>生活电器&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电风扇</a>|&nbsp;
											<a href="#">冷风扇</a>|&nbsp;
											<a href="#">吸尘器</a>|&nbsp;
											<a href="#">净化器</a>|&nbsp;
											<a href="#">扫地机器人</a>|&nbsp;
											<a href="#">加湿器</a>|&nbsp;
											<a href="#">挂烫机/熨斗</a>
											</br>
											|&nbsp;
											<a href="#">净水器</a>|&nbsp;
											<a href="#">饮水机</a>|&nbsp;
											<a href="#">除湿机</a>|&nbsp;
											<a href="#">干衣机</a>|&nbsp;
											<a href="#">清洁机</a>|&nbsp;
											<a href="#">收录/音机</a> |&nbsp;
											<a href="#">其他生活电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 290px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>个户健康&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">剃须刀</a>|&nbsp;
											<a href="#">口腔护理</a>|&nbsp;
											<a href="#">电吹风</a>|&nbsp;
											<a href="#">美容器</a>|&nbsp;
											<a href="#">卷/直发器</a>|&nbsp;
											<a href="#">理发器</a>|&nbsp;
											<a href="#">剃/脱毛器</a>|&nbsp;
											<a href="#">足浴盆</a> |&nbsp;
											<a href="#">健康秤/厨房秤</a>
											</br>
											|&nbsp;
											<a href="#">按摩器</a>|&nbsp;
											<a href="#">按摩椅</a>|&nbsp;
											<a href="#">血压计</a>|&nbsp;
											<a href="#">血糖仪</a>|&nbsp;
											<a href="#">体温计</a>|&nbsp;
											<a href="#">计步器/脂肪检测仪</a>|&nbsp;
											<a href="#">其他健康电器</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 370px; left: 20px; border-bottom: 1px solid gray; width: 740px; height: 70px;"
										class="w2">
										<div
											style="color: #7d7d7d; font-weight: bolder; font-size: 12px; line-height: 70px;">
											<span>五金家装&nbsp;></span>
										</div>
										<div
											style="position: absolute; top: 0px; left: 70px; border: 0px solid gray; color: gray; font-size: 13px; height: 30px; line-height: 30px;">
											|&nbsp;
											<a href="#">电动工具</a>|&nbsp;
											<a href="#">手动工具</a>|&nbsp;
											<a href="#">仪器仪表</a>|&nbsp;
											<a href="#">浴霸/排气扇</a>|&nbsp;
											<a href="#">灯具</a>|&nbsp;
											<a href="#">LED灯</a>|&nbsp;
											<a href="#">洁身器</a>|&nbsp;
											<a href="#">水槽</a> |&nbsp;
											<a href="#">龙头</a>|&nbsp;
											<a href="#">淋浴花洒</a>
											</br>
											|&nbsp;
											<a href="#">厨卫五金</a>|&nbsp;
											<a href="#">家具五金</a>|&nbsp;
											<a href="#">门铃</a>|&nbsp;
											<a href="#">电器开关</a>|&nbsp;
											<a href="#">插座</a>|&nbsp;
											<a href="#">电工电料</a> |&nbsp;
											<a href="#">监控安防</a>
										</div>
									</div>

									<div
										style="position: absolute; top: 20px; left: 620px; border: 0px solid red; height: 490px; width: 200px; background-color: #f7f7f7;">

										<div
											style="position: absolute; top: 0px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 0px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556faa83N3f4f79e6.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/561df11bNb77d20a9.png"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 50px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd23Ne595b106.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562dcd75Nf0caa5bf.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 100px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/562f4957N5b110921.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 0px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg" />
										</div>

										<div
											style="position: absolute; top: 150px; left: 100px; border: 0px solid red; height: 50px; width: 100px;">
											<img src="../img/Searchimg/556e5d0fN2df8c1f5.jpg"
												width="100px" height="50px" />
										</div>

										<div
											style="position: absolute; top: 200px; left: 0px; border: 0px solid red; height: 150px; width: 200px;">
											<img src="../img/Searchimg/57865664N33f93eb9.jpg"
												width="200px" height="150px" />
										</div>

										<div
											style="position: absolute; top: 350px; left: 0px; border: 0px solid red; height: 140px; width: 200px;">
											<img src="../img/Searchimg/57865655Nd67e3b32.jpg"
												width="200px" height="140px" />
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div id="playBox">
				<div class="pre"></div>
				<div class="next"></div>
				<div class="smalltitle">
					<ul>
						<li class="thistitle"></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
				<ul class="oUlplay">
					<li>
						<img src="../img/Searchimg/aa.jpg" />
					</li>
					<li>
						<img src="../img/Searchimg/a2.jpg" />
					</li>
					<li>
						<img src="../img/Searchimg/a3.jpg" />
					</li>
					<li>
						<img src="../img/Searchimg/a4.jpg" />
					</li>
					<li>
						<img src="../img/Searchimg/a5.jpg" />
					</li>
					<li>
						<img src="../img/Searchimg/a6.jpg" />
					</li>
				</ul>
			</div>
			<div
				style="height: 415px; width: 221px; border: 1px solid gray; position: absolute; top: 225px; left: 800px;">
				<div id="aa">
					<span style="font-size: 20px; color: gray;">&nbsp;京东快报</span><a
						href="#"><span style="float: right; font-size: 10px;">更多&nbsp;>&nbsp;</span>
					</a>
				</div>

				<div id="aa1">
					<ul
						style="font-size: 12px; list-style: none; padding-left: 15px; line-height: 25px; margin-top: 5px;">
						<li>
							<a href="#"><span style="font-weight: bolder">[特惠]</span>数码精品99-30，互动赢无人机</a>
						</li>
						<li>
							<a href="#"><span style="font-weight: bolder">[公告]</span>华北区因暴雨配送延迟</a>
						</li>
						<li>
							<a href="#"><span style="font-weight: bolder">[特惠]</span>饼干蛋糕抢100-88神券</a>
						</li>
						<li>
							<a href="#"><span style="font-weight: bolder">[公告]</span>水灾救援物资网友捐赠通道开启</a>
						</li>
						<li>
							<a href="#"><span style="font-weight: bolder">[特惠]</span>盛夏东游记
								抢199减188神券</a>
						</li>
					</ul>
				</div>

				<div
					style="position: absolute; top: 175px; left: 0px; height: 240px; width: 238px; border: 0px solid red;">

					<div class="qw"
						style="position: absolute; top: 1px; left: 0px; border-bottom: 1px solid gray; border-right: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/asdfaf.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">话费</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 1px; left: 55px; border-bottom: 1px solid gray; border-right: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/axax.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">机票</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 1px; left: 110px; border-bottom: 1px solid gray; border-right: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/aAS.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">电影票</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 1px; left: 165px; border-bottom: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/111.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">游戏</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 80px; left: 0px; border-bottom: 1px solid gray; border-right: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/0126.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">彩票</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 80px; left: 55px; border-bottom: 1px solid gray; border-right: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/20142.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">加油卡</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 80px; left: 110px; border-bottom: 1px solid gray; border-right: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/721120153.png" height=30px;
							height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">酒店</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 80px; left: 165px; border-bottom: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/r20202.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">火车票</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 160px; left: 0px; border-bottom: 1px solid gray; border-right: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/zx217.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">众筹</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 160px; left: 55px; border-bottom: 1px solid gray; border-right: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/sgeqe.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">理财</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 160px; left: 110px; border-bottom: 1px solid gray; border-right: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/dasc.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">礼品卡</a>
						</span>
						</td>
					</div>

					<div class="qw"
						style="position: absolute; top: 160px; left: 165px; border-bottom: 1px solid gray; width: 55px; height: 80px;">
						<img src="../img/Searchimg/asfas.png" height=30px; height=60px; />
						</br>
						<span style="font-size: 14px; color: gray;"><a href="#">白条</a>
						</span>
						</td>
					</div>

				</div>
			</div>



			<div id="aa2">
				<img src="../img/Searchimg/aa2.PNG" height="63px" width="221px" />
			</div>

			<div id="di">

				<div style="position: absolute; top: 0px; left: 0px;">
					<span
						style="position: absolute; top: 120px; left: 60px; color: white; font-size: 20px;">今日推荐</span>
					<img src="../img/Searchimg/time.gif" width="200px" height="150px" />
				</div>

				<div id="tui1">
					<img src="../img/Searchimg/577e12a7N0ddf3394.jpg" width="202px"
						height="160px" />
				</div>

				<div id="tui2">
					<img src="../img/Searchimg/5785b76fNbbcaedb4.jpg" width="202px"
						height="160px" />
				</div>

				<div id="tui3">
					<img src="../img/Searchimg/5784804bN9e4d88a9.jpg" width="202px"
						height="160px" />
				</div>

				<div id="tui4">
					<img src="../img/Searchimg/5786ef4aN403fd530.jpg" width="202px"
						height="160px" />
				</div>

				<div id="huan">
					>
				</div>

			</div>

			<div style="position: absolute; top: 900px;">
				<%@include file="top.jsp"%>
			</div>

			<div style="position: absolute; top: 3740px;">
				<%@include file="last.jsp"%>
			</div>

		</div>

	</body>
</html>
