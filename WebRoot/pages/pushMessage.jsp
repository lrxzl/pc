<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE HTML>
<html HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
		<meta name="format-detection" content="telephone=no,email=no,date=no,address=no">
		<title> </title>
<link rel="stylesheet" href="../css/mui.min.css">
		<link rel="stylesheet" type="text/css" href="../css/aui.css" />
		<link rel="stylesheet" href="css/ext.css" />
		<script type="text/javascript" src="js/ext.js" ></script>
		<style type="text/css">
			.text-light {
				color: #ffffff;
			}
		</style>
		
		<style type="text/css">
		  .float-img{background-color:white;position: fixed;top: 78%;left: 78%;z-index: 999;border-radius: 25px;box-shadow:5px 2px 6px #000;}
		  .float-img:ACTIVE {box-shadow:2px 1px 3px #000;top: 78.1%;left: 78.1%;}
		</style>
	</head>

	<body>
		<!--<header class="aui-bar aui-bar-nav" id="header" style="padding-top:15px; position:fixed;">
			<div class="aui-pull-left aui-padded-l-0">
				<a class=" aui-btn aui-iconfont aui-icon-left" tapmode onclick="closeWin();"></a>
			</div>
			<div class="aui-title">
				任务列表
			</div>
			<div class="aui-pull-right">
				<a class="aui-btn aui-iconfont aui-icon-plus" href="javascript:startUrl('addTask.html')"></a>
			</div>
		</header>
		<div class="header-bottom"></div>-->
		<section id="pullrefresh" class="aui-content">
			<div class="aui-timeline">
				<div class="aui-timeline-item-header">2017年1月8日</div>
				<div class="aui-timeline-item">
					<div class="aui-timeline-item-label aui-bg-danger text-light">某某某</div>
					<div class="aui-timeline-item-inner">
						<div class="aui-card-list">
							<div class="aui-card-list-header aui-border-b">
								<div class="aui-font-size-16">任务标题</div>
								<i class="aui-iconfont aui-icon-date aui-text-danger"></i>
								<i class="aui-iconfont aui-icon-correct aui-text-danger"></i>
							</div>
							<div class="aui-card-list-content-padded">
								任务
							</div>
						</div>
					</div>
				</div>
				<div class="aui-timeline-item-header">2017年1月8日</div>
				<div class="aui-timeline-item">
					<div class="aui-timeline-item-label aui-bg-warning text-light">某某某</div>
					<div class="aui-timeline-item-inner">
						<div class="aui-card-list">
							<div class="aui-card-list-header aui-border-b">
								<div>任务标题</div>
								<i class="aui-iconfont aui-icon-date aui-text-danger"></i>
								<i class="aui-iconfont aui-icon-correct aui-text-danger"></i>
							</div>
							<div class="aui-card-list-content-padded">
								任务
							</div>
						</div>
					</div>
				</div>
				<div class="aui-timeline-item-header">2017年1月8日</div>
				<div class="aui-timeline-item">
					<div class="aui-timeline-item-label aui-bg-info text-light">某某某</div>
					<div class="aui-timeline-item-inner">
						<div class="aui-card-list">
							<div class="aui-card-list-header aui-border-b">
								<div>任务标题</div>
								<i class="aui-iconfont aui-icon-date aui-text-danger"></i>
								<i class="aui-iconfont aui-icon-correct aui-text-danger"></i>
							</div>
							<div class="aui-card-list-content-padded">
								任务
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>

<script src="../js/mui.min.js"></script>
<script>
mui.init({
	pullRefresh: {
		container: '#pullrefresh',
		down: {
			callback: pulldownRefresh
		},
		up: {
			contentrefresh: '正在加载...',
			callback: pullupRefresh
		}
	}
});
/**
 * 下拉刷新具体业务实现
 */
function pulldownRefresh() {
	setTimeout(function() {
		location.reload();
		//mui('#pullrefresh').pullRefresh().endPulldownToRefresh(); //refresh completed
	}, 100);
}
var count = 0;
/**
 * 上拉加载具体业务实现
 */
function pullupRefresh() {
	setTimeout(function() {
		mui('#pullrefresh').pullRefresh().endPullupToRefresh((++count > 2)); //参数为true代表没有更多数据了。
	}, 1500);
}
</script>

</html>