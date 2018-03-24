<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>易爆物品质检</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		
		<!--标准mui.css-->
		<link rel="stylesheet" href="../css/mui.min.css">
		
		<link rel="stylesheet" href="../css/aui.2.0.css">
		
		<!--App自定义的css-->
		<link rel="stylesheet" type="text/css" href="../css/app.css"/>
		
		<link rel="stylesheet" href="css/ext.css" />
		<script type="text/javascript" src="js/ext.js" ></script>
		<style>
			.mui-content-padded {
			  	margin: 10px;
			}
			.red {
				line-height: 20px !important;background-color: #CF2D28 !important;
			}
		</style>
	</head>

	<body>
		<!--<header class="aui-bar aui-bar-nav" id="header" style="padding-top:15px; position:fixed;">
			<div class="aui-pull-left aui-padded-l-0">
				<a class=" aui-btn aui-iconfont aui-icon-left" tapmode onclick="closeWin();"></a>
			</div>
			<div class="aui-title">
				易爆物品质检
			</div>
			<div class="aui-pull-right">
				<a class="aui-btn aui-iconfont aui-icon-refresh" href=""></a>
			</div>
		</header>
		<div class="header-bottom"></div>-->
		<!--<select multiple="multiple" size="1">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
		</select>-->
		
		<div class="mui-card">
			<div class="mui-card-header">最新任务</div>
			<div class="mui-card-content">
				<div class="mui-card-content-inner">
					包含页眉页脚的卡片，页眉常用来显示面板标题，页脚用来显示额外信息或支持的操作（比如点赞、评论等）
				</div>
				<div style="font-size: 12px;margin:0 6px 6px 0;text-align: right;">
					<div class="mui-btn" style="padding: 4px;font-size: 12px;" onclick="startUrl('historyTasks.jsp')">打开任务列表</div>
				</div>
			</div>
		</div>
		
		<div style="margin-top: 40px"></div>
		
		<div class="mui-content">
		    <div class="mui-content-padded">
		        <button type="button" class="mui-btn mui-poppicker-btn-ok mui-btn-block"
		         	onclick="startUrl('reportExplosive.jsp')">民爆行业质检</button>
		        <button type="button" class="mui-btn mui-poppicker-btn-ok mui-btn-block"
		         	onclick="startUrl('reportHotal.jsp')">旅馆业质检</button>
		        <button type="button" class="mui-btn mui-poppicker-btn-ok mui-btn-block"
		         	onclick="startUrl('reportFirefighting3.jsp')">三级消费质检</button>
		        
		    	<button type="button" class="mui-btn mui-poppicker-btn-ok mui-btn-block" onclick="startReportHistory('historyReports.jsp')">查看上报列表</button>
		    	<button type="button" class="mui-btn mui-poppicker-btn-ok mui-btn-block" onclick="startUrl('pushMessage.jsp')">推送消息
		    		<span class="mui-badge mui-badge-danger red red-badge-26px">99+</span>
		    	</button>
		    </div>
		</div>
		
	</body>
	
	<script type="text/javascript">
	function onActivityResult(result) {
		if('logoff'==result) {
			location.href = "UserAction!logoff";
			android.show('已注销登录');
		}
	}
	</script>
	
</html>