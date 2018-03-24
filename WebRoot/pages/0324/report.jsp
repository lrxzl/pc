<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">
    <title></title>
    
    <link rel="stylesheet" type="text/css" href="../css/aui.css" />
    <link rel="stylesheet" href="css/ext.css" />
    
    <script type="text/javascript" src="js/ext.js" ></script>
    
</head>
<body>
	<!--<header class="aui-bar aui-bar-nav" id="header" style="padding-top:15px; position:fixed;">
		<div class="aui-pull-left aui-padded-l-0">
			<a class=" aui-btn aui-iconfont aui-icon-left" tapmode onclick="closeWin();"></a>
		</div>
		<div class="aui-title">
			上报列表
		</div>
		<div class="aui-pull-right">
			<a class="aui-btn aui-iconfont aui-icon-refresh" href=""></a>
		</div>
	</header>-->
	<!--<div class="header-bottom"></div>-->
	
    <!-- <div class="aui-content aui-margin-b-15">
        <ul class="aui-list aui-select-list">
           
         <header class="aui-bar aui-bar-nav" id="header" style="padding-top:15px; position:fixed;">
		<div class="aui-pull-left aui-padded-l-0">
			<a class=" aui-btn aui-iconfont aui-icon-left" tapmode onclick="closeWin();"></a>
		</div>
		<div class="aui-title">
			上报历史
		</div>
		<div class="aui-pull-right">
			<a class="aui-btn aui-iconfont aui-icon-refresh" href=""></a>
		</div>
	</header>
	<div class="header-bottom"></div> -->
	
	
	<div class="aui-tab" id="tab">
		<div class="aui-tab-item aui-active">库管检查</div>
		<div class="aui-tab-item">安全检查</div>
	</div>
	<div class="tab-contents">
		<div id="tab-content-1" class="aui-show tab-content">
			<!--安全检查折叠 Start-->
        	<div class="aui-content aui-margin-b-15">
		        <ul class="aui-list aui-select-list">
		        	<!--<font color="gray"><b>检查项目</b></font>-->
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	是否实名登记信息：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	登记的旅客数与入住的旅客数是否相同：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	是否在规定时间内上传旅客信息：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	入住旅客信息是否登记完善：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	当天的开房数是（），与实际上传数是否相符：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-text-center" type="text" name="text1" style="border:1px solid gray; width: 40px; height: 25px; float:left; margin-left:190px ;" /></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	有无“黄赌毒”等违法犯罪现象：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
							《特种行业许可证》在上年度是否通过年检：
		                    </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
							客房门是否结实牢固、安全有效：
		                    </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	疏散通道和出口是否设置明显指示标示，易于寻找方便疏散：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	疏散通道是否上锁、堵塞，封死等隐患：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	灭火器材，消防设施是否齐全有效：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio"  name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio"  name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		                    <!--<div class="aui-list-item-text">
			                </div>
			                <div style="font-size: 16px;font-family: '微软雅黑';">
			                	<span style="color: blue;">XXX回复:</span>
			                	撒旦发送肯定就发生了的空间sdfs
			                </div>
			                <div style="font-size: 16px;font-family: '微软雅黑';">
			                	<span style="color: blue;">XXX回复:</span>
			                	撒旦发送肯定就发生了的空间
			                </div>
			                <div style="font-size: 16px;font-family: '微软雅黑';">
			                	<span style="color: blue;">XXX回复:</span>
			                	撒旦发送肯定就发生了的空间
			                </div>-->
			    <li class="aui-list-item">
            		<div class="aui-list-item-inner">
                    	<div class="aui-list-item-input">
                        	<div class="aui-list-item-text">
                        	备注
		                	</div>
                       		 <textarea placeholder="这里输入备注信息" class="aui-border-gray padding-5px" ></textarea>
                  		</div>
               		</div>
            	</li>
            	
            	<li class="aui-list-item">
	                <div class="aui-list-item-inner aui-list-item-center aui-list-item-btn">
	                    <div class="aui-btn aui-btn-info aui-btn-block aui-btn-height-50px">上报</div>
	                </div>
	            </li>
		</ul>
	</div>
        	<!--库管检查折叠 End-->
		</div>
		<div id="tab-content-2" class="aui-hide tab-content">
			
			<!--安全检查折叠 Start-->
        	<div class="aui-content aui-margin-b-15">
		        <ul class="aui-list aui-select-list">
		        	<!--<font color="gray"><b>检查项目</b></font>-->
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	消防安全制度：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 有</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 无</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 不全</label>
			                </div>
		                </div>
		            </li>
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	员工安全教育培训：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 组织开展</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 未组织开展</label>
			                </div>
		                </div>
		            </li>
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	防火检查：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 组织开展</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 未组织开展</label>
			                </div>
		                </div>
		            </li>
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	灭火和应急疏散预案：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 有，且组织演练</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 有，未演练</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 无，组织演练</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 无且未演练</label>
			                </div>
		                </div>
		            </li>
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	生产、存储、经营易燃易爆危险品的场所与居住场所设置在同一建筑内：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 是</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 否</label>
			                </div>
		                </div>
		            </li>
		            
		             <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	疏散通道、安全出口：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 畅通</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 堵塞</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 锁闭</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	防火门：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 完好有效</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 常闭式防火门</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 损坏</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	疏指示标志：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 完好有效</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 损坏</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 缺少</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	应急照明：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 完好有效</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 损坏</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 缺少</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	室内消防栓：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 未设置</label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 完好有效</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 损坏</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 无水</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 配件不齐</label>
		                		
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	灭火器：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 未配置</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 完好</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 有但失效</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	消防安全管理人：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 确定</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 未确定</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	消防安全工作制度：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 有</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 无</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 不全</label>
			                </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner">
		                    <div class="aui-list-item-text">
		                    	防火安全检查：
			                </div>
			                <div class="aui-text-right">
			                	<label class="aui-text-info"></label>
			                	<label><input class="aui-radio" type="radio" name="radio2"> 开展</label>
		                		<label><input class="aui-radio" type="radio" name="radio2"> 未开展</label>
			                </div>
		                </div>
		            </li>
		            <!--<li class="aui-list-item">
		            	<div class="aui-list-item-inner">
		                    <div class="aui-list-item-input">
		                        <textarea placeholder="请输入备注信息" class="aui-border-gray padding-5px" ></textarea>
		                    </div>
		                </div>
		            </li>-->
		            
		            <!--<font color="gray"><b>回复列表</b></font>-->
		            <li class="aui-list-item">
		            	<div class="aui-list-item-inner">
		                    <div class="aui-list-item-input">
		                        <textarea placeholder="请输入备注信息" class="aui-border-gray padding-5px" ></textarea>
		                    </div>
		                </div>
		            </li>
		            
		            <li class="aui-list-item">
		                <div class="aui-list-item-inner aui-list-item-center aui-list-item-btn">
		                    <div class="aui-btn aui-btn-info aui-btn-block aui-btn-height-50px">上报</div>
		                </div>
		            </li>
		        </ul>
		    </div>
        	<!--安全检查折叠 End-->
			
		</div>
	</div>
	<script type="text/javascript" src="../script/api.js"></script>
	<script type="text/javascript" src="../script/aui-tab.js"></script>
	<script type="text/javascript">
		apiready = function() {
			api.parseTapmode();
		}
		var tab = new auiTab({
			element: document.getElementById("tab"),
		}, function(ret) {
			var parent = document.getElementsByClassName("tab-content");
			for(var i=0;i<parent.length;i++) {
				parent[i].className = parent[i].className.replace("aui-show","aui-hide");
			}
			var o = document.getElementById("tab-content-" + ret.index);
			o.className = o.className.replace("aui-hide","aui-show");
		});
	</script>
	
	
	<!--<section>
        <ul class="aui-list aui-collapse">
            <div class="aui-collapse-item aui-active">
                <div class="aui-list-item aui-collapse-header">
                    <div class="aui-list-item-inner">
                        <div class="aui-list-item-title">库管检查</div>
                        <div class="aui-list-item-right">
                            <i class="aui-iconfont aui-icon-down aui-collapse-arrow"></i>
                        </div>
                    </div>
                </div>
                <div class="aui-collapse-content aui-show">
                </div>
            </div>
            
            <div class="aui-collapse-item">
                <li class="aui-list-item aui-collapse-header">
                    <div class="aui-list-item-inner">
                        <div class="aui-list-item-title">安全检查</div>
                        <div class="aui-list-item-right">
                            <i class="aui-iconfont aui-icon-down aui-collapse-arrow"></i>
                        </div>
                    </div>
                </li>
                <div class="aui-collapse-content">
                    
                </div>
            </div>
        </ul>
    </section>
    <script type="text/javascript" src="../script/api.js" ></script>
	<script type="text/javascript" src="../script/aui-collapse.js" ></script>
	<script type="text/javascript">
	    apiready = function () {
	        api.parseTapmode();
	    }
	    var collapse = new auiCollapse({
	        autoHide:true //是否自动隐藏已经展开的容器
	    });
	</script>
    -->
</body>
<script type="text/javascript" src="../script/api.js" ></script>
<script type="text/javascript" src="../script/aui-dialog.js" ></script>
<script type="text/javascript">

    apiready = function () {
        api.parseTapmode();
    }
    var dialog = new auiDialog();
    function openDialog(obj) {
        dialog.prompt({
            title:"输入问题所在",
            text:'',
            type:'number',
            buttons:['取消','确定']
        },function(ret){
            if(ret.buttonIndex == 2) {
            	obj.parentNode.getElementsByClassName("aui-text-info")[0].innerText = ret.text==''?"":"此项注释：" + ret.text;
            }
        });
    }
</script>

</html>