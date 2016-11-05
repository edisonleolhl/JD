<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
				+ request.getServerPort() + path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="TabSwitch.js"></script>
<script type="text/javascript" src="TTT.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    $('.tabs').myTab({
        operate:'mouseover',
        time:3000,
        auto:true,
        delayTime: 0
    });
});
$(document).ready(function(){
    $('.tabs1').myTab1({
        operate:'mouseover',
        time:3000,
        auto:true,
        delayTime: 0
    });
});
function glume1(obj){obj.innerHTML = "喜欢";}
function glume11(obj){obj.innerHTML = "1F";}

function glume2(obj){obj.innerHTML = "品质";}
function glume22(obj){obj.innerHTML = "2F";}
function glume3(obj){obj.innerHTML = "生活";}
function glume33(obj){obj.innerHTML = "3F";}
function glume4(obj){obj.innerHTML = "服装";}
function glume44(obj){obj.innerHTML = "4F";}
function glume5(obj){obj.innerHTML = "手机";}
function glume55(obj){obj.innerHTML = "5F";}
function glume6(obj){obj.innerHTML = "美妆";}
function glume66(obj){obj.innerHTML = "6F";}
function glume7(obj){obj.innerHTML = "母婴";}
function glume77(obj){obj.innerHTML = "7F";}

function glume8(obj){obj.innerHTML = "食品";}
function glume88(obj){obj.innerHTML = "8F";}

function glume9(obj){obj.innerHTML = "返回";}
function glume99(obj){obj.innerHTML = "9F";}
</script>
<style type="text/css">
	  .box{width:1024px;border:0px #C81623 solid;margin:0px auto;}
	  #a1{margin:0px  auto;font-size:19px;width:200px; height:30px; position:relative;left:0px;top:12px;font-family:"微软雅黑";}
	  #a2{margin-left:885px;margin-top:39px;font-size:12px;position:relative;left:-10px;top:12px;}
	  .like1{width:1026px;height:239px;border:solid 1px #D1D1D1;position:relative;left:0px;top:20px;}
	  #likeImg{width:1024px; height:105px;margin:0px  auto;}
      .like2{width:170px; height:103px;background-color:#FFFFFF;border:solid 1px #FFFFFF; margin-left:0px;}
      .like3{width:170.6px; height:103px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:171px;margin-top:-105px;}
	  .like4{width:170.6px; height:103px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:342px;margin-top:-105px;}
	  .like5{width:170.6px; height:103px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:513px;margin-top:-105px;}
	  .like6{width:170.6px; height:103px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:684px;margin-top:-105px;}
	  .like7{width:168px; height:103px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:853px;margin-top:-105px;}
	  #likeTXT{width:1024px; height:80px;background-color:#FFFFFF;margin-left:0px;margin-top:30px;}
	  .TXT2{width:169px; height:60px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:0px;border-right-color:#EDEDED;}
      .TXT3{width:168px; height:60px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:171px;margin-top:-62px;border-right-color:#EDEDED;}
	  .TXT4{width:169px; height:60px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:341px;margin-top:-62px;border-right-color:#EDEDED;}
	  .TXT5{width:169px; height:60px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:513px;margin-top:-62px;border-right-color:#EDEDED;}
	   .TXT6{width:168px; height:60px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:684px;margin-top:-62px;border-right-color:#EDEDED;}
	  .TXT7{width:168px; height:60px;background-color:#FFFFFF;border:solid 1px #FFFFFF;margin-left:854px;margin-top:-62px;}
	  .PINg{position:relative;right:0px;top:30px; }
	  #qingZhiShengHuo{width:1024px; height:389px;margin:0px auto;border:solid 1px #D1D1D1;position:relative;right:0px;top:20px;}
	  .ajd{font-family:"微软雅黑";position:relative;left:0px;top:10px;font-size:19px;}
	  #XingFaXian{position:relative;left:-1px;top:-1px;width:391px; height:235px;background-color:#F7F7F7;border:solid 1px #D1D1D1;}
	  #hr2{position:relative;left:0px;top:20px;}
	  #img1{position:relative;left:0px;top:15px;}
	  .a3{position:relative;left:170px;top:12px;font-size:15px; width:51px; height:10px;background-color:#F7F7F7;font-family:"微软雅黑";}
	  .imgid1{width:391px; height:153px; border:solid 1px #D1D1D1;position:relative;right:1px;top:-2px;}
	  .imgbox{background-color:#F7F7F7;width:195px;height:153px;border:solid 1px #D1D1D1;position:relative;right:-195px;top:-154px;}
	  .img51{width:180px;height:235px;border:solid 1px #D1D1D1;position:relative;right:-392px;top:-371px;}
	  .img5{width:180px;height:153px;border:solid 1px #D1D1D1;position:relative;right:-392px;top:-372px;}
      .img5{width:300px;height:389px;border:solid 1px #D1D1D1;position:relative;right:-573px;top:-608px;}
      .img7{width:150px;height:389px;border:solid 1px #D1D1D1;position:relative;right:-874px;top:-999px;}
      .hr1{position:relative;top:8px;}
      #img8{margin-left:0px;margin-top:60px;}
      #img9{margin-left:392px;margin-top:14px;}
      #hr3{margin-left:415px;margin-top:-1350px;}
      #img10{position:relative;right:0px;top:57px;}
      #img11{position:relative;right:0px;top:9px;}
      #img12{position:relative;right:0px;top:27px;}
      #hr4{margin-left:890px;margin-top:14px;}
      #hr5{margin-left:890px;margin-top:55px;}
      #hr6{margin-left:890px;margin-top:55px;}
      #hr7{margin-left:890px;margin-top:55px;}
      #hr8{margin-left:890px;margin-top:55px;}
      #hr9{margin-left:890px;margin-top:55px;}
      .img13{margin-left:880px;margin-top:-327px;}
      .img14{margin-left:888px;margin-top:-275px;}
      .img15{margin-left:888px;margin-top:-260px;}
      .kk{margin-left:915px;margin-top:-359px;}
      .img16{margin-top:12px;margin-left:2px;}
      .img17{margin-left:-9px;}
      .img18{margin-top:-5px;}
      .img19{margin-top:6px;}
      .kk1{margin-left:845px;margin-top:-272px;}
      .img20{margin-top:3px;}
      .img21{margin-top:10px;margin-left:7px;}
      .img22{margin-top:8px;margin-left:1px;}
      .img23{margin-top:2px;margin-left:1px;position:relative;right:3px;top:-242px;}
	  .kscat{font-family:"微软雅黑";font-size:15px;}
	  .fashao{font-size:10px;}
	  .fashao2{font-size:13px;color:red;margin-top:4px;}
	  .img24{margin-top:2px;margin-left:1px;position:relative;right:30px;top:-162px;}
      .img25{position:relative;right:-368px;top:-410px;}
	  .img26{position:relative;right:-368px;top:-335px;}
	  .a4{position:relative;left:460px;top:-676px;font-size:15px;;font-family:"微软雅黑";}
	  .img27{position:relative;right:-170px;top:-458px;}
	  .img28{width:1024px;height:130px;border:solid 0px #D1D1D1;margin-left:1px;margin-top:-385px;}
      .ggimg1{margin-left:-9px;margin-top:-360px;}
      .ggimg2{margin-left:-9px;margin-top:-360px;}
	  #fzxb{width:1024px;height:450px;border:solid 1px #FFFFFF;margin-top:40px;}
	
.menu {float:left;list-style-type:none;height:40px;line-height:30px;width:300px;border:0px;padding:0;margin:0;margin-left:503px;margin-top:-30px;}
.menu li{float:left;width:70px;text-align:center;border:solid 1px #EDEDED;cursor:pointer;font-size:10px;color:#666666;}
.main{float:left;clear:left;margin-bottom:30px;}
.menu .on{border-top:solid 2px #a40000;border-bottom:solid 1px #fff;color:#a40000;}
.tab{height:570px;width:750px;float:left;clear:both;border:solid 1px #EDEDED;border-top:none;line-height:20px;text-align:center; display: none;margin-top:-8px;margin-left:40px;}
.tabs{margin-top:-528px;margin-left:232px;}
     
	.box1{width:179px; height:450px;border:solid 1px #CFE8CC;border-right:0px; margin-top:-1px;background-image:url(../image/9.jpg)}
	.box2{width:330px; height:450px;border:solid 1px #CFE8CC;border-right:0px;border-left:0px;margin-top:-452px;margin-left:181px;}
	.box3{width:180px; height:450px;border:solid 1px #CFE8CC;border-right:0px; margin-top:-452px;margin-left:512px;background-image:url('../image/9b6.jpg')}
	.box4{width:330px; height:450px;border:solid 1px #FFFFFF; margin-top:-452px;margin-left:692px;}
     #box1_1{width:179px; height:100px;margin-top:210px;background-color:#D9F0F7;}
     #box1_1 a{font-family:"微软雅黑";font-size:15px;color:#666666;margin-left:52px;text-decoration:none;}
     #box1_1 a:hover{ color:#B7432C;}
     #box1_2{width:179px; height:140px;margin-top:-13px;background-color:#E8F6FA;font-family:"微软雅黑";font-size:13px;color:#B7432C;}
     #box1_2 ul li{line-height:30px;margin-left:9px;margin-top:5px;}
     #box1_2 a{color:#666666;text-decoration:none;margin-left:-22px;}
     #box1_2 a:hover{ color:#B7432C;}
     #box3_1{width:179px; height:100px;margin-top:210px;background-color:#D9F0F7;}
     #box3_1 a{font-family:"微软雅黑";font-size:15px;color:#666666;margin-left:52px;text-decoration:none;}
     #box3_1 a:hover{ color:#B7432C;}
     #box3_2{width:179px; height:140px;margin-top:-13px;background-color:#E8F6FA;font-family:"微软雅黑";font-size:13px;color:#B7432C;}
     #box3_2 ul li{line-height:30px;margin-left:9px;margin-top:5px;}
     #box3_2 a{color:#666666;text-decoration:none;margin-left:-22px;}
     #box3_2 a:hover{ color:#B7432C;}
     .box2img_1{width:331px;height:208px;border:solid 1px #EDEDED;border-left:0px;margin-left:-1px;background-image:url('../image/7a.jpg')}
     .box4img_1{width:331px;height:209px;border:solid 1px #EDEDED;border-bottom:0px;border-left:0px;border-right:0px;margin-left:-2px;margin-top:-1px;background-image:url('../image/91.jpg')}
     .box2img_2{width:163px;height:119px;border:solid 1px #EDEDED;border-left:0px;margin-top:-1px;}
     .box2img_3{width:163px;height:119px;border:solid 1px #EDEDED;border-left:0px;margin-top:0px;}
     .box2img_4{width:165px;height:119px;border:solid 1px #EDEDED;border-left:0px;margin-left:164px;margin-top:-242px;}
     .box2img_5{width:165px;height:119px;border:solid 1px #EDEDED;border-left:0px;margin-left:164px;margin-top:0px;}
     
     .box5img_2{width:163px;height:119px;border:solid 1px #EDEDED;border-left:0px;border-right:0px;margin-top:-1px;}
     .box5img_3{width:163px;height:119px;border:solid 1px #EDEDED;border-left:0px;border-right:0px;margin-top:0px;}
     .box5img_4{width:165px;height:119px;border:solid 1px #EDEDED;border-right:0px;margin-left:164px;margin-top:-242px;}
     .box5img_5{width:165px;height:119px;border:solid 1px #EDEDED;border-right:0px;margin-left:164px;margin-top:0px;}
     .i{margin-top:10px;}
     .a5{ width:151px; height:30px;font-family:"微软雅黑";margin-top:-489px;font-size:19px;}
     
     .hrxie{position:relative;left:-144px;top:54px;}
     .fubox{width:274px; height:572px;background-color:#666666;font-family:"微软雅黑";font-size:13px;position:relative;left:-1px;top:45px;background-image:url('../image/hhh.jpg')}
     .fubox1{width:272px;height:85px;border:solid 1px #EDEDED;background-color:#EAEBF5;position:relative;top:230px;opacity:0.5;}
     #fubox2 a{line-height:30px;font-family:"微软雅黑";color:#666666;text-decoration:none;margin-left:6px;}
     #fubox2 a:hover{ color:#B7432C;}
     .fubox3{color:#C81623;line-height:23px;width:272px; height:115px;border:solid 1px #EDEDED;background-color:#EAEBF5;margin-left:0px;margin-top:230px;font-size:10px;}
     #fubox3_1 li{margin-left:-15px;}
     #fubox3_1 a{font-family:"微软雅黑";color:#666666;text-decoration:none;}
     #fubox3_1 a:hover{ color:#B7432C;}
     .xk1_1{width:375px;height:142.5px;border:solid 1px #EDEDED;float:left;margin-top:-1px;}
     .xk1_2{width:375px;height:285px;border:solid 1px #EDEDED;float:left;margin-top:-1px;}
     .xk1_3{width:375px;height:140px;border:solid 1px #EDEDED;float:left;margin-top:-1px;}
     .xk1_4{width:186px;height:142.5px;border:solid 1px #EDEDED;float:left;margin-top:-431px;margin-left:-1px;}
     .xk1_5{width:186px;height:142.5px;border:solid 1px #EDEDED;float:right;margin-top:-431px;margin-right:-1px;}
     .xk1_6{width:186px;height:142.5px;border:solid 1px #EDEDED;float:right;margin-top:-288px;margin-right:-1px;}
     .xk1_7{width:186px;height:142.5px;border:solid 1px #EDEDED;float:left;margin-top:-288px;margin-left:-1px;}
     .xk1_8{width:186px;height:143px;border:solid 1px #EDEDED;float:left;margin-top:-145px;margin-left:-1px;}
     .xk1_9{width:186px;height:140px;border:solid 1px #EDEDED;float:left;margin-top:-1px;margin-left:-1px;} 
     .xk1_10{width:186px;height:284px;border:solid 1px #EDEDED;float:right;margin-top:-286px;margin-right:-1px;}

      .xk2_1{width:187px; height:215px;border:solid 1px #EDEDED;float:left;margin-top:-1px;}
	  .xk2_2{width:187px; height:215px;border:solid 1px #EDEDED;float:left;margin-top:-1px;margin-left:-1px;}
      .xk2_3{width:187px; height:215px;border:solid 1px #EDEDED;float:left;margin-top:-1px;margin-left:-1px;}
      .xk2_4{width:185px; height:215px;border:solid 1px #EDEDED;float:right;margin-top:-217px;margin-right:-1px;}
	  .xk2_5{width:187px; height:215px;border:solid 1px #EDEDED;float:left;margin-top:-1px;margin-left:0px;}
	  .xk2_6{width:187px; height:215px;border:solid 1px #EDEDED;float:left;margin-top:-1px;margin-left:-1px;}
	  .xk2_7{width:187px; height:215px;border:solid 1px #EDEDED;float:left;margin-top:-1px;margin-left:-1px;}
	  .xk2_8{width:185px; height:215px;border:solid 1px #EDEDED;float:right;margin-top:-217px;margin-right:-1px;}
	  
	  .xk2_9{width:187px; height:138px;border:solid 1px #EDEDED;float:left;margin-top:-1px;}
	  .xk2_10{width:187px; height:138px;border:solid 1px #EDEDED;float:left;margin-top:-1px;margin-left:-1px;}
	  .xk2_11{width:187px; height:138px;border:solid 1px #EDEDED;float:left;margin-top:-1px;margin-left:-1px;}
	  .xk2_12{width:185px; height:138px;border:solid 1px #EDEDED;float:right;margin-top:-140px;margin-right:-1px;}

      #namzhuang li{text-align:left;line-height:15px;margin-left:-33px;margin-top:-10px;}
      #namzhuang a{color:#666666;text-decoration:none;margin-left:2px;font-family:"微软雅黑";font-size:13px;}
      #namzhuang a:hover{ color:#B7432C;}

	.guangao{background-color:#F7F7F7;width:1022px; height:70px;border:solid 1px #EDEDED;float:right;margin-top:10px;margin-right:-1px;}
	.guangao a{line-width:40px;font-family:"微软雅黑";color:#D1D1D1;text-decoration:none;}
	p img{vertical-align:middle;}
	.guangao1{background-color:#F7F7F7;width:1022px; height:70px;border:solid 1px #EDEDED;float:right;margin-top:-20px;margin-right:-1px;}
	.guangao1 a{line-width:40px;font-family:"微软雅黑";color:#D1D1D1;text-decoration:none;}
	.imgc{width:1024px;height:100px;border:solid 1px #D1D1D1;margin-left:1px;margin-top:675px;}
	.shouji{margin-top:10px;}


.menu1 {float: left;list-style-type:none;height:40px;line-height:30px;border-right:solid 1px #EDEDED;float:left;padding:0;margin:0;margin-left:503px;margin-top:-30px;}
.menu1 li{float:left;width:71px;text-align:center;border:solid 1px #EDEDED;border-right:none;cursor:pointer; font-size:10px;color:#666666;}
.main1{float:left;clear:left;margin-bottom:30px;}
.menu1 .on{border-top:solid 2px #a40000;border-bottom:solid 1px #fff;color:#a40000;}
.tab1{height:431px;width:750px;float:left;clear:both;border:solid 1px #EDEDED;border-top:none;line-height:20px;text-align:center; display: none;margin-top:-8px;margin-left:40px;}
.tabs1{margin-top:-386px;margin-left:232px;}

.fuboxBOX2{width:274px; height:430px;background-color:#666666;font-family:"微软雅黑";font-size:15px;position:relative;left:-1px;top:45px;background-image:url('../image/5785f673N7fd29954.jpg')}
.fubox3BOX{color:#C81623;line-height:28px;width:272px; height:172px;border:solid 1px #EDEDED;background-color:#EAEBF5;margin-left:0px;margin-top:217px;font-size:10px;}
     #fubox3_1BOX li{margin-left:-15px;margin-top:-3px;}
     #fubox3_1BOX a{font-family:"微软雅黑";color:#666666;text-decoration:none;}
     #fubox3_1BOX a:hover{ color:#B7432C;}
.fubox1BOX{width:272px;height:40px;border:solid 1px #EDEDED;background-color:#EAEBF5;position:relative;top:217px;opacity:0.5;}
 #fubox2BOX a{line-height:8px;font-family:"微软雅黑";color:#666666;text-decoration:none;margin-left:6px;}
 #fubox2BOX a:hover{ color:#B7432C;} 
     .xk1_11{width:50%;height:50%;border:solid 1px #EDEDED;float:left;margin-top:-1px;}
     .xk1_21{width:50%;height:50%;border:solid 1px #EDEDED;float:left;margin-top:-2px;}
     .xk1_211{width:50%;height:99%;border:solid 1px #EDEDED;margin-left:-1px;border-bottom-color:#FFFFFF;}
     .xk1_212{width:49.7%;height:99%;border:solid 1px #EDEDED;float:right;margin-right:-1px;margin-top:-215px;border-bottom-color:#FFFFFF;}
     .xk1_41{width:24.7%;height:25.1%;border:solid 1px #EDEDED;float:left;margin-left:-1px;margin-top:-110px;}
     .xk1_51{width:24.7%;height:25.1%;border:solid 1px #EDEDED;float:right;margin-top:-218px;border-right-color:#FFFFFF;}
     .xk1_61{width:24.7%;height:25.1%;border:solid 1px #EDEDED;float:left;margin-left:-1px;margin-top:-218px;}
     .xk1_71{width:24.7%;height:25.1%;border:solid 1px #EDEDED;float:right;margin-top:-109px;border-right-color:#FFFFFF;}
     .xk1_81{width:49.6%;height:49.5%;border:solid 1px #EDEDED;float:right;margin-left:3px;margin-top:-216px;border-bottom-color:#FFFFFF;border-right-color:#FFFFFF;}
     .xk1_811{width:49.8%;height:100%;border:solid 1px #EDEDED;float:left;margin-left:-1px;margin-top:-1px;border-bottom-color:#FFFFFF;}
     .xk1_812{width:49.7%;height:100%;border:solid 0px #EDEDED;float:right;margin-left:-1px;}
.ajd1{font-family:"微软雅黑";position:relative;left:0px;top:-550px;font-size:19px;}
.ajd2{font-family:"微软雅黑";position:relative;left:-85px;top:-1390px;font-size:19px;}
	#shutiao{line-height:30px;width:40px;height:280px;border:solid 1px #FFFFFF;float:left;position:fixed;left:100px;top:200px;color:#625351;font-size:16px;}  
	#shutiao a{line-height:30px;font-family:"微软雅黑";color:#666666;text-decoration:none;margin-left:-3px;margin-top:30px;}
    #shutiao a:hover{ color:#FFFFFF;font-size:16px;line-height:10px;background-color:#B7432C;position:relative;left:0px;top:14px;}
	#shutiao1{font-family:"楷体";width:29px;height:30px;border:dashed 1px #FFFFFF;border-bottom-color:#908584;text-align:center;}
    .TXT8-1{width:130px; height:40px;background-color:#ffffff;border:1px solod #FFFFFF;font-family:"微软雅黑";font-size:12px;color:#485158;}
	  .TXT8-1:HOVER{font-family:"微软雅黑";font-size:12px;color:red;}
.TXT9{width:100px;height:30px;background-color:#ffffff;float:left;margin-top:5px;margin-left:30px;font-family:"微软雅黑";font-size:20px;color:red;}
 .like1-1{width:1024px;height:216px;border:solid 1px #ffffff;position:relative;left:0px;top:20px;}



</style>
</head>

<body>
  <div class="box"> <!-- 外部d iv -->
   <a name="1Faaaa" >猜你喜欢</a>
  	  <div class="like1"><!--猜你喜欢-->
	 <div class="like1-1">
	  <div id="likeImg"><!-- 图片 --> 
	 	 
		  <div class="like2"><center><img src="like/image-1.jpg"></center></div> 
		  <div class="like3"><center><img src="like/image-2.jpg"></center></div>
		  <div class="like4"><center><img src="like/image-3.jpg"></center></div>
		  <div class="like5"><center><img src="like/image-4.jpg"></center></div>
		  <div class="like6"><center><img src="like/image-5.jpg"></center></div>
		  <div class="like7"><center><img src="like/image-6.jpg"></center></div>
		 
     </div><!-- 图片 -->
     <div id="likeTXT"><!-- 文字价格 -->
  	      <div class="TXT2"><center><a class="TXT8-1">洛薇雅2016秋装新款针织衫女开衫圆领纯色简</a><a class="TXT9">¥99.00</a></center></div> 
		  <div class="TXT3"><center><a class="TXT8-1">格兰仕（Galanz）烤箱家用容量多功能烘焙30</a><a class="TXT9">¥209.00</a></center></div>
		  <div class="TXT4"><center><a class="TXT8-1">长帝（changdi）32升L上下调温转叉多功能家</a><a class="TXT9">¥299.00</a></center></div>
		  <div class="TXT5"><center><a class="TXT8-1">传神山地自行车山地车21速双碟刹26寸变速减</a><a class="TXT9">¥338.00</a></center></div>
		  <div class="TXT6"><center><a class="TXT8-1">【京东超市】可悠然（KUYURA）美肌沐浴</a><a class="TXT9"> ¥56.00</a></center></div>
		  <div class="TXT7"><center><a class="TXT8-1">麦威电动车 大龟王 电动车摩托车电动摩托车电</a><a class="TXT9">¥3580.00</a></center></div>
     </div><!-- 文字价格 -->
     </div>
     
                     </div><!-- 猜你喜欢 -->
                   <div class="PINg">
                <a class="ajd" name="ajd">京东 · 品质生活</a>
             <div id="qingZhiShengHuo"><!-- 京东 · 品质生活 -->
          <div>
        <div id="XingFaXian">
          <div class="a3"><b>新发现</b></div>
	         <hr id="hr2"style="border:none;width:331px;height:1 px;border-top:1px dashed #E0E0E0;"/>
	           <img src="../image/5786e7e3Nd965e0be.jpg"style="width:391px;height:195px;"id="img1">
	            <img src="../image/DWD.jpg" id="img9" style=" width:180px; height:153px;"></img>
	              </div>
	                </div>
                     <div class="imgid1">
                    <img src="../image/xx.jpg" ></img>
	               <div class="imgbox">
	             <img src="../image/57861092N7b4b9171.jpg"id="img4"></img>
	            </div>
               </div>
          </div><!-- 京东 · 品质生活 -->
              <div class="img51">
		          <img src="../image/KSVMSKD.jpg"style=" width:180px; height:153px;"id="img8"></img>
		      </div>
	          <div class="img5">
		          <img src="../image/57844b03N7fa41416.jpg"style="width:300px;"id="img11"></img>
		          <img src="../image/k6.jpg"style=" width:300px;"id="img12"></img>
		          <img src="../image/aaa6.jpg"style=" width:300px; height:250px;"id="img10"></img> 
	          </div>
              <div class="img7">
		          <hr class="hr1" size="360"width="0px" style="border:none;border-left:1px dashed #E0E0E0;">
		   </div>
		          <hr id="hr3"style="border:none;width:138px;height:1 px;border-top:1px dashed #E0E0E0;"/>
				    <hr id="hr4"style="border:none;width:120px;height:1 px;border-top:1px dashed #E0E0E0;"/>
					  <hr id="hr5"style="border:none;width:120px;height:1 px;border-top:1px dashed #E0E0E0;"/>
					    <hr id="hr6"style="border:none;width:120px;height:1 px;border-top:1px dashed #E0E0E0;"/>
					     <hr id="hr7"style="border:none;width:120px;height:1 px;border-top:1px dashed #E0E0E0;"/>
			     		   <hr id="hr8"style="border:none;width:120px;height:1 px;border-top:1px dashed #E0E0E0;"/>
			                <hr id="hr9"style="border:none;width:120px;height:1 px;border-top:1px dashed #E0E0E0;"/>
		   
		                    <img src="../image/56a5ce04Na88da415.png"class="img13" style=" width:63px;"></img>
		                <img src="../image/56ca5bc8N20a06bc4.png"class="img14"style=" width:55px;height:30px;"></img>
		             <img src="../image/572966eeN007d6ad3.jpg"></img>
			      <img src="../image/5743bec9Ndb9969b3.png"class="img15"style=" width:55px;height:35px;"></img>
		  <ul class="kk" style="list-style-type:none">
	        <li>
              <img src="../image/574d36dbN262ef26d.jpg"style=" width:60px;height:25px;"></img></li>
            <li> <br>
                 <img src="../image/5786128bN6232ac1b.jpg"style=" width:60px;height:30px;"></img>
            </li>
	        <li><br>
	             <img src="../image/564d4328N6fb33fc8.png"style=" width:55px;height:27px;"class="img16"></img>
	         </li>
			 <li><br>
			      <img src="../image/569dce20N87f111d4.jpg"class="img17"></img>
			 </li>
		     <li><br><br>
			      <img src="../image/56a82043N6e9f3b14.jpg"style=" width:60px;height:25px;"class="img18"></img>
		     </li>
		     <li> <br>
		          <img src="../image/56b2f385N8e4eb051.jpg"style=" width:60px;height:28px;"class="img19"></img>
		     </li>
		   </ul>
		      <ul class="kk1" style="list-style-type:none">
		       <li>
		           <img src="../image/56c04bc6Nb1e3b063.jpg" class="img20"style=" width:60px;height:28px;"></img>
		       </li>
			   <li><br><br><br><br>
			       <img src="../image/575d1934Nb59e3dfd.jpg" class="img20"></img>
			   </li>
			   <li><br>
			        <img src="../image/5716e2c4Nc925baf3.jpg" class="img21"style=" width:50px;height:27px;"></img>
				 </li>
			     <li><br>
		            <img src="../image/54d079c1N7f18e2ef.jpg" class="img22"style=" width:63px;height:28px;"></img>
		          </li>
		     </ul>
	      <ul style="list-style-type:none" class="img23">
	         <li class="kscat"> <b>KSCAT</b> <br><br></li>
	          <li class="fashao">  <a>发烧级胆机音箱</a><br></li>     
	         <li class="fashao2"><a>预定抽奖 100%中奖</a></li>      
		  </ul>
		     <ul style="list-style-type:none" class="img24">
		      <li class="kscat"> <b>新先购</b> <br><br></li>
		     <li class="fashao">  <a>大屏期间X7 Plus</a><br></li>     
		  <li class="fashao2"><a>宋仲基代言新品</a></li>      
		  </ul>
		  <ul style="list-style-type:none" class="img25">
			  <li class="kscat"> <b>达人推荐</b> <br><br></li>
			   <li class="fashao">  <a>驰骋天下</a><br></li>     
			  <li class="fashao2"><a>陆风X5</a></li>      
		  </ul>
		  <ul style="list-style-type:none" class="img26">
			  <li class="kscat"> <b>发现好物</b> <br><br></li>
			   <li class="fashao">  <a>在家也能做运动</a><br></li>     
		      <li class="fashao2"><a>静音动感单车</a></li>      
		  </ul>
		  <div class="a4"><b>好东西</b></div>
		  <ul style="list-style-type:none" class="img27">
			  <li class="kscat"> <b> 限时秒杀</b> <br><br></li>
			   <li class="fashao">  <a>背光游戏键盘</a><br></li>     
		      <li class="fashao2"><a>48元限量秒杀</a></li>      
	      </ul>
	   	  </div>
			      <!-- 中间大广告 -->
			     <div class="img28">
				   <img src="../image/577f49a9N4397bdc9.jpg"style=" width:342px;height:128px;">
				   <img src="../image/df94.jpg"style=" width:342px;height:128px;"class="ggimg1">
		           <img src="../image/577f497bN066c3975.jpg"style=" width:342px;height:128px;"class="ggimg2">
	             </div>
				        <div id="fzxb" ><!-- 生活服务 -->
				          <div class="box1">
				          <div id="box1_1"><br><a>众筹频道</a><br><br><a>理财频道</a>  </div>
					    <div id="box1_2"> 
			<ul style="list-style-type:none">
			   <li><a>一罐到底 满199减100</a></li>
			     <li><a>手机全场满3000减100</a></li>
			     <li><a>壕礼</a>&nbsp; &nbsp; &nbsp;10亿  &nbsp; &nbsp; &nbsp;  &nbsp;<a>小白卡</a></li>
			   <li><a>0元试用</a>&nbsp; &nbsp;夏日购&nbsp; &nbsp; &nbsp; &nbsp; <a>礼包</a></li>
			</ul>
			</div>
			</div>
				   
                     <div class="box2">
                   <div class="box2img_1">s</div> 
                 <div class="box5img_2"><img class="i" src="../image/za.jpg" style=" width:161px;height:100px;"></img></div>
                <div class="box5img_3"><img class="i" src="../image/sfad.jpg" style=" width:161px;height:100px;"></img></div>
              <div class="box5img_4"><img class="i" src="../image/sdasd.jpg" style=" width:161px;height:100px;"></img></div>
            <div class="box5img_5"><img class="i" src="../image/asfaf.jpg" style=" width:161px;height:100px;"></img></div>
            </div>
	          <div class="box3">
	            <div id="box3_1"><br><a>旅游频道</a><br><br><a>国际机票</a>  </div>
		         <div id="box3_2"> <ul style="list-style-type:none">
			       <li><a>大牌奢华之道</a></li>
				     <li><a>全品类 清仓特卖</a></li>
				      <li><a>订机票</a>&nbsp; &nbsp;订酒店&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;<a>看电影</a></li>
			           <li><a>生活</a>&nbsp; &nbsp;ship&nbsp; &nbsp; &nbsp; &nbsp; <a>旅游出行</a></li>
		            	</ul>
		           	     </div>
	                   </div>
		              <div class="box4">
		             <div class="box4img_1"></div>
			        <div class="box2img_2"><img class="i" src="../image/1f0.jpg" style=" width:161px;height:100px;"></img></div>
	              <div class="box2img_3"><img class="i" src="../image/123.jpg" style=" width:161px;height:100px;"></img></div>
	             <div class="box2img_4"><img class="i" src="../image/156.jpg" style=" width:161px;height:100px;"></img></div>
                <div class="box2img_5"><img class="i" src="../image/195.jpg" style=" width:161px;height:100px;"></img></div>
               </div>
	      <div class="a5" ><a name="a5">生活服务</a></div>
          </div><!-- 生活服务 -->
   
     <div class="guangao"><!-- 生活服务下的一条广告 -->
		<p><a><img src="../image/axa.jpg"></img>&nbsp;|&nbsp;<img src="../image/CVBBV.jpg"></img>&nbsp;|&nbsp;<img src="../image/CVBCHF.jpg"></img>
			&nbsp;|&nbsp;<img src="../image/HJDJD.jpg"></img>&nbsp;|&nbsp;<img src="../image/XCVBXFH.jpg"></img>&nbsp;|&nbsp;<img src="../image/XCVXBBG.jpg"></img>
			&nbsp;|&nbsp;<img src="../image/XFZ.jpg"></img>&nbsp;|&nbsp;<img src="../image/XVXFHD.jpg"></img>&nbsp;|&nbsp;<img src="../image/XZXC.jpg"></img></a></p>
    </div><!-- 生活服务下的一条广告 -->
    
   <div><!-- 服装鞋包 -->
     <hr class="hrxie"style="border:none;width:735px;height:1 px;border-top:1px solid #EDEDED;"/>
     <div class="fubox">
     <div class="fubox1">
     <ul style="list-style-type:none" id="fubox2">
          <li><a>男装</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>女装</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>内衣</a></li>
          <li><a>鞋靴</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>箱包</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>奢侈品</a></li>
     </ul>
    </div>
     <div class="fubox3">
     <ul style="list-style-type:none" id="fubox3_1">
         <li>潮流女装&nbsp;&nbsp;&nbsp;<a>太阳镜</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>服装城</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;品质男鞋</li>
         <li><a>时尚女鞋</a>&nbsp;&nbsp;&nbsp;<a>奢侈品</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;时尚女包&nbsp;&nbsp;&nbsp;<a>奢品名表</a></li>
         <li><a>精品男装</a>&nbsp;&nbsp;&nbsp;菩提手串&nbsp;&nbsp;&nbsp;<a>精品男包</a>&nbsp;&nbsp;&nbsp;<a>国表经典</a></li>
         <li><a>纯棉内裤</a>&nbsp;&nbsp;&nbsp;<a>水晶手链</a>&nbsp;&nbsp;&nbsp;<a>维氏手表</a>&nbsp;&nbsp;&nbsp;潮流日表</li>
     </ul>
     </div>
     </div>
		   <div class="tabs"> <!-- 选卡内容 -->
			<ul class="menu">
				<li class="on">大牌</li>
			    <li class="on">男装</li>
			    <li class="on">女装</li>
			    <li class="on">鞋靴</li>
			</ul>
			<div class="main">
<!-- 大牌 -->
<!-- 大牌 -->
		        <div class="tab" style="display: none;">
		        <div class="xk1_1">
		             <img src="../image/fgh.jpg"style="width:375px;height:142.5px;"></img>
		        </div>
		        <div class="xk1_2">
		             <img src="../image/i.jpg"style="width:375px;height:285px;"></img>
		        </div>
		        <div class="xk1_3">
		       		 <img src="../image/kjzdkjd.jpg"style="width:375px;height:140px;"></img>
		        </div>
		        <div class="xk1_4">
		       		 <img src="../image/bhbhbh.jpg"style="width:186px;height:142.5px;"></img>
		        </div>
		        <div class="xk1_5">
		        	 <img src="../image/ffffu.jpg"style="width:186px;height:142.5px;"></img>
		        </div>
		        <div class="xk1_6">
		       	 	 <img src="../image/gggg.jpg"style="width:186px;height:142.5px;"></img>
		        </div>
		        <div class="xk1_7">
		        	 <img src="../image/jhjhh.jpg"style="width:186px;height:142.5px;"></img>
		        </div>
		        <div class="xk1_8">
		        	 <img src="../image/bhkj.jpg"style="width:186px;height:143px;"></img>
		        </div>
		        <div class="xk1_9">
		        	 <img src="../image/3215348.jpg"style="width:186px;height:140px;"></img>
		        </div>
		        <div class="xk1_10">
		        	 <img src="../image/31251.jpg"style="width:186px;height:284px;"></img>
		        </div>
                </div>
    <!-- 大牌 -->
    <!-- 男装 -->
		        <div class="tab" style="display: block;">
		        
		        <div class="xk2_1">
		        <br>
		        <img src="../image/ASDASDA.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>哈吉斯短袖T恤翻领撞色POLO</a></li>
		          <li><br><br><a>￥544.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_2">
		         <br>
		        <img src="../image/CCCCCCCCCCC.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>劲霸纯色亚麻休闲短袖衬衫</a></li>
		          <li><br><br><a>￥229.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_3">
		         <br>
		        <img src="../image/ZXCZXC.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>布先生翻领商务纯色短袖t恤</a></li>
		          <li><br><br><a>￥268.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_4">
		         <br>
		        <img src="../image/ZXCZXCZXCSDDV.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>时尚都市黑色圆领短袖T恤</a></li>
		          <li><br><br><a>￥109.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_5">
		          <br>
		        <img src="../image/ZDGJX.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>牛深波纹堆叠褶皱纹理仔裤</a></li>
		          <li><br><br><a>￥1698.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_6">
		         <br>
		        <img src="../image/JFGJDFGH.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>男士免烫长裤商务休闲西裤</a></li>
		          <li><br><br><a>￥249.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_7">
		        <br>
		        <img src="../image/FGXVBX.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>以纯修身窄脚莱卡牛仔裤男装</a></li>
		          <li><br><br><a>￥119.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_8">
		        <br>
		        <img src="../image/XRGFGGNF.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>全棉休闲五分沙滩男士短裤</a></li>
		          <li><br><br><a>￥238.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_9">
		           <img src="../image/XCBSD.jpg"style="width:187px; height:138px;"></img>
		        </div>
		        <div class="xk2_10">
		           <img src="../image/QWDASD.jpg"style="width:187px; height:138px;"></img>
		        </div>
		        <div class="xk2_11">
		           <img src="../image/XCGFGH.jpg"style="width:187px; height:138px;"></img>
		        </div>
		        <div class="xk2_12">
		           <img src="../image/MNDVKJ.jpg"style="width:186px; height:138px;"></img>
		        </div>
		        </div>
	 <!-- 女装  -->
	 <!-- 女装  -->
	 <!-- 女装  -->
		        <div class="tab" style="display: none;">
                <div class="xk2_1">
		        <br>
		        <img src="../image/SSSSSS.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>花卉图案A字裙摆印花连衣裙</a></li>
		          <li><br><a>￥349.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_2">
		         <br>
		        <img src="../image/49689.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>条纹圆领无袖包臀连衣裙</a></li>
		          <li><br><br><a>￥224.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_3">
		         <br>
		        <img src="../image/2463.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>VeroModa两穿背带牛仔裙</a></li>
		          <li><br><br><a>￥274.50</a></li>
		        </ul>
		        </div>
		        <div class="xk2_4">
		         <br>
		        <img src="../image/46399.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>字母印花圆领宽松短款连衣裙</a></li>
		          <li><br><br><a>￥224.50</a></li>
		        </ul>
		        </div>
		        <div class="xk2_5">
		          <br>
		        <img src="../image/42.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>一字领露肩连衣短裙</a></li>
		          <li><br><br><a>￥399.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_6">
		         <br>
		        <img src="../image/2452.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>宽松圆领短袖T恤</a></li>
		          <li><br><br><a>￥169.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_7">
		        <br>
		        <img src="../image/3656.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>拼接宽松短款短袖衬衫</a></li>
		          <li><br><br><a>￥639.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_8">
		        <br>
		        <img src="../image/7935.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>纯棉条纹无袖连衣裙衬衫裙</a></li>
		          <li><br><br><a>￥458.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_9">
		        <img src="../image/78676.jpg"style="width:187px; height:138px;"></img>
		        </div>
		        <div class="xk2_10">
		        <img src="../image/78545.jpg"style="width:187px; height:138px;"></img>
		        </div>
		        <div class="xk2_11">
		        <img src="../image/75757.jpg"style="width:187px; height:138px;"></img>
		        </div>
		        <div class="xk2_12">
		        <img src="../image/411143.jpg"style="width:186px; height:138px;"></img>
		        </div>

			</div>
	<!-- 鞋靴 -->	
	<!-- 鞋靴 -->		
		        <div class="tab" style="display: none;">
		        <div class="xk2_1">
		        <br>
		        <img src="../image/5785aefcN48077e50.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>卡帝乐鳄鱼休闲皮鞋</a></li>
		          <li><br><br><a>￥129.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_2">
		         <br>
		        <img src="../image/57907992Ncba3761c.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>休闲鞋头层羊皮豆豆鞋</a></li>
		          <li><br><br><a>￥954.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_3">
		         <br>
		        <img src="../image/5794c9beN7d7ca9fa.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>皮鞋鳄鱼纹真皮套脚高档男鞋</a></li>
		          <li><br><br><a>￥105.50</a></li>
		        </ul>
		        </div>                                        
		        <div class="xk2_4">
		         <br>
		        <img src="../image/576a0145N75fc8cbd.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>2016春夏新款印花休闲帆布鞋</a></li>
		          <li><br><br><a>￥399.50</a></li>
		        </ul>
		        </div>
		        <div class="xk2_5">
		          <br>
		        <img src="../image/5757e7d9N79eea2ea.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>马卡龙果冻凉鞋沙滩冲浪鞋</a></li>
		          <li><br><br><a>￥523.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_6">
		         <br>
		        <img src="../image/57907c40N0458199f.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>新款单鞋女尖头细高跟女鞋</a></li>
		          <li><br><br><a>￥120.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_7">
		        <br>
		        <img src="../image/57907e54N06ed7bc9.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>拉链水钻夹趾绑带罗马平底鞋</a></li>
		          <li><br><br><a>￥139.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_8">
		        <br>
		        <img src="../image/57917c25N2e28f2c9.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>格力特布细条带度假低跟凉鞋</a></li>
		          <li><br><br><a>￥250.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_9">
		        <img src="../image/ZXCZX.jpg"style="width:187px; height:138px;"></img>
		        </div>
		        <div class="xk2_10">
		        <img src="../image/zx.jpg"style="width:187px; height:138px;"></img>
		        </div>
		        <div class="xk2_11">
		        <img src="../image/TR6.jpg"style="width:187px; height:138px;"></img>
		        </div>
		        <div class="xk2_12">
		        <img src="../image/RTYR5.jpg"style="width:186px; height:138px;"></img>
		        </div>
		        
		        </div>
		    </div>
		</div><!-- 选卡内容 -->
		</div><!-- 服装鞋包 -->
		<div class="guangao1"><!-- 生活服务下的一条广告 -->
		       <p><a><img src="../image/5782f862Nee8aca84.png"></img>&nbsp;|&nbsp;<img src="../image/5747b251N818750c2.jpg"></img>&nbsp;|&nbsp;<img src="../image/576394c5N608c0587.png"></img>
			    &nbsp;|&nbsp;<img src="../image/5770f4d8Nd1e3bd94.jpg"></img>&nbsp;|&nbsp;<img src="../image/5779c51dN1d668a38.jpg"></img>&nbsp;|&nbsp;<img src="../image/5782f83fN46d1a0dc.png"></img>
			    &nbsp;|&nbsp;<img src="../image/5732ec02N847c5d0f.jpg"></img>&nbsp;|&nbsp;<img src="../image/5782f873N93cfaf3e.jpg"></img>&nbsp;|&nbsp;<img src="../image/5782f881N1f68cd45.jpg"></img></a></p>
        </div><!-- 生活服务下的一条广告 -->
			     <div class="imgc"><!-- 中间大广告 -->
				   <img src="../image/577da60aN173ef89b.jpg"style=" width:342px;height:120px;">
				   <img src="../image/57846347Nb9bef6f7.jpg"style=" width:342px;height:120px;"class="ggimg1">
		           <img src="../image/5785f9b6N479651bc.jpg"style=" width:342px;height:120px;"class="ggimg2">
	             </div>
	             
	             <div class="shouji"><!-- 3F手机通讯 -->
     <hr class="hrxie"style="border:none;width:735px;height:1 px;border-top:1px solid #EDEDED;"/>
     <div class="fuboxBOX2">
     <div class="fubox1BOX">
     <ul style="list-style-type:none" id="fubox2BOX">
          <li><a>手机</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>营业厅</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>配件</a></li>
     </ul>
    </div>
     <div class="fubox3BOX">
     <ul style="list-style-type:none" id="fubox3_1BOX">
         <li>魅蓝3礼盒699即售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;抽迪士尼门票</li>
         <li>赞品牌 0元赢手机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;精品配件低至6.18</li>
         <li><a>手机通讯</a>&nbsp;&nbsp;&nbsp;指纹识别&nbsp;&nbsp;&nbsp;&nbsp;<a>手机管家</a>&nbsp;&nbsp;&nbsp;<a> 以旧换新</a></li>
         <li><a>双卡双待</a>&nbsp;&nbsp;&nbsp;<a>老人机</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>高清屏</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;金属机身</li>
         <li><a>精品特惠</a>&nbsp;&nbsp;&nbsp;宽带&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a> 特惠</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>4G套餐</a></li>
         <li><a>数据线</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>移动</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>低至五折</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;自营配件</li>
      </ul>
     </div>
     </div>
		   <div class="tabs1"> <!-- 选卡内容 -->
			<ul class="menu1">
				<li class="on">热门</li>
			    <li class="on">品质优选</li>
			    <li class="on">新机尝鲜</li>
			    <li class="on">高性价比</li>
			</ul>
			<div class="main1">
	<!-- 热门 -->
		        <div class="tab1" style="display: none;">
		        <div class="xk1_11">
		               <img src="../image/GF.jpg"style="width:100%;height:100%;"></img>
		        </div>
		        <div class="xk1_21">
		        <div class="xk1_211">
		        	 <img src="../image/578654beN8d1875f3.jpg"style="width:100%;height:100%;"></img>
		        </div>
		        <div class="xk1_212">
		       		 <img src="../image/57865470Nb6dbf5c2.jpg"style="width:100%;height:100%;"></img>
		        </div>
		        </div>
		        <div class="xk1_41">
		        	 <img src="../image/57865578N54d5aa38.jpg"style="width:100%;height:100%;"></img>
		        </div>
		        <div class="xk1_51">
		        	 <img src="../image/578655daN908ece04.jpg"style="width:100%;height:100%;"></img>
		        </div>
		        <div class="xk1_61">
		        	 <img src="../image/5786560aN0d907c2c.jpg"style="width:100%;height:100%;"></img>
		       	</div>
		        <div class="xk1_71">
		        	 <img src="../image/57865631N07b333da.jpg"style="width:100%;height:100%;"></img>
		        </div>
		        <div class="xk1_81">
		        <div class="xk1_811">
		        	 <img src="../image/57859c8bN647979e8.jpg"style="width:100%;height:100%;"></img>
		        </div>
		        <div class="xk1_812">
		        	 <img src="../image/5786551aNc008415d.jpg"style="width:100%;height:100%;"></img>
		        </div>
		        </div>
		      </div>
   <!-- 热门 -->
    <!-- 品质优选 -->
		        <div class="tab1" style="display: block;">
		        
		        <div class="xk2_1">
		        <br>
		        	<img src="../image/555af01aN0bf1fcb1.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		            <li> <a>小米 Note 全网通 白色 移动联</a></li>
		              <li><br><a>通电信4G手机 双卡双待</a></li>
		            <li><br><a>￥1299.00</a></li>
		        </ul>
		         </div>
		        <div class="xk2_2">
		         <br>
		             <img src="../image/56276aa9N41d9b45c.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
			          <li><a>魅族 PRO5 32GB 银白色 移动</a></li>
			          <li><br><a>联通双4G手机 双卡双待</a></li>
			          <li><br><a>￥2199.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_3">
		         <br>
		              <img src="../image/5715e107N3f4413f8.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
			          <li> <a>努比亚(nubia)【3+64GB】小</a></li>
			          <li><br><a>牛5 Z11mini 黑色 </a></li>
			          <li><br><a>￥1299.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_4">
		         <br>
		       		 <img src="../image/573efa6eN5c1e58bd.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
			          <li> <a>HTC Desire 830 金酪黑巧  移</a></li>
			          <li><br><a>动联通双4G手机</a></li>
			          <li><br><a>￥1499.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_5">
		          <br>
		        	  <img src="../image/574d4fa8N5261f482.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
			          <li> <a>OPPO R9 4GB+64GB内存版 </a></li>
			          <li><br><a>全网通4G手机 双卡双待</a></li>
			          <li><br><a>￥2499.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_6">
		         <br>
		        	  <img src="../image/57577df0N156b9b7f.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
			          <li><a>荣耀 畅玩5C 2GB+16GB 暗</a></li>
			          <li><br><a>夜灰 移动4G手机 双卡双待</a></li>
			          <li><br><a>￥899.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_7">
		        <br>
		       		 <img src="../image/576a30a9N6e0daf1e.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li><a>华为 P9 全网通 4GB+64GB版</a></li>
		          <li><br><a>金色 移动联通电信4G手机</a></li>
		          <li><br><a>￥3688.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_8">
		        <br>
		       		 <img src="../image/578d9dcfN2d5b0827.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li><a>荣耀8 流光金 全网通(4GB</a></li>
		          <li><br><a>+32GB)标配</a></li>
		          <li><br><a>￥2499.00</a></li>
		        </ul>
		        </div>
		        </div>
	 <!-- 新机尝鲜  -->
		        <div class="tab1" style="display: none;">
                <div class="xk2_1">
		        <br>
		        	  <img src="../image/56e987efN32aa204c.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>OPPO R9 4GB+64GB内存版</a></li>
		          <li><br><a>玫瑰金 全网通4G手机 </a></li>
		          <li><br><a>￥2499.00</a></li>
		          

		        </ul>
		        </div>
		        <div class="xk2_2">
		         <br>
		        	  <img src="../image/574c00e9Ndd214a15.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>小米 Max 全网通 标准版 3GB</a></li>
		          <li><br><a>内存 32GB ROM 金色 4G手机</a></li>
		          <li><br><a>￥1499.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_3">
		         <br>
		       	    <img src="../image/6.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		            <li><a>360手机 N4 全网通(4GB</a></li>
		          <li><br><a>+32GB)标配</a></li>
		          <li><br><a>￥2499.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_4">
		         <br>
		        	  <img src="../image/578d8d3fN548a8da2.png"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>【超值套装版】魅族 魅蓝</a></li>
		          <li><br><a>全网通公开版 银色 4G手机</a></li>
		          <li><br><a>￥999.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_5">
		          <br>
		       	     <img src="../image/5782fa11Nf6e0ea53.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>荣耀8 4GB+32GB 全网通版</a></li>
		          <li><br><a>珠光白</a></li>
		          <li><br><a>￥2299.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_6">
		         <br>
		        	  <img src="../image/573357c1N10bb6e16.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>小米 Max 全网通 标准版 3GB</a></li>
		          <li><br><a>内存 32GB ROM 金色 4G手机</a></li>
		          <li><br><a>￥￥1499.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_7">
		        <br>
		        	  <img src="../image/578738d1N00bcde3e.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li><a>华为 麦芒5 全网通 4GB+64</a></li>
                  <li><br><a>GB版 移动联通电信4G手机</a></li>
		          <li><br><a>￥2599.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_8">
		        <br>
		        	  <img src="../image/5761471cNc52af1ab.jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>中兴(ZTE) Blade A2(BV0720)</a></li>
		          <li><br><a>珍珠银 移动联通电信4G</a></li>
		          <li><br><a>￥699.00</a></li>
		        </ul>
		        </div>
			  </div>
	
	<!-- 高性价比 -->		
		        <div class="tab1" style="display: none;">
		        <div class="xk2_1">
		        <br>
		             <img src="../image/ZC (1).jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>中兴(ZTE) Blade A2(BV0720)</a></li>
		          <li><br><a>珍珠银 移动联通电信4G</a></li>
		          <li><br><a>￥699.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_2">
		         <br>
		           	  <img src="../image/ZC (2).jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		           <li> <a>联想 乐檬3 （K32C36）16GB</a></li>
		          <li><br><a>金色移动4G手机 双卡双待</a></li>
		          <li><br><a>￥599.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_3">
		         <br>
		              <img src="../image/ZC (3).jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		           <li> <a>【简约套装版】荣耀 V8 全网</a></li>
		          <li><br><a>通 高配版 4GB+64GB 玫瑰金</a></li>
		          <li><br><a>￥2839.00</a></li>
		        </ul>
		        </div>                                        
		        <div class="xk2_4">
		         <br>
		       	     <img src="../image/ZC (4).jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>魅族 MX5 16GB 灰色 移动</a></li>
		          <li><br><a>双4G手机 双卡双待</a></li>
		          <li><br><a>￥1399.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_5">
		          <br>
		       	  	  <img src="../image/ZC (5).jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>小米5 全网通 高配版 3GB内存</a></li>
		          <li><br><a>64GB ROM 白色</a></li>
		          <li><br><a>￥2299.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_6">
		         <br>
		       	   	 <img src="../image/ZC (6).jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>乐视（Le）乐Max2（X820) </a></li>
		          <li><br><a>金色 移动联通电信4G</a></li>
		          <li><br><a>￥2099.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_7">
		        <br>
		        	  <img src="../image/ZC (7).jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>360手机 F4 2GB+16GB </a></li>
		          <li><br><a>魔力白移动4G手机</a></li>
		          <li><br><a>￥599.00</a></li>
		        </ul>
		        </div>
		        <div class="xk2_8">
		        <br>
		        	  <img src="../image/ZC (8).jpg"></img>
		        <ul id="namzhuang" style="list-style-type:none">
		          <li> <a>ZTE Blade A2(BV0720)</a></li>
		          <li><br><a>珍珠银 移动联通</a></li>
		          <li><br><a>￥699.00</a></li>
		        </ul>
		        </div>
		        </div>
		    </div>
		 </div><!-- 选卡内容 -->
		</div><!-- 3F手机通讯 -->
		
		<div class="guangao1"><!-- 生活服务下的一条广告 -->
		<p><a><img src="../image/21141055.png"></img>&nbsp;|&nbsp;<img 

src="../image/556e5d0fN2df8c1f5.jpg"></img>&nbsp;|&nbsp;<img 

src="../image/556faa83N3f4f79e6.jpg"></img>
			&nbsp;|&nbsp;<img src="../image/55c2fde9Nd33569d4.jpg"></img>&nbsp;|&nbsp;<img 

src="../image/56f4d65cN43390ca1.png"></img>&nbsp;|&nbsp;<img 

src="../image/56fb664fN24e2c1d0.jpg"></img>
			&nbsp;|&nbsp;<img src="../image/5786f0abN8fc23481.png"></img>&nbsp;|&nbsp;<img 

src="../image/57208a9aN87231249.jpg"></img>&nbsp;|&nbsp;<img 

src="../image/574eb855N9cf94604.jpg"></img></a></p>
    </div><!-- 生活服务下的一条广告 -->
		<a class="ajd1" name="ajd1">手机通讯</a>
		<a class="ajd2" name="ajd2">服装鞋包</a>
		
		   </div> <!-- 外部d iv -->
   
<div id="shutiao"><!-- 竖条跟踪 -->
		<div  id="shutiao1"><a href="<%=basePath %>fristpage/search.jsp#1Faaaa" onmouseover="glume1(this);" onmouseout="glume11(this);">1F</a></div>
		<div  id="shutiao1"><a href="<%=basePath %>fristpage/search.jsp#ajd" onmouseover="glume2(this);" onmouseout="glume22(this);">2F</a></div>
		<div  id="shutiao1"><a href="<%=basePath %>fristpage/search.jsp#a5"onmouseover="glume3(this);" onmouseout="glume33(this);">3F</a></div>
		<div  id="shutiao1"><a href="<%=basePath %>fristpage/search.jsp#ajd2"onmouseover="glume4(this);" onmouseout="glume44(this);">4F</a></div>
		<div  id="shutiao1"><a href="<%=basePath %>fristpage/search.jsp#ajd1"onmouseover="glume5(this);" onmouseout="glume55(this);">5F</a></div>
		<div  id="shutiao1"><a href="#"onmouseover="glume6(this);" onmouseout="glume66(this);">6F</a></div>
		<div  id="shutiao1"><a href="#"onmouseover="glume7(this);" onmouseout="glume77(this);">7F</a></div>
		<div  id="shutiao1"><a href="#"onmouseover="glume8(this);" onmouseout="glume88(this);">8F</a></div>
		<div  id="shutiao1"><a href="<%=basePath %>fristpage/search.jsp#search"onmouseover="glume9(this);" onmouseout="glume99(this);">9F</a></div>
		</div><!-- 竖条跟踪 -->














































</body>
</html>