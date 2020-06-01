<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head><title>
	链接与二维码
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
                <a class="nav-items" href="designQuestionnaire.jsp">
                    <div class="items-box">
                        <i class="icon testDesign-icon"></i>
                    </div>
                    <br />
                    <span class="items-name">设计问卷</span>
                    <em class="caret-left"></em>
                </a>
                <a class="nav-items" href=""  style="background-color: #4FBFA8;">
                    <div class="items-box">
                        <i class="icon issusPapers-icon"  style="background: url(./Images/newimg/online-exam/recycling-hover.png) no-repeat center;"></i>
                    </div>
                    <br />
                    <span class="items-name" style="color: white;">发送问卷</span>
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
                            <label class="icon Answer2-icon" style="background: url(./Images/newimg/online-exam/link-pre.png) no-repeat center;"></label>
                            <br />
                            <span>链接与二维码</span>
                        </a>
                        <a class="nav-items pull-left" href="group_form.jsp">
                            <label class="icon Answer1-icon" style="background: url(./Images/newimg/online-exam/download.png) no-repeat center;"></label>
                            <br />
                            <span>样本服务</span>
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
                                        
                                        <li id="ctl02_ContentPlaceHolder1_ViewReport1_liDefault" class="cur" style="width:100%"><span style="color:#4FBFA8;"><strong>生成链接与二维码</strong></span></li>
                                      
                                        </ul>
                                        
                                    </div>    
                                        
                                </div>

                                <div id="questionnaire-url" style="margin: 0 40px 0 40px;height: 200px;">
                                   <div id="photo" style="border: 1px dashed grey;height:153px;width: 153px;float: left;padding: 10px 0 0 10px">
                                     <div id="qrcode"></div>
                                   </div>
                                   <div class="detailed-box pull-left" style="float: left;width: 500px;height:100px;margin-left: 30px;">
                                      <span class="pull-left strong" style="height: 40px;width:200px;font-size: 20px">问卷链接与二维码</span>
                                      <div style="width: 480px;height: 50px;">
                                        <input type="text" id="link" style="width:550px;height: 40px;margin-top: 20px;border-radius: 5px;text-align: center;background-color: #f7f8f9;float: left;" value="" />
                                        
                                      </div>
                                      
                                   </div>
                                   <a id="downloadLink"></a>
                                   <button type="button" id="download-photo" class="btn btn-primary" style="margin-top: 20px;border-radius: 5px;margin-left: 30px;color:white;background-color:#4FBFA8;border-color:#4FBFA8;float: left;" onclick="downloadClick()">下载二维码</button>
                                   <button type="button" id="copy" class="btn btn-primary" style="margin-top: 20px;border-radius: 5px;margin-left: 20px;color:white;background-color:#4FBFA8;border-color:#4FBFA8;float: left;">复制</button>
                                   <button type="button" id="enter" class="btn btn-primary" style="margin-top: 20px;border-radius: 5px;margin-left: 20px;color:white;background-color:#4FBFA8;border-color:#4FBFA8;float: left;">打开</button>
                                </div>
                                
                            </div>

                        </div>
                    </div>
                    
                    <div class="box-items" style="margin-top: 20px;">
                        <div style="clear: both"></div>
                        <div class="step__evaluate article" style="text-align: left">
                            <div class="sic_wrap">
                                
                                <div id="" style="margin: 10px 40px 0 30px;height: 100px;">
                               
                                   <button type="button" id="group" class="btn btn-primary" style="float:left;border-radius: 5px;margin:30px 0 0 10px;color:white;background-color:#4FBFA8;border-color:#4FBFA8;float: left;" onclick="">样本服务</button>
                                   <div style="margin-left: 10px;height:50px;width: 153px;float: left;">
                                     <span class="pull-left strong" style="height: 40px;width:700px;font-size: 20px;margin: 35px 0 0 10px;">快速邀请符合目标人群要求的问卷星样本库成员填写问卷（付费服务）</span>
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
<script src="js/download.js"></script>
<script src="js/qrcode.js"></script>
<script type="text/javascript">
var status=<%=session.getAttribute("status")%>
var userID=<%=session.getAttribute("userID")%>
if(userID!=null){
	if(parseInt(status)!=1){
		$("#main-box").css("display","none")
		alert("该问卷尚未发布，请先发布问卷！")
	}else{
		var questionnaireID=<%=session.getAttribute("questionnaireID")%>
		var questionnaireURL="http://175.24.74.8/SoftwareProject/writeQuestionnaire.jsp?questionnaireID="+questionnaireID
		var src="https://chart.googleapis.com/chart?cht=qr&chs=150x150&choe=UTF-8&chld=L|4&chl="+questionnaireURL
		$("#link").attr("value",questionnaireURL)
		$("#qcode").attr("src",src)
	}
}else{
	window.location.href="register.jsp"
}

var questionnaireID=<%=session.getAttribute("questionnaireID")%>
var questionnaireURL="http://175.24.74.8/SoftwareProject/writeQuestionnaire.jsp?questionnaireID="+questionnaireID
var qrcode = new QRCode(document.getElementById("qrcode"), {
    text: questionnaireURL,
    width: 130, //生成的二维码的宽度
    height: 130, //生成的二维码的高度
    colorDark : "#000000", // 生成的二维码的深色部分
    colorLight : "#ffffff", //生成二维码的浅色部分
    correctLevel : QRCode.CorrectLevel.H
  });

function downloadClick () {
    // 获取base64的图片节点
    var img = $('#qrcode img')[0];
    // 构建画布
    var canvas = document.createElement('canvas');
    canvas.width = img.width;
    canvas.height = img.height;
    canvas.getContext('2d').drawImage(img, 0, 0);
    // 构造url
    url = canvas.toDataURL('image/png');
    // 构造a标签并模拟点击
    var downloadLink = $('#downloadLink').attr("href", url).attr("download", "问卷二维码.png");
    downloadLink[0].click();
}

$("#copy").click(function() { 
    var e = document.getElementById("link"); 
    e.select(); // 选择对象 
    document.execCommand("Copy"); // 执行浏览器复制命令 
    alert("复制成功");    
})

$("#enter").click(function() { 
    var url=$('#link').val()
    window.open(url)
})
$("#group").click(function() { 
    
    window.open("group_form.jsp")
})


</script>
</html>
