<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head><title>
	统计&分析
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
                <a class="nav-items" href="sendQuestionnaire.jsp">
                    <div class="items-box">
                        <i class="icon issusPapers-icon"></i>
                    </div>
                    <br />
                    <span class="items-name">发送问卷</span>
                    <em class="caret-left"></em>
                </a>
                <a class="nav-items" href=""  style="background-color: #4FBFA8;">
                    <div class="items-box">
                        <i class="icon resultsData-icon"></i>
                    </div>
                    <br />
                    <span class="items-name" style="color: white;">分析&下载</span>
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
                        <a class="nav-items pull-left" href="" style="background-color: #4FBFA8;">
                            <label class="icon Answer2-icon" style="background: url(./Images/newimg/online-exam/correct-pre.png) no-repeat center;"></label>
                            <br />
                            <span style="color: white;">统计&分析</span>
                        </a>
                        <a class="nav-items pull-left" href="questionnaire-download.jsp">
                            <label class="icon Answer1-icon" style="background: url(./Images/newimg/online-exam/download.png) no-repeat center;"></label>
                            <br />
                            <span>查看下载答卷</span>
                        </a>
                        
                        <a class="nav-items pull-left" href="questionnaire-resource.jsp">
                            <label class="icon Answer3-icon" style="background: url(./Images/newimg/online-exam/source.png) no-repeat center;"></label>
                            <br />
                            <span>答案来源分析</span>
                        </a>

                    </div>
                    
                </div>
                
            </div>
            
            <div class="inside-main">
                <div class="inside-box">
                    <div class="box-items">
                        <div style="clear: both"></div>
                        <div class="step__evaluate article" style="text-align: left">
                            <div class="sic_wrap">
                                <div style="">
                                    <div class="count_analyse_tab">
                                        <ul id="tabmenu" class="clearfix"  style="">
                                        
                                        <li id="ctl02_ContentPlaceHolder1_ViewReport1_liDefault" class="cur" style="width:100%"><span style="color:#4FBFA8;"><strong>默认报告</strong></span></li>
                                        
                                       
                                        
                                        </ul>
                                        
                                    </div>    
                                        
                                </div>

                                <div id="analysis_result" style="margin: 0 40px 0 40px;">
                                   
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
           
    </div>
    
</body>
<script type="text/javascript">
var userID=<%=session.getAttribute("userID")%>
var questionnaireID=<%=session.getAttribute("questionnaireID")%>
console.log(questionnaireID)
var questionnaireStatus=<%=session.getAttribute("status")%>
if(userID!=null){
	if(parseInt(questionnaireStatus)==1 || parseInt(questionnaireStatus)==2){
		$.ajax({
			url:"QuestionQueryServlet",
			type:"get",
			dataType:"json",
			data:{
				"ID":parseInt(questionnaireID),
				"questionQueryType":2
			},
			success:function(data){
				var status=data[0]['status']
				var question=JSON.parse(data[0]['content'])
				var questionlist=question['questionlist']
				var resultArray=[]
				for(var i=0;i<questionlist.length;++i){
					if(questionlist[i]['type']=='单项选择'){
						var obj=new Object();
						obj.index=questionlist[i]['index']
						obj.type=questionlist[i]['type']
						obj.option=questionlist[i]['option']
						obj.question=questionlist[i]['content']
						var answerList=new Array(questionlist[i]['option'].length).fill(0)
						obj.answer=answerList
						resultArray.push(obj)
					}
				}
				
				if(status==1 || status==2){
					$.ajax({
						url:"AnswerQueryServlet",
						type:"get",
						dataType:"json",
						data:{
							"ID":1,
							"answerQueryType":2
						},
						success:function(result){
							for(var i=0;i<result.length;++i){
								var answer=JSON.parse(result[i]['content'])
								var answerlist=answer['answerlist']
								for(var j=0;j<answerlist.length;++j){
									var index=answerlist[j]['index']
									for(var k=0;k<resultArray.length;++k){
										if(resultArray[k]['index']==index){
											var optionIndex=answerlist[j]['answer']
											resultArray[k]['answer'][optionIndex]=resultArray[k]['answer'][optionIndex]+1
										}
									}
								}
							}
							
							for(var i=0;i<resultArray.length;++i){
								var answerSum=0
								for(var j=0;j<resultArray[i]['answer'].length;++j){
									var answerArray=resultArray[i]['answer']
									answerSum=answerSum+answerArray[j]
								}
								resultArray[i].answerSum=answerSum
								var rateArray=new Array(resultArray[i]['answer'].length).fill(0)
								for(var j=0;j<resultArray[i]['answer'].length;++j){
									var rate=resultArray[i]['answer'][j]/answerSum
									rate=String(rate*100)+'%'
									rateArray[j]=rate
								}
								resultArray[i].rateArray=rateArray
								
							}
							console.log(resultArray)
							
							for(var i=0;i<resultArray.length;++i){
								var index=i+1
								var html='<div id="question'+index+'">'+
								'<div class="card">'+
								'<div class="card-header">'+
								    '<strong class="card-title">第'+resultArray[i]['index']+'题 '+resultArray[i]['question']+' 【'+resultArray[i]['type']+'】</strong>'+
								'</div>'+
								'<div class="card-body">'+
								    '<table class="table table-striped">'+
								        '<thead>'+
								            '<tr>'+
								                '<th scope="col" style="text-align: center;">选项</th>'+
								                '<th scope="col" style="text-align: center;">小计</th>'+
								                '<th scope="col" style="text-align: center;">比例</th>'+
								            '</tr>'+
								        '</thead>'+
								        '<tbody>'
								        
								for(var j=0;j<resultArray[i]['answer'].length;++j){
									html=html+'<tr>'+
						                '<td style="text-align: center;">'+resultArray[i]['option'][j]+'</td>'+
						                '<td style="text-align: center;">'+resultArray[i]['answer'][j]+'</td>'+
						                '<td style="text-align: center;">'+resultArray[i]['rateArray'][j]+'</td>'+
					            	'</tr>'
								}
								            
								html=html+'<tr>'+
			                    '<th scope="col" style="text-align: center;">本题有效填写人次</th>'+
			                    '<th scope="col" style="text-align: center;">'+resultArray[i]['answerSum']+'</th>'+
			                    '<th scope="col" style="text-align: center;"></th>'+
			                    '</tr>'+
								'</tbody>'+
								'</table>'+
								'</div>'+
								'</div>'+
								'<div class="card-body" style="text-align: right;">'+
								'<button type="button" id="question'+index+'_table_button" class="btn btn-primary" style="border-radius: 5px;margin-right: 5px;color:white;background-color:#4FBFA8;border-color:#4FBFA8">表格</button>'+
								'<button type="button" id="question'+index+'_pie_button" class="btn btn-primary" style="border-radius: 5px;margin-right: 5px;color:white;background-color:#4FBFA8;border-color:#4FBFA8">饼状图</button>'+
								'<button type="button" id="question'+index+'_circle_button" class="btn btn-primary" style="border-radius: 5px;margin-right: 5px;color:white;background-color:#4FBFA8;border-color:#4FBFA8">圆环图</button>'+
								'<button type="button" id="question'+index+'_bar_button" class="btn btn-primary" style="border-radius: 5px;margin-right: 5px;color:white;background-color:#4FBFA8;border-color:#4FBFA8">柱状图</button>'+
								'<button type="button" id="question'+index+'_bar2_button" class="btn btn-primary" style="border-radius: 5px;margin-right: 5px;color:white;background-color:#4FBFA8;border-color:#4FBFA8">条形图</button>'+
								'</div>'+
								'<div id="question'+index+'_pie" style="height: 300px;width: 750px;display: none"></div>'+
								'<div id="question'+index+'_circle" style="height: 300px;width: 750px;display: none"></div>'+
								'<div id="question'+index+'_bar" style="height: 300px;width: 750px;display: none"></div>'+
								'<div id="question'+index+'_bar2" style="height: 300px;width: 750px;display: none"></div>'+
								'</div>'
								
								$('#analysis_result').append(html)
								
								var script = document.createElement("script")
								script.type = "text/javascript"
								var scriptString = "var question"+index+"_pie=echarts.init(document.getElementById('question"+index+"_pie'),'light')\n"+
			                    "question"+index+"_pie.setOption({"+
			                        "toolbox:{"+
			                                    "feature:{"+
			                                        "saveAsImage:{"+
			                                            "show:true"+
			                                        "}"+
			                                    "},"+
			                                    "right: '20%'"+
			                                "},"+
			                        "series : ["+
			                            "{"+
			                                "type: 'pie',"+
			                                "radius: '75%',"+  
			                                "data:["
			                     for(var j=0;j<resultArray[i]['answer'].length;++j){
			                    	 scriptString=scriptString+"{value:"+resultArray[i]['answer'][j]+",name:'"+resultArray[i]['option'][j]+"'},"
			                     }
			                        
			                                    
			                     scriptString=scriptString+"],"+
			                                "itemStyle: {"+
			                                    "emphasis: {"+
			                                        "shadowBlur: 10,"+
			                                        "shadowOffsetX: 0,"+
			                                        "shadowColor: 'rgba(0, 0, 0, 0.5)'"+
			                                    "},"+
			                                    "normal:{ "+
			                                        "label:{ "+
			                                            "show: true, "+
			                                            "formatter: '{b} : {c} ({d}%)' "+
			                                        "}, "+
			                                        "labelLine :{show:true} "+
			                                    "}"+
			                                "}"+
			                            "}"+
			                        "]"+
			                    "})\n"+
					            "var question"+index+"_circle=echarts.init(document.getElementById('question"+index+"_circle'),'light')\n"+
					            "question"+index+"_circle.setOption({"+
					            "toolbox:{"+
			                    "feature:{"+
			                        "saveAsImage:{"+
			                            "show:true"+
			                        "}"+
			                    "},"+
			                    "right: '20%'"+
			                	"},"+
			                	"series : ["+
			                    "{"+
			                        "type: 'pie',"+
					                            "radius:  ['50%', '70%'],"+
					                            "data:[ "         
					                    
			                     for(var j=0;j<resultArray[i]['answer'].length;++j){
			                    	 scriptString=scriptString+"{value:"+resultArray[i]['answer'][j]+",name:'"+resultArray[i]['option'][j]+"'},"
			                     }
			                     scriptString=scriptString+"],"+
			                     "itemStyle: {"+
			                         "emphasis: {"+
			                             "shadowBlur: 10,"+
			                             "shadowOffsetX: 0,"+
			                             "shadowColor: 'rgba(0, 0, 0, 0.5)'"+
			                         "},"+
			                         "normal:{ "+
			                             "label:{ "+
			                                 "show: true, "+
			                                 "formatter: '{b} : {c} ({d}%)' "+
			                             "}, "+
			                             "labelLine :{show:true} "+
						                         "}"+
						                     "}"+
						                 "}"+
						             "]"+
						         "})\n"+
					            "var question"+index+"_bar=echarts.init(document.getElementById('question"+index+"_bar'),'light')\n"+
					            "question"+index+"_bar.setOption({"+
					            "toolbox:{"+
			                    "feature:{"+
			                        "saveAsImage:{"+
			                            "show:true"+
			                        "}"+
			                    "},"+
			                    "right: '20%'"+
			                	"},"+
			                    "xAxis : [ {"+
			                        "type : 'category',"+
			                        "data :["
			                    for(var j=0;j<resultArray[i]['option'].length;++j){
			                    	if(j==resultArray[i]['option'].length-1){
			                    		scriptString=scriptString+"'"+resultArray[i]['option'][j]+"'"
			                    	}else{
			                    		scriptString=scriptString+"'"+resultArray[i]['option'][j]+"',"
			                    	}
			                   		
			                    }
			                    scriptString=scriptString+']'+
			                    "} ],"+
			                    "yAxis : [ {"+
			                        "type : 'value'"+
			                    "} ],"+
			                    "series : [ {"+
			                        "'name' : '样本量',"+
			                        "'type' : 'bar',"+
			                        "'data' :["+resultArray[i]['answer']+"],"+
			                        "itemStyle: {"+
			                            "normal: {"+
			                                "label: {"+
			                                    "show: true, "+
			                                    "position: 'top', "+
			                                    "textStyle: {"+
			                                        "color: 'black',"+
			                                        "fontSize: 16"+
			                                    "}"+
			                                "}"+
			                            "}"+
			                        "}"+

			                    "} ]"+
			                	"})\n"+
					            "var question"+index+"_bar2=echarts.init(document.getElementById('question"+index+"_bar2'),'light')\n"+
					            "question"+index+"_bar2.setOption({"+
					            "toolbox:{"+
			                    "feature:{"+
			                        "saveAsImage:{"+
			                            "show:true"+
			                        "}"+
			                    "},"+
			                    "right: '20%'"+
			                	"},"+
			                    "yAxis : [ {"+
			                    "type : 'category',"+
			                    "data :["
			                    for(var j=0;j<resultArray[i]['option'].length;++j){
			                    	if(j==resultArray[i]['option'].length-1){
			                    		scriptString=scriptString+"'"+resultArray[i]['option'][j]+"'"
			                    	}else{
			                    		scriptString=scriptString+"'"+resultArray[i]['option'][j]+"',"
			                    	}
			                   		
			                    }
			                    scriptString=scriptString+']'+
			                    "} ],"+
			                    "xAxis : [ {"+
			                        "type : 'value'"+
			                    "} ],"+
			                    "series : [ {"+
			                    "'name' : '样本量',"+
			                    "'type' : 'bar',"+
			                    "'data' :["+resultArray[i]['answer']+"],"+
			                    "itemStyle: {"+
			                        "normal: {"+
			                            "label: {"+
			                                "show: true, "+
			                                "position: 'top', "+
			                                "textStyle: {"+
			                                    "color: 'black',"+
			                                    "fontSize: 16"+
			                                "}"+
			                            "}"+
			                        "}"+
			                    "}"+
				                "} ]"+
				            	"})\n"+
					            '$("#question'+index+'_table_button").click(function(){\n'+
					                '$("#question'+index+'_pie").css("display","none")\n'+
					                '$("#question'+index+'_circle").css("display","none")\n'+
					                '$("#question'+index+'_bar").css("display","none")\n'+
					                '$("#question'+index+'_bar2").css("display","none")\n'+
					            '})\n'+
					            '$("#question'+index+'_pie_button").click(function(){\n'+
					            '$("#question'+index+'_circle").css("display","none")\n'+
					            '$("#question'+index+'_bar").css("display","none")\n'+
				                '$("#question'+index+'_bar2").css("display","none")\n'+
				                '$("#question'+index+'_pie").css("display","block")\n'+
				                '})\n'+
					            '$("#question'+index+'_circle_button").click(function(){\n'+
					            '$("#question'+index+'_pie").css("display","none")\n'+
					            '$("#question'+index+'_bar").css("display","none")\n'+
				                '$("#question'+index+'_bar2").css("display","none")\n'+
				                '$("#question'+index+'_circle").css("display","block")\n'+
				                '})\n'+
					            '$("#question'+index+'_bar_button").click(function(){\n'+
					            '$("#question'+index+'_pie").css("display","none")\n'+
					            '$("#question'+index+'_circle").css("display","none")\n'+
					            '$("#question'+index+'_bar2").css("display","none")\n'+
					            '$("#question'+index+'_bar").css("display","block")\n'+
					            '})\n'+
					            '$("#question'+index+'_bar2_button").click(function(){\n'+
					            '$("#question'+index+'_pie").css("display","none")\n'+
					            '$("#question'+index+'_circle").css("display","none")\n'+
					            '$("#question'+index+'_bar").css("display","none")\n'+
				                '$("#question'+index+'_bar2").css("display","block")\n'+
				                '})\n'
								script.text=scriptString
								$('#analysis_result').append(script)
							}
							
							
						},
						error:function(err){
							console.log(err)
						}
					})
				}else{
					alert("该问卷尚未发布！")
				}
				
				
				
			},
			error:function(error){
				console.log(error)
			}
		})
	}else{
		alert("该问卷尚未发布！")
	}

}else{
	window.location.href="register.jsp"
}

	
</script>
</html>
