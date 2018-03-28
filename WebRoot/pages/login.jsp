<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>登录</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">
    <link rel="stylesheet" type="text/css" href="../css/aui.2.0.css" />
    <style type="text/css">
        .aui-btn {
            margin-top: 15px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
	
    <header class="aui-bar aui-bar-nav" id="header" style="padding-top: 20px; position: fixed;">
        <div class="aui-title">登录</div>
        <div class="aui-pull-right">
            <a class="aui-btn aui-iconfont aui-icon-refresh" href=""></a>
        </div>
    </header>
    <div style="margin-top: 40px;"></div>
    
    <div class="aui-text-center" id="header-logo">
        <img src="../image/login_logo.png" />
    </div>
    <div style="margin-top: 45px;"></div>
    <div class="aui-content-padded aui-margin-b-15">
    	${request.result=='success'?"":request.result}
        <ul class="aui-list aui-form-list">
            <li class="aui-list-item">
                <div class="aui-list-item-inner">
                    <div class="aui-list-item-label-icon">
                        <i class="aui-iconfont aui-icon-my"></i>
                    </div>
                    <div class="aui-list-item-input">
                        <input type="text" name="user.userId" id="uid" placeholder="账号" value="">
                    </div>
                </div>
            </li>
            <li class="aui-list-item">
                <div class="aui-list-item-inner">
                    <div class="aui-list-item-label-icon">
                        <i class="aui-iconfont aui-icon-lock"></i>
                    </div>
                    <div class="aui-list-item-input">
                        <input type="password" name="user.psw" id="psw" placeholder="密码" value="">
                    </div>
                </div>
            </li>
        </ul>
        <p><div class="aui-btn aui-btn-info aui-btn-block aui-btn-sm" onclick="cmdLogin();">登录</div></p>
        <p><div class="aui-btn aui-btn-block aui-btn-sm" onclick="openWin('forget_win');">忘记密码</div></p>
    </div>
    <div style="text-align: center;margin-top: 30px;">
    	<div><img src="img/gongan.png" width="40%" style="margin-top: 10px"></div>
    	<!-- <div><img src="img/gajzjxt.png" width="80%" style="margin-top: 10px"></div> -->
    	<div style="font-family: Microsoft YaHei;color: #03a9f4;font-size: 42px;margin-top: 10px;" >
    		<b>公安局质检系统</b>
    	</div>
    </div>
    
    <div class="aui-text-center aui-font-size-14" style="position:fixed; bottom:10px; width:100%;">
        <%-- <a href="#" class="aui-text-info" onclick="openWin('regist_win');">萍乡</a>
        <span class="aui-text-info">&nbsp;|&nbsp;</span>
        <a href="#" class="aui-text-info" onclick="openWin('about_win');">公安</a> --%>
    </div>
</body>
<%-- <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script> --%>
<script type="text/javascript" src="js/ext.js"></script>
<script type="text/javascript" src="../script/aui-toast.js" ></script>
<script type="text/javascript">
    /** 定义提示框 */
    var toast = new auiToast();
    /** 登录 */
    function cmdLogin() {
        var userId = document.getElementById('uid').value;
        var psw = document.getElementById('psw').value;
        if(userId == '') {
        	android.show("账号不能为空");
        	return;
        }
        if(psw == '') {
        	android.show("密码不能为空");
        	return;
        }
        toast.loading({
            title:"登录中"
        }, function(ret) {
        	if(isWebView) {
        		android.login(userId, psw);
        		setTimeout(function(){toast.hide();}, 2000);
        	} else {
        		startUrl("UserAction!login?user.userId="+userId+"&user.psw=" + psw);
        		/* ajax({
			        type : 'POST',
			        url : 'AjaxAction!login',
			        data : {"user.userId":userId,"user.psw":psw},  
			        success : function(r) {
			        	var res=eval("("+r+")");
			        	if(res['result']=='success') {
			        		var s_url = "http://" +  location.host + "/unclezhang/pages/" + res['url'];
			        		location.replace(s_url);
			        	} else {
			        		alert(res['result']);
			        	}
			        	toast.hide();
			        }
		    	});
        		ajax('AjaxAction!login',
        				function(r) {
        					var res=eval("("+r+")");
    			        	if(res['result']=='success') {
    			        		var s_url = "http://" +  location.host + "/unclezhang/pages/" + res['url'];
    			        		location.replace(s_url);
    			        	} else {
    			        		alert(res['result']);
    			        	}
    			        	toast.hide();
    			        },
        		{"user.userId":userId,"user.psw":psw}); */
        		/* $.ajax({
			        type : 'POST',
			        url : 'AjaxAction!login',
			        data : {"user.userId":userId,"user.psw":psw},  
			        success : function(r) {
			        	var res=eval("("+r+")");
			        	if(res['result']=='success') {
			        		var s_url = "http://" +  location.host + "/unclezhang/pages/" + res['url'];
			        		location.replace(s_url);
			        	} else {
			        		alert(res['result']);
			        	}
			        	toast.hide();
			        }
		    	}); */
        	}
        });
    }
    android.cleanAppCache();
   /*  
    var isWebView = false;
    function onFinished(v) {
    	isWebView = true;
    }
     */
</script>
</html>