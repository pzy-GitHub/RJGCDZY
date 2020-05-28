<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head><title>
	查看下载问卷
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

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
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
                <a class="nav-items" href="">
                    <div class="items-box">
                        <i class="icon testDesign-icon"></i>
                    </div>
                    <br />
                    <span class="items-name">设计问卷</span>
                    <em class="caret-left"></em>
                </a>
                <a class="nav-items" href="">
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
                        <a class="nav-items pull-left" href="questionnaire-analysis.jsp">
                            <label class="icon Answer2-icon" style="background: url(./Images/newimg/online-exam/correct.png) no-repeat center;"></label>
                            <br />
                            <span>统计&分析</span>
                        </a>
                        <a class="nav-items pull-left" href="" style="background-color: #4FBFA8;color: white;">
                            <label class="icon Answer1-icon" style="background: url(./Images/newimg/online-exam/download-hover.png) no-repeat center;"></label>
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
                                        
                                        <li id="ctl02_ContentPlaceHolder1_ViewReport1_liDefault" class="cur" style="width:100%"><span style="color:#4FBFA8;"><strong>答卷数据明细</strong></span></li>
                                      
                                        </ul>
                                        
                                    </div>    
                                        
                                </div>

                                <div id="download" style="margin: 0 40px 0 40px;">
                                   
                                   <div class="card-body">
	                                   <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
	                                    <thead>
	                                        <tr id="title">
	                                            <th>序号</th>
	                                            <th>状态</th>
	                                            <th>反馈</th>
	                                            <th>提交时间</th>
	                                            <th>填写时长</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody id="tbody">
	                                       
	                                    </tbody>
	                                </table>
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
<script src="assets/js/jquery.min.js"></script>
<script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="vendors/popper.js/dist/umd/popper.min.js"></script>
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="assets/js/main.js"></script>

<script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="vendors/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
<script src="vendors/jszip/dist/jszip.min.js"></script>
<script src="vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="vendors/pdfmake/build/vfs_fonts.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.colVis.min.js"></script>
<script type="text/javascript">
(function ($) {
var oTable;//定义变量名，用于存放dataTable对象，一般定义为全局的比较好

//定义一个函数：用于初始化datatable  
  function initialDataTable() {
  	//使用客户端分页，一次性拉去所有数据
      $.ajax({//使用ajax的方式获取
          url:"AnswerQueryServlet",//异步请求的接口地址
          type:"post",//请求方式
          dataType:"json",//期待的数据返回类型
          async:true,//是否异步
          data:{
          	'ID':1,
            'answerQueryType':2
          },
          success:function (data) {//服务器响应成功后执行的回调
              //初始化datatable
              if (typeof oTable != "undefined"){
                  //如果已经被实例化，则销毁再实例化
                  oTable.fnDestroy();
              }
          	  var resultList=data
          	  
	          	var columnsArray=[
	                {
	                    "mData":"num",//读取数组的对象中的id属性
	                    "sTitle":"序号",//表头
	                    "width":"100px"
	                },
	                {
	                    "mData":"status",
	                    "sTitle":"状态",
	                    "width":"100px"
	                },
	                {
	                    "mData":"feedback",
	                    "sTitle":"反馈",
	                    "width":"100px"
	                },
	                {
	                    "mData":"submitTime",
	                    "sTitle":"提交时间",
	                    "width":"100px"
	                },
	                {
	                    "mData":"timeForWriting",
	                    "sTitle":"填写时长",
	                    "width":"100px"
	                }
	            ]
          	  
              for(var i=0;i<resultList.length;++i){
	           	  var feedback=resultList[i]['feedback'];
	           	  var status=resultList[i]['status'];
	           	
	           	  if(feedback=="1"){
	           		  resultList[i]['feedback']="赞";
	           	  }else if(feedback=="-1"){
	           		  resultList[i]['feedback']="踩";
	           	  }
	           	  
	           	  if(status=="1"){
	           		  resultList[i]['status']="填写完毕";
	           	  }else if(status=="0"){
	           		  resultList[i]['status']="暂存";
	           	  }
	           	  
	           	  resultList[i].num=i+1
	           	  var content=JSON.parse(resultList[i]['content'])
	           	  var answerlist=content['answerlist']
	           	  for(var j=0;j<answerlist.length;++j){
	           		  var question="question"+(j+1)
	           		  resultList[i][question]=answerlist[j]['answer']
	           	  }
              }
          	  console.log(resultList)
          	  
          	  var content=JSON.parse(resultList[0]['content'])
	          var answerlist=content['answerlist']
           	  for(var j=0;j<answerlist.length;++j){
           		  
           		  var obj=new Object()
           		  obj.mData="question"+(j+1)
           		  var sTitle="问题"+(j+1)
           		  obj.sTitle=sTitle
           		  obj.width="100px"
           		  obj.sWidth="100px"
           		  columnsArray.push(obj)
           		  var question="question"+(j+1)
           		  $("#title").append("<th>"+question+"</th>")
           	  }
          	  console.log(columnsArray)
              
              oTable = $("#bootstrap-data-table-export").dataTable({//注意#infoTable是需创建为dataTable的表格,使用jQuery选择器
                  "bPaginate":true,//是否翻页功能
                  "sServerMethod":"POST",//若使用服务端分页，则设置请求方式为“POST”，可改
                  "bServerSide":false,//是否开启服务端分页(不开就是客户端分页)
                  "bProcessing":true,//是否显示加载ing
                  "bFilter":false,//是否开启过滤
                  "bSort":true,//是否开启排序
                  "searching":true,//是否开启搜索功能
                  "data":resultList,//若使用客户端分页，则将表格的数据填写到data属性中，需要数组,数组里面要求是对象
                  "sScrollX":true,
                  // 让表格的宽度不自适应 ，固定宽度。 如果不设置 表头和表中数据会分离
                   //表中的数据自适应 ，表头的宽度固定
                  "bAutoWidth":true,
                  "aoColumns":columnsArray,
                  dom: 'Bfrtip',
                  buttons: [{                  
                	  extend:'excelHtml5', //导出文件格式为excel
                	  text:'导出excel',  //按钮标题
                	  title:'问卷填写情况', //导出的excel标题
                	  className:'btn btn-primary', //按钮的class样式
                  }]
                  
              
              });
          },
          error:function(error){
              console.log(error)
          }
      });
  }
  var oLanguageLeoCN = {
		'sProcessing' : ' 处理中... ',
		'sLengthMenu' : ' 显示  _MENU_ 项结果 ',
		'sZeroRecords' : ' 没有匹配结果 ',
		'sInfo' : ' 显示第_START_至_END_项结果，共_TOTAL_项 ',
		'sInfoEmpty' : ' 显示第0至0项结果，共0项 ',
		'sInfoFiltered' : ' (由_MAX_项结果过滤) ',
		'sInfoPostFix' : '  ',
		'sSearch' : ' 搜索: ',
		'sUrl' : ' ',
		'sEmptyTable' : ' 表中数据为空 ',
		'sLoadingRecords' : ' 载入中... ',
		'sInfoThousands' : ' , ',
		'oPaginate' : {
			'sFirst' : ' 首页 ',
			'sPrevious' : ' 上页 ',
			'sNext' : ' 下页 ',
			'sLast' : ' 末页 '
		},
		'oAria' : {
			'sSortAscending' : ' :以升序排列此列',
			'sSortDescending' : ' :以降序排列此列 '
		}
	};
	$.fn.DataTable.defaults.oLanguage = oLanguageLeoCN;//设置提示为中文
  
	initialDataTable();//调用自定义函数
	
})(jQuery);
</script>
    
</html>
