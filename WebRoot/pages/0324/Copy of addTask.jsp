<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!--标准mui.css-->
<link rel="stylesheet" href="../css/mui.min.css">
<!--<link rel="stylesheet" type="text/css" href="../css/aui.css" />-->
<!--App自定义的css-->
<link rel="stylesheet" type="text/css" href="../css/app.css" />
<script type="text/javascript" src="js/ext.js"></script>
<style type="text/css">
.aui-content-padded {
	padding: 0.75rem;
	background-color: #ffffff;
	margin-top: 0.75rem;
}
</style>
<style>
h5 {
	margin: 5px 7px;
}
</style>
</head>

<body>
	<!-- <header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
			<h1 class="mui-title">新建任务</h1>
		</header> -->
	<div class="mui-content">
		<div class="mui-content-padded" style="">
			<h5>任务标题</h5>
			<form class="mui-input-group">
				<div class="mui-input-row">
					<input type="text" placeholder="请输入任务标题">
				</div>
			</form>
		</div>
		<div>
			<h5>&nbsp;任务内容</h5>
		</div>
		<div class="mui-input-row" style="">
			<textarea id="textarea" rows="5" placeholder="请输入任务内容"></textarea>
		</div>
	</div>
		<!-- <div>
			<font size="4">&nbsp;&nbsp;&nbsp;可查看：</font>
		</div>
		<div class='mui-btn mui-btn-primary'
			onclick="startUrl('choose.jsp',['notitle','nogesture'])">选择</div>
		<div
			style="float: right; width: 220px; margin-top: -33px; margin-right:30px;">
			<select name="select" id="select_k1" multiple="multiple" size="7">
							<option value="0">上司1</option>
							<option value="1" selected="true">上司2</option>
							<option value="2">上司3</option>
							<option value="3">上司4</option>
							<option value="4">上司5</option>
							<option value="5">上司6</option>
							<option value="6">上司7</option>
							<option value="7">上司8</option>
						</select>
		</div>
	</div>
	<font size="4" style="position: absolute; top: 360px;">&nbsp;&nbsp;&nbsp;级别:</font>
	<div style="position: absolute; width:300px; top: 360px; left: 80px;">
		<label><input class="aui-radio" type="radio" name="demo"
			checked="" style="margin-left:20px;">普通</label> <font color="orange"><label><input
				class="aui-radio" type="radio" name="demo"
				style="margin-left: 30px;">重要</label></font> <font color="#F14E41"><label><input
				class="aui-radio" type="radio" name="demo"
				style="margin-left: 30px;">紧急</label></font>
	</div>
	<div class="mui-content-padded"
		style="position: absolute; top: 430px; width: 325px;">
		<button type="button" class="mui-btn mui-btn-primary mui-btn-block">提交</button>
	</div> -->
</body>

<script type="text/javascript">
	function onActivityResult(result) {
		
	}
</script>

</html>