<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="ce" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("add", request.getAttribute("add"));
	request.setAttribute("adds", request.getAttribute("adds"));
	request.setAttribute("addr", request.getAttribute("addr"));
	request.setAttribute("map", request.getAttribute("map"));
	request.setAttribute("money", request.getAttribute("money"));
	request.setAttribute("count", request.getAttribute("count"));
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'jieSuan.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/datouwang.css" type="text/css"></link>


<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script>
	$(function() {
		$(".uuu").click(
				function() {
					$(".uuu").css("border", "1px solid #CCC");
					$(".uuu").children("span").css("display", "none");
					$(this).css("border", "2px solid #DF3033");
					$(this).children("span").css("display", "block");

					var name = $(this).parent().parent().next().children(
							".getName").children("a").eq(0).text();
					var prov = $(this).parent().parent().next().children(
							".getName").children("a").eq(1)
							.children(".getProv").text();
					var city = $(this).parent().parent().next().children(
							".getName").children("a").eq(1)
							.children(".getCity").text();
					var area = $(this).parent().parent().next().children(
							".getName").children("a").eq(1)
							.children(".getArea").text();
					var phone = $(this).parent().parent().next().children(
							".getName").children("a").eq(2).text();

					$("#getProv").text(prov);
					$("#getName").text(name);
					$("#getCity").text(city);
					$("#getArea").text(area);
					$("#getPhone").text(phone);

					var id = $(this).children("[name=id]").val();
					$("[name=address]").val(id);

				});
	});

	function msgbox(n) {
		document.getElementById('inputbox').style.display = n ? 'block'
				: 'none'; /* 点击按钮打开/关闭 对话框 */
	}

	function CheckInfo() {
		var $name = $("#name");
		var $tis1 = $("#tis1");

		if ($name.val() == "") {
			$tis1.html("收货人姓名不能为空！");
		} else {
			$tis1.html("");
		}

	}

	function CheckInfo1() {
		var $address = $("#address");
		var $tis2 = $("#tis2");
		if ($address.val() == "") {
			$tis2.html("详细地址不能为空！");
		} else {
			$tis2.html("");
		}
	}
	function CheckInfo2() {
		var $phone1 = $("#phone1");
		var $number = $("#number");
		var $tis3 = $("#tis3");
		if ($phone1.val() == "" && $number.val() == "") {
			$tis3.html("联系方式不能为空！");
		} else {
			$tis3.html("");
		}
	}

	function AddInfo() {
		var $name = $("#name").val();
		var $pp = $("[name=province]").val();
		var $city = $("[name=city]").val();

		$("[name=name]").val($name);
		$("[name=provincial]").val($pp);
		$("[name=city]").val($city);
	}
</script>
<script language=javascript>
	window.onload = historyOncemore;
	window.onbeforeunload = fixHistory;

	var city = [
			[ "东城", "西城", "朝阳", "丰台", "石景山", "海淀", "门头沟", "房山", "通州", "顺义",
					"昌平", "大兴", "平谷", "怀柔", "密云", "延庆" ],
			[ "和平", "河东", "河西", "河北", "红桥", "滨海新区", "东丽", "西青", "津南", "宁河",
					"武清", "静海", "宝坻", "蓟县" ],
			[ "石家庄", "长安区", "桥东区", "桥西区", "新华区", "井陉矿区", "裕华区", "井陉县", "正定县",
					"栾城县", "行唐县", "灵寿县", "高邑县", "深泽县", "赞皇县", "无极县", "平山县",
					"元氏县", "赵县", "辛集市", "唐山", "秦皇岛", "北戴河区", "山海关区", "邯郸",
					"邢台", "保定", "张家口", "承德", "沧州" ],
			[ "郑州", "洛阳", "开封", "漯河", "安阳", "新乡", "三门峡", "周口", "焦作", "平顶山",
					"信阳", "南阳", "鹤壁", "商丘", "许昌", "驻马店" ],
			[ "长沙", "株洲", "湘潭", "衡阳", "岳阳", "郴州", "邵阳", "怀化", "永州", "常德", "益阳",
					"张家界", "娄底" ],
			[ "武汉", "襄樊", "宜昌", "黄石", "鄂州", "随州", "荆州", "荆门", "十堰", "孝感", "黄冈",
					"咸宁" ],
			[ "黄浦", "卢湾", "徐汇", "长宁", "静安", "普陀", "闸北", "虹口", "杨浦", "闵行", "宝山",
					"嘉定", "浦东新区", "金山", "松江", "奉贤", "青浦", "崇明" ],
			[ "万州", "涪陵", "渝中", "大渡口", "江北", "沙坪坝", "九龙坡", "南岸", "北碚", "两江新区",
					"万盛", "双桥", "渝北", "巴南", "长寿", "潼南", "铜梁", "大足", "荣昌", "璧山",
					"梁平", "城口", "丰都", "巫山", "石柱", "秀山", "彭水", "永川", "合川", "黔江",
					"江津" ],
			[ "太原", "大同", "忻州", "阳泉", "长治", "晋城", "朔州", "晋中", "吕梁" ],
			[ "沈阳", "大连", "鞍山", "抚顺", "本溪", "丹东", "锦州", "营口", "阜新", "辽阳", "盘锦",
					"铁岭", "朝阳", "葫芦岛" ],
			[ "长春", "吉林", "四平", "辽源", "通化", "白山", "松原", "白城" ],
			[ "哈尔滨市", "齐齐哈尔市", "鸡西市", "鹤岗市", "双鸭山市", "大庆市", "伊春市", "佳木斯市",
					"七台河市", "牡丹江市", "黑河市", "绥化市" ],
			[ "呼和浩特", "包头", "乌海", "赤峰", "通辽", "鄂尔多斯", "呼伦贝尔", "巴彦淖尔", "乌兰察布", ],
			[ "南京", "镇江", "常州", "无锡", "苏州", "徐州", "连云港", "淮安", "盐城", "扬州",
					"泰州", "南通", "宿迁" ],
			[ "济南", "青岛", "淄博", "枣庄", "东营", "烟台", "潍坊", "济宁", "泰安", "威海", "日照",
					"临沂", "莱芜" ],
			[ "合肥", "蚌埠", "芜湖", "淮南", "亳州", "阜阳", "淮北", "宿州", "滁州", "安庆", "巢湖",
					"马鞍山", ],
			[ "杭州市", "宁波市", "温州市", "嘉兴市", "湖州市", "绍兴市", "金华市", "衢州市", "舟山市",
					"台州市", "丽水市" ],
			[ "福州市", "厦门市", "莆田市", "三明市", "泉州市", "漳州市", "南平市", "龙岩市", "宁德市" ],
			[ "广州市", "韶关市", "深圳市", "珠海市", "汕头市", "佛山市", "江门市", "湛江市", "茂名市",
					"肇庆市", "揭阳市", "梅州市", "汕尾市" ],
			[ "南宁市", "柳州市", "桂林市", "梧州市", "北海市" ],
			[ "南昌市", "景德镇市", "萍乡市", "九江市", "新余市", "抚州市", "上饶市" ],
			[ "成都市", "自贡市", "攀枝花市", "泸州市", "德阳市", "绵阳市" ],
			[ "贵阳市", "六盘水市", "遵义市", "安顺市", "毕节市", "铜仁市" ],
			[ "昆明市", "曲靖市", "玉溪市", "保山市", "昭通市", "丽江市", "普洱市", "临沧市" ],
			[ "西安市", "铜川市", "宝鸡市", "咸阳市", "渭南市", "延安市", "汉中市", "榆林市", "安康市",
					"商洛市" ],
			[ "西宁", "格尔木", "德令哈" ],
			[ "银川", "石嘴山", "吴忠", "固原", "中卫" ],
			[ "乌鲁木齐", "天山区", "沙依巴克区", "新市区", "水磨沟区", "头屯河区", "达坂城区", "米东区" ],
			[ "台北市", "高雄市", "基隆市", "台中市", "台南市", "新竹市", "嘉义市", "台北县", "宜兰县",
					"桃园县", "苗栗县", "彰化县", "云林县", "嘉义县", "屏东县", "花莲县" ],
			[ "中西区", "东区", "九龙城区", "观塘区", "南区", "深水埗区", "黄大仙区", "湾仔区", "油尖旺区",
					"离岛区", "葵青区", "北区", "西贡区", "沙田区", "屯门区", "大埔区" ],
			[ "花地玛堂区", "圣安多尼堂区", "大堂区", "望德堂区", "风顺堂区", "氹仔", "路环" ],
			[ "钓鱼岛" ], [ "美国", "法国" ] ];

	function getCity() {
		//获得省份下拉框的对象
		var sltProvince = document.userupdateForm.province;
		//获得城市下拉框的对象
		var sltCity = document.userupdateForm.city;

		//得到对应省份的城市数组
		var provinceCity = city[sltProvince.selectedIndex - 1];

		//清空城市下拉框，仅留提示选项
		sltCity.length = 1;

		//将城市数组中的值填充到城市下拉框中
		for ( var i = 0; i < provinceCity.length; i++) {
			sltCity[i + 1] = new Option(provinceCity[i], provinceCity[i]);
		}
	}

	function fixHistory() //记住历史
	{
		document.all("theHistoryRecord").value = document
				.all("thedetailtableDIV").innerHTML.replace(/\n/g, "");
	}

	function historyOncemore() //恢复历史
	{
		if (document.all("theHistoryRecord").value != "") {
			document.all("thedetailtableDIV").innerHTML = document
					.all("theHistoryRecord").value;
		}
	}

	function selectallcheckbox(obj) //全选或全不选
	{
		var tureorfalse = obj.checked;
		var theDetail = tbDetailUsed.rows;
		for ( var i = 0; i < theDetail.length - 1; i++) {
			theDetail[i].all("record_select").checked = tureorfalse;
		}
	}
</script>

</head>

<style type="text/css">
body {
	width: 100%;
	border: 0px #C81623 solid;
	margin: 0px auto;
}

#box {
	width: 990px;
	border: 0px #0000FF solid;
	margin: 0px auto;
}

#img1 {
	width: 100%;
}

#box2 {
	width: 100%;
	border: 1px #E6E6E6 solid;
	margin: 0px auto;
	color: #666666;
	font-size: 15px;
	margin-top: 15px;
}

#box3 {
	width: 100%;
	border: 1px #E6E6E6 solid;
	margin: 0px auto;
	margin-left: -1px;
	margin-top: -1px;
	color: #666666;
	border-right: 0px;
	border-bottom: 0px;
	border-left: 0px;
}

#box3_1 {
	width: 95%;
	border: 1px #E6E6E6 solid;
	border-right: 0px;
	border-top: 0px;
	border-left: 0px;
	margin: 0px auto;
}

.box3_1_li {
	line-height: 30px;
}

#box3_ul1 {
	list-style-type: none;
	float: left;
	font-size: 13px;
	color: #666666;
	margin-top: -42px;
	margin-left: 120px;
}

#box3_txt {
	font-size: 14px;
	color: #000000;
	margin-top: 10px;
}

.box3_txt1 {
	font-size: 13.4px;
	color: #005EA7;
	margin-left: 770px;
}

#lll {
	font-size: 16px;
	color: #666666;
	margin-top: 50px;
	font-family: "微软雅黑";
}

#box4_1 {
	width: 95%;
	height: 105px;
	border: 1px #E6E6E6 solid;
	border-right: 0px;
	border-top: 0px;
	border-left: 0px;
	margin: 0px auto;
}

.box4_1_li {
	line-height: 30px;
}

#box4_ul1 {
	list-style-type: none;
	float: left;
	font-size: 14px;
	color: #666666;
	margin-top: -37px;
	margin-left: 380px;
}

#box4_txt {
	font-size: 14px;
	color: #000000;
	margin-top: 10px;
}

#box5_1 {
	width: 95%;
	border: 1px #FFFFFF solid;
	margin: 0px auto;
}

.box5_1_li {
	line-height: 30px;
}

#box5_txt {
	font-size: 14px;
	color: #000000;
	margin-top: 10px;
}

.box5_txt1 {
	font-size: 13.4px;
	color: #005EA7;
	margin-left: 30px;
}

.box5_txt2 {
	font-size: 13.4px;
	color: #005EA7;
	margin-left: 690px;
}

#xxx {
	font-size: 13px;
	color: #666666;
	margin-left: 20px;
	margin-top: 30px;
}

#box6 {
	width: 100%;
	margin-top: 10px;
	border: 0px solid red;
}

.box7 {
	width: 65%;
	background-color: #F3FBFE;
	float: right;
	margin-top: 0px;
	margin-left: 0px;
	border: 0px solid red;
}

#ooo {
	width: 100%;
}

#shangjia {
	margin: 10px 20px;
	color: #666666;
}

#img2 {
	width: 75px;
	height: 75px;
	border: 0px #E6E6E6 solid;
	margin: 20px 20px;
}

#box8 {
	width: 100%;
	height: 150px;
	margin: 0px 0px;
}

#txt1 {
	margin: 10px 80px;
	width: 520px;
	height: 27px;
	color: #CCCCCC;
	font-size: 13.2px;
	border: 1px #CCCCCC solid;
}

#tiShi {
	font-size: 13.2px;
	margin: 0px -25px;
}

.box9_1_li {
	line-height: 30px;
}

#box9_txt {
	font-size: 14px;
	color: #000000;
	margin-top: 10px;
}

box9_txt1 {
	font-size: 13.5px;
	color: #005EA7;
}

#box9_txt2 {
	font-size: 13.5px;
	color: #666666;
	margin: 60px 20px;
}

#box10_txt {
	font-size: 14px;
	color: #000000;
	margin: 10px 20px;
}

#box11 {
	width: 100%;
	height: 100px;
	border: 1px #FFFFFF solid;
}

#box11 ul {
	font-size: 13.5px;
	color: #666666;
	margin: 0px 650px;
	width: 100%;
	line-height: 30px;
}

#boxa {
	margin: 0px 6px;
}

#boxa1 {
	margin: 0px 80px;
}

#boxa2 {
	font-size: 20px;
	color: #E4393C;
	font-weight: bolder;
	margin: 0px 50px;
}

#a4 {
	color: #E4393C;
}

#box12 {
	width: 100%;
	height: 80px;
	border: 2px #E6E6E6 solid;
	border-left-color: #FFFFFF;
	border-right-color: #FFFFFF;
	border-bottom-color: #FFFFFF;
	background-color: #F4F4F4;
}

#box12 ul {
	font-size: 13px;
	color: #666666;
	margin: 5px 650px;
	width: 100%;
	line-height: 30px;
}

#li2 {
	font-size: 14px;
	margin: 0px -150px;
}

#txt44 {
	width: 120px;
	height: 40px;
	font-size: 16px;
	color: #FFFFFF;
	background-color: #EE0000;
	border: 1px #EE0000 solid;
	border-radius: 4px;
	margin: 10px 840px;
}

#radio_wrap {
	margin: 10px -10px;
}

#radio_wrap li {
	position: relative;
	width: 90px;
	height: 25px;
	border: 1px solid #CCC;
	display: inline-block;
	*zoom: 1;
	margin: 0 2px;
	vertical-align: middle;
	text-align: center;
}

#radio_wrap li a {
	position: relative;
	top: 3px;
}

#radio_wrap li.checked {
	border: 2px solid #E4393C;
	margin: -1px 1px;
}

#radio_wrap li.checked i {
	width: 30px;
	height: 30px;
	position: absolute;
	right: -19%;
	bottom: -17PX;
	background: url(img/gggggg.jpg) no-repeat;
}

#radio111111 {
	margin: 20px -20px;
	font-size: 13.4px;
}

.uuu {
	position: relative;
	width: 140px;
	height: 27px;
	border: 1px solid #CCC;
	display: inline-block;
	text-align: center;
}

.uuu a {
	position: relative;
	top: 4px;
}

#wwwwwwwwww {
	margin: 10px -20px;
	font-size: 13.4px;
	width: 140px;
	height: 27px;
}

#wwwwwwwwww li {
	position: relative;
	width: 140px;
	height: 27px;
	border: 1px solid #CCC;
	display: inline-block;
	text-align: center;
}

#wwwwwwwwww li a {
	position: relative;
	top: 4px;
}

#wwwwwwwwww li {
	border: 2px solid #E4393C;
	margin: -1px 1px;
}

#wwwwwwwwww li i {
	width: 30px;
	height: 30px;
	position: absolute;
	right: -13%;
	bottom: -17PX;
	background: url(img/gggggg.jpg) no-repeat;
}

.box13 {
	line-height: 27px;
	font-size: 13px;
	color: #666666;
	border-radius: 6px;
	width: 615px;
	height: 335px;
	margin: auto;
	padding: 28px;
	height: 350px;
	border: solid 4px #C4C4C4;
	display: none; /* 默认对话框隐藏 */
}

.box13.show {
	z-index: 9999;
	display: block;
}

.box13 .x {
	z-index: 9999;
	display: block;
	margin-left: 621px;
	margin-top: -32px;
	color: #aaa;
	font-size: 30px;
	font-family: "楷体";
	text-decoration: none;
	background-color: #FFFFFF;
}

#ooo666 {
	z-index: 9999;
	width: 109.2%;
	height: 30px;
	background-color: #F3F3F3;
	margin-left: -28px;
	margin-top: -23px;
}

#ooo666 a {
	z-index: 9999;
	text-align: left;
	font-size: 14px;
	color: #666666;
	margin-left: -23px;
	margin-top: 5px;
}

#formB {
	background-color: #FFFFFF;
	z-index: 9999;
	margin-left: 65px;
	margin-top: -40px;
	color: #666666;
}

input {
	background-color: #FFFFFF;
	z-index: 9999;
	height: 25px;
}

#ING {
	background-color: #FFFFFF;
	z-index: 9999;
	width: 55px;
	height: 22px;
	font-size: 13px;
	background-color: #FFFFFF;
	border: 1px #CCCCCC solid;
	border-radius: 3px;
	color: #666666;
}

#weizhi {
	background-color: #FFFFFF;
	margin-top: -855px;
	margin-left: 150px;
	z-index: 9999;
	position: absolute;
}

a {
	cursor: hand;
}

#hhhhhu {
	margin: 20px 0px;
}
</style>

<body>
	<div id="box">
		<img src="img/FFFFFF.png" id="img1"></img><br>
		<br> <a id="lll">填写并核对订单信息</a>
		<div id="box2">
			<!-- 填写并核对订单信息 -->

			<div id="box3">
				<div id="box3_1">
					<br>
					<!-- 收信人 -->
					<a id="box3_txt"><b>收货人信息</b>
					</a> <a onClick="msgbox(1)" class="box3_txt1">新增收货地址 </a>
					<div id="showaddressdiv">
						<ce:forEach items="${add }" var="a">
							<div id="radio111111">
								<ul>
									<li class="uuu"><input name="id" type="hidden"
										value="${a.addressId }"> <a>${a.reName }
											${a.province }</a> <span
										style="float:right;margin-top:15px;display:none;"><img
											src="img/gggggg.jpg"> </span></li>
								</ul>
							</div>

							<ul id="box3_ul1" style="list-style-type:none;float:left;">
								<li class="getName">&nbsp;&nbsp;<a>${a.reName }</a> <a><span
										class="getProv">${a.province }</span> <span class="getCity">${a.city
											}</span> <span class="getArea">${a.area }</span> </a>&nbsp; <a>${a.phone
										}</a></li>
							</ul>
						</ce:forEach>
					</div>
					<!-- 收信人 -->
				</div>
				<div id="box4_1">
					<br>
					<!-- 支付方式 -->
					<a id="box4_txt"><b>支付方式</b>
					</a>
					<div id="radio_wrap">
						<ul>
							<li><a>货到付款</a><i></i></li>
							<li class="c"><a>微信支付</a><i></i></li>
							<li class="c"><a>京东支付</a><i></i></li>
							<li id="ll"><a>在线支付</a><i></i></li>
						</ul>
					</div>
					<ul id="box4_ul1" style="list-style-type:none;float:left;">
						<li>&nbsp;&nbsp;<a> 更多 </a>
						</li>
					</ul>
				</div>
				<!-- 支付方式 -->

				<div id="box5_1">
					<br>
					<!-- 送货清单 -->
					<div id="ooo">
						<a id="box5_txt"><b>送货清单</b>
						</a> <a class="box5_txt2">价格说明</a> <a class="box5_txt1">返回修改购物车</a>
					</div>
					<!--  -----------------------循环，订单物品内容---------- -------------------- -->
					<form action="<%=basePath%>payorder" method="post">
						<input type="hidden" value="1" name="address">
						<ce:forEach items="${map }" var="l">
							<div id="box6" style="float:right;">
								<div class="box7">
									<br> <a id="shangjia"><b>商家：</b><b>${l.key }</b>
									</a> <input type="hidden" value="${l.key }" name="seller">
									<ce:forEach items="${l.value }" var="va">
										<input type="hidden" value="${va.id }" name="getid">
										<div
											style="border:0px solid red;float:right;margin-top:10px;width:100%;">
											<div id="img2" style="float:left;">
												<img src="ShoesImg/${va.simg } "
													style="width:75px;height:75px;">
											</div>
											<div style="float:left; margin-top:20px;">
												${va.shoesName }</div>
											<div style="float:right;margin-right:50px;margin-top:10px;">x${va.amount
												}</div>
											<div
												style="float:left;margin-left:20px;margin-top:30px;color:#FF6C00;">
												<a>7天无理由退货</a>
											</div>
											<div
												style="float:right;margin-right:20px;color:#E4393C;margin-top:10px;">
												<a>￥${va.shoesPrice * va.amount}</a>
											</div>
										</div>
									</ce:forEach>
								</div>
								<a id="xxx"><b>配送方式</b>
								</a>
								<div id="wwwwwwwwww">
									<ul>
										<li><a>快递运输</a><i></i></li>
									</ul>
								</div>
							</div>
						</ce:forEach>
						<!--  -----------------------循环，订单物品内容---------- -------------------- -->
						<div id="box8">
							<!-- 添加订单备注 -->
							<a id="hhhhhu">添加订单备注</a><br> <input TYPE="TEXT" size="18"
								id="txt1" value="限45个字（定制类商品，请将购买需求在备注中做详细说明）"
								onfocus="if (value =='限45个字（定制类商品，请将购买需求在备注中做详细说明）'){value =''}"
								onblur="if (value ==''){value='限45个字（定制类商品，请将购买需求在备注中做详细说明）'}">
							<a id="tiShi">提示：请勿填写有关支付、收货、发票方面的信息</a>
						</div>
						<!-- 添加订单备注 -->
				</div>

				<a id="box10_txt"><b> </b>
				</a><br>
				<br>
				<br>
				<br>
				<br>
			</div>
			<!-- 填写并核对订单信息 -->
		</div>
		<div id="box11">
			<ul style="list-style-type:none;">
				<li id="boxa"><a id="a4">${count}</a><a>件商品，总商品金额：</a>&nbsp;&nbsp;&nbsp;&nbsp;<a>￥${money
						}</a></li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>返现：</a>&nbsp;&nbsp;&nbsp;&nbsp;<a>￥0.00</a>
				</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>运费：</a>&nbsp;&nbsp;&nbsp;&nbsp;<a>￥0.00</a>
				</li>
			</ul>
		</div>
		<div id="box12">
			<ul style="list-style-type:none;">
				<li id="boxa1"><a>应付总额：</a><a id="boxa2"><b>￥${money }</b>
				</a></li>
				<li id="li2"><a>寄送至：</a><a><span id="getProv">${adds.province
							}</span> <span id="getCity">${adds.city }</span> <span id="getArea">${adds.area
							}</span> </a>&nbsp;&nbsp;&nbsp;<a>收货人：</a><a><span id="getName">${adds.reName
							}</span> <span id="getPhone">${adds.phone }</span> </a></li>
			</ul>
			<div id="ss"></div>
		</div>
		<input type="submit" id="txt44" name="butReset3" value="提交订单">
		</form>
		<div id="weizhi">
			<div id="inputbox" class="box13">

				<a class='x' href='' onclick="msgbox(0); return false;">x</a>
				<div id="ooo666">
					&nbsp;&nbsp;&nbsp;&nbsp;<a>新增收货人信息</a>
				</div>
				<p>
					&nbsp;收货人：<input name="111" type="text" class="input" size="20"
						id="name" onblur="CheckInfo();">&nbsp;&nbsp;<span
						id="tis1" style="color:red;"></span>
				</p>
				<p>所在地区：
				<form name="userupdateForm" action="about:结果页面" id="formB">
					<div width="100%" id="thedetailtableDIV">
						<select name="province" onChange="getCity()">
							<option id="pp" value="0" selected="selected" color="#666666">请选择所在省份</option>
							<ce:forEach items="${addr }" var="a">
								<option value=${a.city }>${a.city }</option>
							</ce:forEach>
						</select> &nbsp; <select name="city">
							<option id="city" selected="selected" value="0">请选择所在城市</option>
						</select><font color="red"><html:errors property="city" /> </font>
					</div>
					<span id="tis4" style="color:red;"></span>
				</form>
				<form action="/JD/AddAddress" method="post">
					<input name="name" value="" type="hidden"> <input
						name="provincial" value="" type="hidden"> <input
						name="city" value="" type="hidden"> <input
						name="theHistoryRecord" type=hidden value="">
					</p>
					<p>
						详细地址：<input onblur="CheckInfo1();" name="area" type="text"
							class="input" size="35" regex="none" alertText="ooooo"
							id="address">&nbsp;&nbsp;<span id="tis2"
							style="color:red;"></span>
					</p>
					<p>
						手机号码：<input onblur="CheckInfo2();" name="phone1" type="text"
							class="input" size="20" id="phone1">&nbsp;固定电话： <input
							onblur="CheckInfo2();" name="number" type="text" class="input"
							size="20" id="number"><span id="tis3" style="color:red;"></span>
					</p>
					<p>
						&nbsp;&nbsp;邮箱：<input name="111" type="text" class="input"
							size="20">
					</p>
					<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用来接收订单提醒邮件，便于您及时了解订单状态</a>
					<p>
						地址别名：<input name="111" type="text" class="input" size="20">&nbsp;<a>建议填写常用名称
						</a> &nbsp;<input name="sub" type="button" value="家里" id="ING">
						&nbsp;<input name="sub" type="button" value="父母家" id="ING">
						&nbsp;<input name="sub" type="button" value="公司" id="ING">
					</p>
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="sub" type="submit"
							value="保存收货人信息" onclick="AddInfo();">
					</p>
				</form>
			</div>
		</div>
	</div>


	<script type="text/javascript">
(function() {
    var radioWrap = document.getElementById("radio_wrap"),
        li = radioWrap.getElementsByTagName("li");
  
    for(var i = 0; i < li.length; i++){
        li[i].onclick = function() {
            for(var i = 0; i < li.length; i++){
                li[i].className = "";
            }
            this.className = "checked";
        };
    }
})();



</script>
</body>
</html>