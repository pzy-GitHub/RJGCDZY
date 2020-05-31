<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head><title>
	设计向导
</title>
<meta name="robots" content="noindex" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10" />
<meta name="renderer" content="webkit|ie-comp|ie-stand" />
<link href="./css/UI.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="./css/default.css" />
<link rel="Stylesheet" type="text/css" href="./css/design.css" />
<link rel="stylesheet" href="./css/single-item-count.css" type="text/css" />
<link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="vendors/themify-icons/css/themify-icons.css">
<link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="vendors/selectFX/css/cs-skin-elastic.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="vendors/bootstrap/dist/css/bootstrap.min.css">

<link rel="stylesheet" href="vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="vendors/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css">


    <style>
        .selSendTypeBox {
            position: absolute;
            top: 20px;
            left: 480px;
            display: flex;
            align-items: center;
            color: #333333;
            font-size: 14px;
        }

        .selectpick-div {
            background: #fff;
        }
    </style>
    <style>
        .SET-Guide {
            width: 740px !important;
        }

        .SET-Expansion h2 {
            font-size: 12px;
        }
    </style>
    

    <style>
    .markScatter {
    position: relative;
    margin-top: 40px;
    height: 445px;
    background: #F7FAFB;
    border: 1px solid #E3E4E6;
    border-radius: 8px;
    }
    .count {
    padding-top:5px;
    }
    .headTitle {
    overflow: hidden;
    }

    .headTitle > div {
    width: 50%;
    float: left;
    background: #E1E5E6;
    height: 40px;
    line-height: 40px;
    color: #222222;
    font-size: 14px;
    text-align: center;
    }

    .peoNum {
    position: relative;
    }

    .peoNum::after {
    content: '';
    position: absolute;
    right: 0;
    width: 1px;
    height: 24px;
    top: 8px;
    background: #C9C9C9;
    }

    #markSet {
    position: absolute;
    top: 60px;
    right: 22px;
    text-decoration: underline;
    }

    .two-stage-title .left {
    float: none;
    }
    .wjxui-btn-rightsideGroup{
    position:fixed;
    top:160px;
    left:50%;
    margin-left:478px;
    }
    </style>

    <style>
        .count_analyse_tab ul li {
            width: 20%;
        }
        @font-face {
        font-family: 'comIcon';  /* project id 1070120 */
        src: url('//at.alicdn.com/t/font_1070120_a2xge69ljq.eot');
        src: url('//at.alicdn.com/t/font_1070120_a2xge69ljq.eot?#iefix') format('embedded-opentype'),
        url('//at.alicdn.com/t/font_1070120_a2xge69ljq.woff2') format('woff2'),
        url('//at.alicdn.com/t/font_1070120_a2xge69ljq.woff') format('woff'),
        url('//at.alicdn.com/t/font_1070120_a2xge69ljq.ttf') format('truetype'),
        url('//at.alicdn.com/t/font_1070120_a2xge69ljq.svg#iconfont') format('svg');
        }
        .comIcon {
            font-family: "comIcon" !important;
            font-size: 16px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
            font-weight: 400  !important;
            text-decoration:none;
        }
        .tip-frame {
            font-size: 12px;
            color: #595959;
            line-height: 30px;
            padding: 0 8px;
            background-color: #FFF7EB;
        }
        .tip-icon {
            font-size: 17px;
            color: #FF9500;
            margin-right: 5px;
        }
        .vip-link {
            color:#FF6A00;
            text-decoration: underline;
        }
        #vip-report {
            color:#262626 !important;
            text-decoration: underline;
        }
        .close-icon {
            font-size: 13px;
            color: #BFBFBF;
            cursor: pointer;
        }
    </style>

    <script src="./vendors/jquery/dist/jquery.min.js"></script>
    <script src="./js/echarts.min.js"></script>
</head>

<body class="fp-viewing">
    <div class="main-container">
        <div class="nav-bar aside size30x30" id="leftlabel">
            <div class="ui-sidebar">
                <a href="" class="return-wrapper">
                    <em class="icon return-icon"></em>
                    <div class="tips">
                        <div class="caret-top"></div>
                        返回我的问卷
                    </div>
                </a>
                <a class="nav-items" href="" style="background-color: #4FBFA8;">
                    <div class="items-box">
                        <i class="icon testDesign-icon" style="background: url(./Images/newimg/online-exam/design-hover.png) no-repeat center;"></i>
                    </div>
                    <br />
                    <span class="items-name" style="color: white;">设计问卷</span>
                    <em class="caret-left"></em>
                </a>
                <a class="nav-items" href="sendQuestionnaire.jsp">
                    <div class="items-box">
                        <i class="icon issusPapers-icon"></i>
                    </div>
                    <br />
                    <span class="items-name">发送问卷</span>
                    <em class="caret-left"></em>
                </a>
                <a class="nav-items" href="questionnaire-analysis.jsp">
                    <div class="items-box">
                        <i class="icon resultsData-icon"></i>
                    </div>
                    <br />
                    <span class="items-name">分析&下载</span>
                    <em class="caret-left"></em>
                </a>
            </div>
            <div id="ctl02_divKeFu" class="ui-sidebottom">
                <ul>
                    <li><a href="javascript:void(0)" onclick="">
                        <div class="icon-box">
                            <i class="icon kefu-icon"></i>
                            <div>客服中心</div>
                        </div>
                    </a>
                       
                    </li>
                    <li alt="帮助中心">
                        <a href="/help/help.aspx" title="帮助中心" target="_blank">
                            <div class="icon-box">
                                <i class="icon help-icon"></i>
                                <div>
                                                              帮助中心
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="inside-wrapper">
            <div class="inside-head clearfix" style="">

                <div class="nav-show clearfix" id="toplabel">
                    
                    <div id="ctl02_divCommonNavBar" class="nav-box clearfix">
                        <a class="nav-items pull-left" href="" style="background-color: #4FBFA8;color: white;">
                            <label class="icon Answer2-icon" style="background: url(./Images/newimg/online-exam/guide-pre.png) no-repeat center;"></label>
                            <br />
                            <span>设计向导</span>
                        </a>
                        <a class="nav-items pull-left" href="">
                            <label class="icon Answer1-icon" style="background: url(./Images/newimg/online-exam/edit.png) no-repeat center;"></label>
                            <br />
                            <span>编辑问卷</span>
                        </a>
                       
                    </div>
                    
                </div>
                
            </div>
            
            <div class="inside-main" id="main-box">
                <div class="inside-box">
                    <div class="box-items">
                        <div style="clear: both"></div>
                        <div class="step__evaluate article" style="text-align: left">
                            <div class="sic_wrap">
                                <div style="">
                                    <div class="count_analyse_tab">
                                        <ul id="tabmenu" class="clearfix"  style="">
                                        
                                        <li id="ctl02_ContentPlaceHolder1_ViewReport1_liDefault" class="cur" style="width:100%"><span style="color:#4FBFA8;"><strong>问卷状态</strong></span></li>
                                      
                                        </ul>
                                        
                                    </div>    
                                        
                                </div>

                                <div id="questionnaire-url" style="margin: 0 40px 0 40px;height: 55px;">
                                   <div style="height:50px;width: 800px;float: left;">
                                    <div style="width: 25px;height: 25px;float: left;margin: 8px 10px 0 0">
                                     <img alt="" src="./Images/newimg/online-exam/questionnaire.png" width='22px' height='22px'>
                                    </div>
                                     <% 
                                     if(session.getAttribute("status")!=null){
                                     	if(Integer.parseInt(session.getAttribute("status").toString())==1){
                                     %>
                                     <span class="pull-left strong" style="height: 50px;width:400px;font-size: 20px;float: left;margin: 5px 0 0 0">此问卷正在运行，您可以<a href="questionnaire-analysis.jsp">查看结果</a>或者</span>
                                     <button type="button" id="paste" class="btn btn-primary" style="border-radius: 5px;margin: 3px 0 0 5px;color:white;background-color:#4FBFA8;border-color:#4FBFA8;float: left;" onclick="">暂停接收问卷</button>
                                   	 <%
                                   	 
                                     	}else if(Integer.parseInt(session.getAttribute("status").toString())==2 || Integer.parseInt(session.getAttribute("status").toString())==0){
                                   	 %>
                                   	 <span class="pull-left strong" style="height: 50px;width:400px;font-size: 20px;float: left;margin: 5px 0 0 0">此问卷处于暂停状态，不能接收答卷，您可以</span>
                                     <button type="button" id="start" class="btn btn-primary" style="border-radius: 5px;margin: 3px 0 0 10px;color:white;background-color:#4FBFA8;border-color:#4FBFA8;float: left;" onclick="">恢复运行</button>
                                     <%
                                     	}
                                     }
                                     %>
                                   </div>
                                   
                                </div>
                                
                            </div>

                        </div>
                    </div>
                    
                    <div class="box-items" style="margin-top: 20px;">
                        <div style="clear: both"></div>
                        <div class="step__evaluate article" style="text-align: left">
                            <div class="sic_wrap" style="padding-top: 10px;">
                                
                                <div style="margin: 30px 0 0 30px;height: 110px;">
                               
                                   <button class="btn btn-primary" id="edit-questionnaire" style="border-radius: 5px;margin: 0 0 0 10px;font-size: 20px;color:white;background-color:#4FBFA8;border-color:#4FBFA8;">编辑问卷>></button>
                                   <div style="margin-left: 10px;height:50px;width: 153px;">
                                     <span class="pull-left strong" style="height: 40px;width:700px;font-size: 20px;margin-top: 10px;">可以进入问卷编辑页面，进行问卷内容的修改和增加</span>
                                   </div>
                                </div>
                                
                            </div>

                        </div>
                    </div>
                </div>
            </div>
           
    </div>
    
</body>
<script src="vendors/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">

var userID=<%=session.getAttribute("userID")%>
if(userID!=null){
	
}else{
	window.location.href="register.jsp"
	
}

$("#edit-questionnaire").click(function(){
	var status=<%=session.getAttribute("status")%>
	if(parseInt(status)==0){
		window.open("design.jsp")
	}
})

$("#paste").click(function(){
	$.ajax({
		url:"StatusUpdateServlet",
		type:"get",
		data:{
			"status":2
		},
		success:function(data){
			$.ajax({
				url:"QuestionStatusUpdateServlet",
				type:"get",
				data:{
					"questionnaireID":parseInt(<%=session.getAttribute("questionnaireID")%>),
					"status":2
				},
				success:function(data){
					console.log("状态更新为2！")
					window.location.href="designQuestionnaire.jsp"
					
				},
				error:function(error){
					console.log(error)
				}
			})
		},
		error:function(error){
			console.log(error)
		}
	})
	
})

$("#start").click(function(){
	$.ajax({
		url:"StatusUpdateServlet",
		type:"get",
		data:{
			"status":1
		},
		success:function(data){
			$.ajax({
				url:"QuestionStatusUpdateServlet",
				type:"get",
				data:{
					"questionnaireID":parseInt(<%=session.getAttribute("questionnaireID")%>),
					"status":1
				},
				success:function(data){
					console.log("状态更新为1！")
					window.location.href="designQuestionnaire.jsp"
				},
				error:function(error){
					console.log(error)
				}
			})
		},
		error:function(error){
			console.log(error)
		}
	})
	
})
</script>
</html>