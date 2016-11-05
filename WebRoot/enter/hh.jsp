<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	function haha(){
		var $a=$("#sss");
		var $b=$("#DivEmail");
		$b.html("");
		if($a.val()=="")
		{
			$b.html("不能为空");
			return false;
		}
	}
	/*失去焦点*/
	 $(function () {
            //绑定失去焦点事件
            $("#sss").blur(haha);
            //提交表单,调用验证函数
            $("#myform").submit(function () {
                var flag = true;
                if (!haha()) flag = false;
                return flag;
            });
        });
	
	</script>
  </head>
  
  <body>
    	你的账号：<input type="text" id="sss">
    	 <div class="red" id="DivEmail"></div>
    	
  </body>
</html>
