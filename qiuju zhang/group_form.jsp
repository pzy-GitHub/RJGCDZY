<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 此页面为需求填写页面，用户可以根据自己的需求选择投放对象，并在此页面获取定向投放的价格 -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>需求填写</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<!-- Google fonts - Roboto-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
<!-- Bootstrap Select-->
<link rel="stylesheet"
	href="vendor/bootstrap-select/css/bootstrap-select.min.css">
<!-- owl carousel-->
<link rel="stylesheet"
	href="vendor/owl.carousel/assets/owl.carousel.css">
<link rel="stylesheet"
	href="vendor/owl.carousel/assets/owl.theme.default.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.group.css" id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon and apple touch icons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="img/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="img/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="img/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="img/apple-touch-icon-152x152.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
	<div id="all">
		
		<!-- Navbar End-->
		<section class="bar" style="background-color: #f6f6f6;">
			<div class="container">
				<div class="row" style='margin-top:0px;'>
					<div class="col-lg-9" id="div1">

						<ul id="pills-tab" role="tablist"
							class="nav nav-pills nav-justified">
							<li class="nav-item"><a id="pills-home-tab"
								data-toggle="pill" href="#pills-home" role="tab"
								aria-controls="pills-home" aria-selected="true"
								class="nav-link  active">需求登记</a></li>
							<li class="nav-item"><a id="pills-profile-tab"
								data-toggle="pill" href="#pills-profile" role="tab"
								aria-controls="pills-profile" aria-selected="false"
								class="nav-link">服务价格</a></li>
						</ul>
						<div id="pills-tabContent" class="tab-content">
							<div id="pills-home" role="tabpanel"
								aria-labelledby="pills-home-tab"
								class="tab-pane fade show active">
								<div name="aspnetForm" id="aspnetForm">
									<div class="sm-subbox" style="padding: 10px 25px 10px;">
										<div class="subbox-numa">
											<span class="subbox-tit">选择需求问卷</span>
											<div class="subbox-content">
												<div id="ctl00_ContentPlaceHolder1_divView"
													class="pull-left" style="margin-right: 20px;">
													<span id="ctl00_ContentPlaceHolder1_spanActivity"
														style="line-height: 40px;" class="pull-left"> <!-- 获取问卷id，并根据问卷id获取问卷title -->
														<span id='ddlActivity' style="font-size: 16px"></span>
													</span>
														<p style="display:none" id="questionnaireID"></p>
														<p style="display:none" id="questionnairetitle"></p>
													<!-- 获取问卷题目数量 -->
													
													<span class="smsubtxt pull-left"
														style="line-height: 40px; padding: 0 20px; font-size: 16px">共<span id="ctl00_ContentPlaceHolder1_lblTotalQCount"></span>题</span>
												</div>
												<div id="ctl00_ContentPlaceHolder1_divUpload"
													class="pull-left" style="position: relative; top: 2px;">
													<div>
														<input type="hidden"
															name="ctl00$ContentPlaceHolder1$hfFile"
															id="ctl00_ContentPlaceHolder1_hfFile" />

														<div class="divclear"></div>
													</div>
												</div>
												<!-- 问卷基础价格 -->
												
												<p id="ctl00_ContentPlaceHolder1_uploadSpanPrice"
													class="subbox-numa-r pull-right" >2元</p>
											</div>
										</div>


										<div class="subbox-numa">
											<span class="subbox-tit">样本人群要求</span>
											<div class="subbox-content">
												<p class="request">
													<span style="display: none;"><input
														id="ctl00_ContentPlaceHolder1_cbRequest" type="checkbox"
														name="ctl00$ContentPlaceHolder1$cbRequest"
														checked="checked" /></span>如果您的问卷对目标人群有要求，请指定以下属性，可多选
												</p>
												<div class="subbox-list" id="divXuanXiang"
													style="display: none; float: left">
													<table id="ctl00_ContentPlaceHolder1_cblConditions"
														border="0" style="margin-bottom: 0;">
														<tr>
																<td><span jsvalue="0"><input id="ctl00_ContentPlaceHolder1_cblConditions_0" type="checkbox" name="ctl00$ContentPlaceHolder1$cblConditions$0" /><label
																		 for="ctl00_ContentPlaceHolder1_cblConditions_0">性别</label></span></td>
																<td><span jsvalue="1"><input id="ctl00_ContentPlaceHolder1_cblConditions_1" type="checkbox" name="ctl00$ContentPlaceHolder1$cblConditions$1" /><label
																		 for="ctl00_ContentPlaceHolder1_cblConditions_1">年龄</label></span></td>
																<td><span jsvalue="2"><input id="ctl00_ContentPlaceHolder1_cblConditions_2" type="checkbox" name="ctl00$ContentPlaceHolder1$cblConditions$2" /><label
																		 for="ctl00_ContentPlaceHolder1_cblConditions_2">学历</label></span></td>
															</tr>
															<tr>
																<td><span jsvalue="3"><input id="ctl00_ContentPlaceHolder1_cblConditions_4" type="checkbox" name="ctl00$ContentPlaceHolder1$cblConditions$4" /><label
																		 for="ctl00_ContentPlaceHolder1_cblConditions_4">职业</label></span></td>
																<td><span jsvalue="4"><input id="ctl00_ContentPlaceHolder1_cblConditions_5" type="checkbox" name="ctl00$ContentPlaceHolder1$cblConditions$5" /><label
																		 for="ctl00_ContentPlaceHolder1_cblConditions_5">地区</label></span></td>
																<td></td>
															</tr>
													</table>
												  	<span class="other-style" style='display:none'><input
														id="ctl00_ContentPlaceHolder1_cbOther" type="checkbox"
														name="ctl00$ContentPlaceHolder1$cbOther" /><label
														for="ctl00_ContentPlaceHolder1_cbOther">其它要求</label></span> 
												</div>
											</div>
										</div>
										<div id="divsmcontent" class="divsmCon" style="display: none;">
											<div class="subbox-numa" id="divGender">
													<span class="subbox-tit-small">性别:</span>
													<div class="subbox-content">
														<i class="hidden">指定性别</i>
														<div id="divDesc1" class="subbox-lcon wjx__templet__beautifyInput pull-left">
															<span id="ctl00_ContentPlaceHolder1_rblGender"><span jsvalue="1,0,1"><input id="ctl00_ContentPlaceHolder1_rblGender_0"
																	 type="radio" name="ctl00$ContentPlaceHolder1$rblGender" value="1,0,1" /><label for="ctl00_ContentPlaceHolder1_rblGender_0">男</label></span><span
																 jsvalue="1,1,2"><input id="ctl00_ContentPlaceHolder1_rblGender_1" type="radio" name="ctl00$ContentPlaceHolder1$rblGender"
																	 value="1,1,2" /><label for="ctl00_ContentPlaceHolder1_rblGender_1">女</label></span></span>
															<div class="tip-box"></div>
														</div>
														<p class="subbox-numa-r pull-right"></p>
													</div>

												</div>
											<div class="subbox-numa" id="divAge">
													<span class="subbox-tit-small">年龄:</span>
													<div class="subbox-content" style="width: 700px;">
														<i class="hidden">指定年龄</i>
														<div id="divDesc2" class="subbox-lcon wjx__templet__beautifyInput pull-left">
															<span id="ctl00_ContentPlaceHolder1_rblAge">
																<span jsvalue="8,0,1"><input id="ctl00_ContentPlaceHolder1_rblAge_0" type="checkbox" name="ctl00$ContentPlaceHolder1$rblAge$0" />
																	<label for="ctl00_ContentPlaceHolder1_rblAge_0" style="width: 100px;">14岁以下</label></span>
																<span jsvalue="4,1,2"><input id="ctl00_ContentPlaceHolder1_rblAge_1" type="checkbox" name="ctl00$ContentPlaceHolder1$rblAge$1" />
																	<label for="ctl00_ContentPlaceHolder1_rblAge_1" style="width: 100px;">14-17岁</label></span>
																<span jsvalue="3,2,3"><input id="ctl00_ContentPlaceHolder1_rblAge_2" type="checkbox" name="ctl00$ContentPlaceHolder1$rblAge$2" />
																	<label for="ctl00_ContentPlaceHolder1_rblAge_2" style="width: 100px;">18-20岁</label></span>
																<span jsvalue="2,3,4"><input id="ctl00_ContentPlaceHolder1_rblAge_3" type="checkbox" name="ctl00$ContentPlaceHolder1$rblAge$3" />
																	<label for="ctl00_ContentPlaceHolder1_rblAge_3" style="width: 100px;">21-24岁</label></span>
																<br />
																<span jsvalue="3,4,5"><input id="ctl00_ContentPlaceHolder1_rblAge_4" type="checkbox" name="ctl00$ContentPlaceHolder1$rblAge$4" />
																	<label for="ctl00_ContentPlaceHolder1_rblAge_4" style="width: 100px;">25-30岁</label></span>
																<span jsvalue="4,5,6"><input id="ctl00_ContentPlaceHolder1_rblAge_5" type="checkbox" name="ctl00$ContentPlaceHolder1$rblAge$5" />
																	<label for="ctl00_ContentPlaceHolder1_rblAge_5" style="width: 100px;">31-40岁</label></span>
																<span jsvalue="6,6,3"><input id="ctl00_ContentPlaceHolder1_rblAge_6" type="checkbox" name="ctl00$ContentPlaceHolder1$rblAge$6" />
																	<label for="ctl00_ContentPlaceHolder1_rblAge_6" style="width: 100px;">40-60岁</label></span>
																<span jsvalue="8,7,7"><input id="ctl00_ContentPlaceHolder1_rblAge_7" type="checkbox" name="ctl00$ContentPlaceHolder1$rblAge$7" />
																	<label for="ctl00_ContentPlaceHolder1_rblAge_7" style="width: 100px;">60岁以上</label></span>
															</span>
															<div class="tip-box"></div>
														</div>
														<p class="subbox-numa-r pull-right"></p>
													</div>
												</div>
											<div class="subbox-numa" id="divEdu">
													<span class="subbox-tit-small">学历:</span>
													<div class="subbox-content">
														<i class="hidden">指定学历</i>
														<div id="divDesc3" class="subbox-lcon wjx__templet__beautifyInput pull-left">
															<span id="ctl00_ContentPlaceHolder1_rblEdu">
																<span jsvalue="8,0,1"><input id="ctl00_ContentPlaceHolder1_rblEdu_0" type="checkbox" name="ctl00$ContentPlaceHolder1$rblEdu$0" />
																	<label for="ctl00_ContentPlaceHolder1_rblEdu_0">小学</label></span>
																<span jsvalue="6,1,2"><input id="ctl00_ContentPlaceHolder1_rblEdu_1" type="checkbox" name="ctl00$ContentPlaceHolder1$rblEdu$1" />
																	<label for="ctl00_ContentPlaceHolder1_rblEdu_1">初中</label></span>
																<span jsvalue="3,2,3"><input id="ctl00_ContentPlaceHolder1_rblEdu_2" type="checkbox" name="ctl00$ContentPlaceHolder1$rblEdu$2" />
																	<label for="ctl00_ContentPlaceHolder1_rblEdu_2">高中</label></span>
																<span jsvalue="2,3,4"><input id="ctl00_ContentPlaceHolder1_rblEdu_3" type="checkbox" name="ctl00$ContentPlaceHolder1$rblEdu$3" />
																	<label for="ctl00_ContentPlaceHolder1_rblEdu_3">中专</label></span>
																<span jsvalue="2,4,4"><input id="ctl00_ContentPlaceHolder1_rblEdu_4" type="checkbox" name="ctl00$ContentPlaceHolder1$rblEdu$4" />
																	<label for="ctl00_ContentPlaceHolder1_rblEdu_4">大专</label></span>
																<span jsvalue="2,5,2"><input id="ctl00_ContentPlaceHolder1_rblEdu_5" type="checkbox" name="ctl00$ContentPlaceHolder1$rblEdu$5" />
																	<label for="ctl00_ContentPlaceHolder1_rblEdu_5">大学</label></span>
																<span jsvalue="5,6,6"><input id="ctl00_ContentPlaceHolder1_rblEdu_6" type="checkbox" name="ctl00$ContentPlaceHolder1$rblEdu$6" />
																	<label for="ctl00_ContentPlaceHolder1_rblEdu_6">研究生</label></span>
																<span jsvalue="8,7,8"><input id="ctl00_ContentPlaceHolder1_rblEdu_7" type="checkbox" name="ctl00$ContentPlaceHolder1$rblEdu$7" />
																	<label for="ctl00_ContentPlaceHolder1_rblEdu_7">博士及以上</label></span>
															</span>
															<div class="tip-box"></div>
														</div>
														<p class="subbox-numa-r pull-right"></p>
													</div>
												</div>
											<div class="subbox-numa" id="divIndustry">
													<span class="subbox-tit-small">职业:</span>
													<div class="subbox-content" style="width: 700px;">
														<i class="hidden">指定职业</i>
														<div id="divDesc6" class="subbox-lcon wjx__templet__beautifyInput pull-left">
															<span id="ctl00_ContentPlaceHolder1_rblIndustry">
																<span jsvalue="6,0,1"><input id="ctl00_ContentPlaceHolder1_rblIndustry_0" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry"
																 value="6,6,1" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_0" style="width: 100px;">学生</label></span>
																<span jsvalue="3,1,2"><input id="ctl00_ContentPlaceHolder1_rblIndustry_1" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="3,7,2" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_1" style="width: 100px;">IT/互联网</label></span>
																<span jsvalue="7,2,3"><input id="ctl00_ContentPlaceHolder1_rblIndustry_2" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="7,6,3" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_2" style="width: 100px;">金融业</label></span>
																<span jsvalue="6,3,4"><input id="ctl00_ContentPlaceHolder1_rblIndustry_3" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="6,7,4" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_3" style="width: 100px;">咨询/法律</label></span>
																<span jsvalue="10,4,5"><input id="ctl00_ContentPlaceHolder1_rblIndustry_4" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="10,9,5" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_4" style="width: 100px;">政府机构</label></span>
																<span jsvalue="8,5,6"><input id="ctl00_ContentPlaceHolder1_rblIndustry_5" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="8,7,6" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_5" style="width: 100px;">工业/制造</label></span>
																<span jsvalue="5,6,7"><input id="ctl00_ContentPlaceHolder1_rblIndustry_6" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="5,5,7" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_6" style="width: 100px;">教育/科研</label></span>
																<span jsvalue="5,7,4"><input id="ctl00_ContentPlaceHolder1_rblIndustry_7" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="5,1,4" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_7" style="width: 100px;">文化/艺术</label></span>
																<span jsvalue="4,8,3"><input id="ctl00_ContentPlaceHolder1_rblIndustry_8" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="4,5,3" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_8" style="width: 100px;">影视/娱乐</label></span>
																<span jsvalue="6,9,5"><input id="ctl00_ContentPlaceHolder1_rblIndustry_9" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="6,6,5" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_9" style="width: 100px;">医药/健康</label></span>
																<span jsvalue="4,10,1"><input id="ctl00_ContentPlaceHolder1_rblIndustry_10" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="4,4,1" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_10" style="width: 100px;">媒体公关</label></span>
																<span jsvalue="8,11,5"><input id="ctl00_ContentPlaceHolder1_rblIndustry_11" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="8,7,5" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_11" style="width: 100px;">建筑/房产</label></span>
																<span jsvalue="7,12,1"><input id="ctl00_ContentPlaceHolder1_rblIndustry_12" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="7,6,1" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_12" style="width: 100px;">服务业</label></span>
																<span jsvalue="9,13,2"><input id="ctl00_ContentPlaceHolder1_rblIndustry_13" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="9,5,2" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_13" style="width: 100px;">个体户</label></span>
																<span jsvalue="9,14,5"><input id="ctl00_ContentPlaceHolder1_rblIndustry_14" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="9,3,5" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_14" style="width: 100px;">自由职业</label></span>
																<!-- <span jsvalue="5,6,8"><input id="ctl00_ContentPlaceHolder1_rblIndustry_15" type="radio" name="ctl00$ContentPlaceHolder1$rblIndustry" 
																		value="5,6,8" />
																	 <label for="ctl00_ContentPlaceHolder1_rblIndustry_15" style="width: 100px;">其他</label></span> -->
															
															</span>
															<div class="tip-box"></div>
														</div>
														<p class="subbox-numa-r pull-right"></p>
													</div>
												</div>
											<div class="subbox-numa" id="divArea">
													<span class="subbox-tit-small">地区:</span>
													<div class="subbox-content" style=" width:700px;">
														<i class="hidden">指定地区</i>
														<div id="divDesc0" class="subbox-lcon wjx__templet__beautifyInput pull-left">
															<span id="ctl00_ContentPlaceHolder1_cblArea"><span jsvalue="1,0,1"><input id="ctl00_ContentPlaceHolder1_cblArea_0"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$0" /><label for="ctl00_ContentPlaceHolder1_cblArea_0" style="width: 65px;">北京</label></span><span
																 jsvalue="1,1,2"><input id="ctl00_ContentPlaceHolder1_cblArea_1" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$1" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_1" style="width: 65px;">上海</label></span><span jsvalue="1,2,3"><input id="ctl00_ContentPlaceHolder1_cblArea_2"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$2" /><label for="ctl00_ContentPlaceHolder1_cblArea_2" style="width: 65px;">天津</label></span><span
																 jsvalue="4,3,4"><input id="ctl00_ContentPlaceHolder1_cblArea_3" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$3" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_3" style="width: 65px;">重庆</label></span><span jsvalue="6,4,5"><input id="ctl00_ContentPlaceHolder1_cblArea_4"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$4" /><label for="ctl00_ContentPlaceHolder1_cblArea_4" style="width: 65px;">河北</label></span><span
																 jsvalue="3,5,6"><input id="ctl00_ContentPlaceHolder1_cblArea_5" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$5" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_5" style="width: 65px;">山西</label></span><span jsvalue="4,6,7"><input id="ctl00_ContentPlaceHolder1_cblArea_6"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$6" /><label for="ctl00_ContentPlaceHolder1_cblArea_6" style="width: 65px;">辽宁</label></span><span
																 jsvalue="3,7,8"><input id="ctl00_ContentPlaceHolder1_cblArea_7" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$7" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_7" style="width: 65px;">吉林</label></span><span jsvalue="3,8,15"><input id="ctl00_ContentPlaceHolder1_cblArea_8"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$8" /><label for="ctl00_ContentPlaceHolder1_cblArea_8" style="width: 65px;">黑龙江</label></span><span
																 jsvalue="1,9,10"><input id="ctl00_ContentPlaceHolder1_cblArea_9" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$9" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_9" style="width: 65px;">江苏</label></span><span jsvalue="1,10,11"><input id="ctl00_ContentPlaceHolder1_cblArea_10"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$10" /><label for="ctl00_ContentPlaceHolder1_cblArea_10" style="width: 65px;">浙江</label></span><span
																 jsvalue="4,11,12"><input id="ctl00_ContentPlaceHolder1_cblArea_11" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$11" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_11" style="width: 65px;">安徽</label></span><span jsvalue="6,12,13"><input id="ctl00_ContentPlaceHolder1_cblArea_12"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$12" /><label for="ctl00_ContentPlaceHolder1_cblArea_12" style="width: 65px;">福建</label></span><span
																 jsvalue="4,13,14"><input id="ctl00_ContentPlaceHolder1_cblArea_13" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$13" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_13" style="width: 65px;">江西</label></span><span jsvalue="6,14,9"><input id="ctl00_ContentPlaceHolder1_cblArea_14"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$14" /><label for="ctl00_ContentPlaceHolder1_cblArea_14" style="width: 65px;">山东</label></span><span
																 jsvalue="6,15,16"><input id="ctl00_ContentPlaceHolder1_cblArea_15" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$15" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_15" style="width: 65px;">河南</label></span><span jsvalue="6,16,17"><input id="ctl00_ContentPlaceHolder1_cblArea_16"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$16" /><label for="ctl00_ContentPlaceHolder1_cblArea_16" style="width: 65px;">湖北</label></span><span
																 jsvalue="5,17,18"><input id="ctl00_ContentPlaceHolder1_cblArea_17" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$17" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_17" style="width: 65px;">湖南</label></span><span jsvalue="1,18,20"><input id="ctl00_ContentPlaceHolder1_cblArea_18"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$18" /><label for="ctl00_ContentPlaceHolder1_cblArea_18" style="width: 65px;">广东</label></span><span
																 jsvalue="6,19,21"><input id="ctl00_ContentPlaceHolder1_cblArea_19" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$19" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_19" style="width: 65px;">海南</label></span><span jsvalue="6,20,22"><input id="ctl00_ContentPlaceHolder1_cblArea_20"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$20" /><label for="ctl00_ContentPlaceHolder1_cblArea_20" style="width: 65px;">四川</label></span><span
																 jsvalue="9,21,23"><input id="ctl00_ContentPlaceHolder1_cblArea_21" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$21" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_21" style="width: 65px;">贵州</label></span><span jsvalue="9,22,24"><input id="ctl00_ContentPlaceHolder1_cblArea_22"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$22" /><label for="ctl00_ContentPlaceHolder1_cblArea_22" style="width: 65px;">云南</label></span><span
																 jsvalue="4,23,27"><input id="ctl00_ContentPlaceHolder1_cblArea_23" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$23" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_23" style="width: 65px;">陕西</label></span><span jsvalue="9,24,26"><input id="ctl00_ContentPlaceHolder1_cblArea_24"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$24" /><label for="ctl00_ContentPlaceHolder1_cblArea_24" style="width: 65px;">甘肃</label></span><span
																 jsvalue="18,25,28"><input id="ctl00_ContentPlaceHolder1_cblArea_25" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$25" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_25" style="width: 65px;">青海</label></span><span jsvalue="12,26,32"><input id="ctl00_ContentPlaceHolder1_cblArea_26"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$26" /><label for="ctl00_ContentPlaceHolder1_cblArea_26" style="width: 65px;">台湾</label></span><span
																 jsvalue="9,27,33"><input id="ctl00_ContentPlaceHolder1_cblArea_27" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$27" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_27" style="width: 65px;">内蒙古</label></span><span jsvalue="18,28,34"><input id="ctl00_ContentPlaceHolder1_cblArea_28"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$28" /><label for="ctl00_ContentPlaceHolder1_cblArea_28" style="width: 65px;">西藏</label></span><span
																 jsvalue="4,29,25"><input id="ctl00_ContentPlaceHolder1_cblArea_29" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$29" /><label
																	 for="ctl00_ContentPlaceHolder1_cblArea_29" style="width: 65px;">广西</label></span><span jsvalue="18,30,19"><input id="ctl00_ContentPlaceHolder1_cblArea_30"
																	 type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$30" /><label for="ctl00_ContentPlaceHolder1_cblArea_30" style="width: 65px;">宁夏</label></span><span 
																 jsvalue="18,31,2"><input id="ctl00_ContentPlaceHolder1_cblArea_31" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$31" /><label 
																	 for="ctl00_ContentPlaceHolder1_cblArea_31" style="width: 65px;">新疆</label></span><span 
																 jsvalue="12,32,9"><input id="ctl00_ContentPlaceHolder1_cblArea_32" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$32" /><label 
																	 for="ctl00_ContentPlaceHolder1_cblArea_32" style="width: 65px;">香港</label></span><span 
																 jsvalue="12,33,2"><input id="ctl00_ContentPlaceHolder1_cblArea_33" type="checkbox" name="ctl00$ContentPlaceHolder1$cblArea$33" /><label 
																	 for="ctl00_ContentPlaceHolder1_cblArea_33" style="width: 65px;">澳门</label></span>
																	 </span>
															<div class="tip-box"></div>
														</div>
														<p class="subbox-numa-r pull-right"></p>
													</div>
												</div>
											<div class="subbox-numa" id="divOtherRequest" style='display:none'>  
												<span class="subbox-tit-small">其他要求:</span>
												<div class="subbox-content">
													<i class="hidden">其他要求</i>
													<div id="divDesc10" class="subbox-lcon pull-left">
														<textarea name="ctl00$ContentPlaceHolder1$txtOther"
															rows="2" cols="20"
															id="ctl00_ContentPlaceHolder1_txtOther"
															class="wjxui-input"
															style="width: 500px; padding-top: 4px; height: 100px; overflow: auto; line-height: 20px;">
												</textarea>
													</div>
													<p class="subbox-numa-r pull-right">人工报价</p>
												</div>
											</div>
										</div>


										<div class="subbox-numa" style="border-bottom: none;">
											<span class="subbox-tit" style="margin-right: 50px;">其他信息</span>
											<div class="subbox-content" style="width: 700px;">
												<div class="details">
													<span class="title pull-left">有效样本数量</span> <input
														name="ctl00$ContentPlaceHolder1$txtCount" type="text"
														id="ctl00_ContentPlaceHolder1_txtCount"
														class="form-control" placeholder="请输入" />
													<div class="title pull-left" style="margin-left: 50px;">发票需求</div>
													<span class="subboxfont" id="spanFapiao"> <select
														name="ctl00$ContentPlaceHolder1$ddlFapiao"
														id="ctl00_ContentPlaceHolder1_ddlFapiao">
															<option selected="selected" value="0">不需要发票</option>
															<option value="1">电子发票</option>
															<option value="2">纸质发票（需额外支付20元快递费）</option>
													</select>
													</span> <span class="subbox-lcon-grey2" id="spanLess"
														style="display: none; padding-left: 92px;">小于200份将加收附加服务费
														<a class="iconfontNew" href="javascript:void(0);"
														style="color: #ff5500; font-size: 18px; vertical-align: bottom;"
														onmouseenter="layer.tips('附加服务费比例执行标准为：（200－目标答卷数）×0.2％，例如目标答卷数150份将加收10％的附加服务费。', this)"
														onmouseout="layer.closeAll('tips')">*</a>
													</span> <a href="javascript:;"
														style="font-size: 18px; color: #8c8c8c;"
														class="iconfontNew"
														onmouseenter="layer.tips('选择需要发票：订单总金额将增加6％的税款', this)"
														onmouseout="layer.closeAll('tips')">*</a>
												</div>
												<div class="details">
													<span class="title pull-left" style="width: 84px;">如何称呼您</span>
													<input name="ctl00$ContentPlaceHolder1$txtName" type="text"
														maxlength="15" id="ctl00_ContentPlaceHolder1_txtName"
														class="form-control pull-left" placeholder="请输入" /> <span
														class="title pull-left"
														style="margin-left: 50px; margin-bottom: 20px;">联系方式</span>
													<input name="ctl00$ContentPlaceHolder1$txtPhone"
														type="text" maxlength="50"
														id="ctl00_ContentPlaceHolder1_txtPhone"
														class="form-control pull-left" placeholder="请输入"
														style="width: 210px;" />

												</div>
											</div>
										</div>
									</div>
									<!-- </div> -->
									<div class="sm-subbox"
										style="padding: 10px 25px 10px; border: 1px solid #D9D9D9; margin-bottom: 30px;">
										<div class="sm-subbox">
											<div class="subbox-numa">
												<span class="subbox-tit pull-left"
													style="margin-right: 50px;">订单结算</span>
												<div class="subbox-content">
													<div id="divPrice" style="margin-top: 5px;"></div>
												</div>
											</div>

										</div>
										<div class="sm-subbox">
											<div class="subbox-numa">
												<span class="subbox-tit pull-left"
													style="font-size: 15px; color: #595959; font-weight: normal;">订单总价:</span>
												<div
													style="margin-left: 8px; color: #8C8C8C; line-height: 20px; margin-top: 10px; display: none; float: left; font-size: 14px;"
													id="divReport">工作时间（周一至周日8:30-21:00）&nbsp;您提交订单后半小时内完成报价
												</div>

												<input type="submit"
													name="ctl00$ContentPlaceHolder1$btnPreview" value="获取报价"
													onclick="check(this);"
													id="ctl00_ContentPlaceHolder1_btnPreview"
													class="submitbutton pull-right"
													style="width: 140px; height: 44px; line-height: 44px; margin-left: 20px;" />
												<div class="pull-right" id="total-price"
													style="font-size: 28px; color: #FF6A00"></div>
											</div>
										</div>
										<span id="ctl00_ContentPlaceHolder1_lblMsg"
											style="color: Red; margin: 20px 40px 0; display: block; overflow: hidden; padding-bottom: 20px;"></span>
									</div>

									<input type="hidden" name="ctl00$ContentPlaceHolder1$hfId"
										id="ctl00_ContentPlaceHolder1_hfId" /> <input type="hidden"
										name="ctl00$ContentPlaceHolder1$hfPay"
										id="ctl00_ContentPlaceHolder1_hfPay" />


									<div style="display: none;" id="divLoginRegister">
										<div style="text-align: center; margin-top: 15px;">
											提示：为了方便与您保持联系，在登记您的需求之前请先<a href="register.jsp"
												class="link-U00a6e6">登录</a>或<a
												href="/register.jsp"
												class="link-U00a6e6">注册</a>成"吾问"用户
											<div style="margin-top: 10px;">
												<input type="button" onclick="window.parent.PDF_close();"
													value="关闭" class="operation" />
											</div>
										</div>
									</div>


								</div>

							</div>

							<div id="pills-profile" role="tabpanel"
								aria-labelledby="pills-profile-tab" class="tab-pane fade ">
								<div class="sm-subbox" style="padding: 40px 30px 60px;">
									<h5 style="color: #262626; margin-left: 10px; height: 30px;">
										<span style="font-weight: 900;">* </span>样本总额
										=（基础价格+附加价格）&times 有效样本数量
									</h5>
									<div class="sm-price-part">
										<h6>
											一、基础价格 <span
												style="color: #595959; margin-left: 10px; font-size: 14px;">(此单价是指每份答卷的价格，矩阵题每个小题算1题)</span>
										</h6>
										<table width="100%" border="0" class="smpriceble"
											style="margin-top: 20px;">
											<tr style="color: #8C8C8C; background-color: #F7F7F7;">
												<td width="72">题目数</td>
												<td width="107">20题内</td>
												<td width="107">21~30题</td>
												<td width="107">31~40题</td>
												<td width="107">41~50题</td>
												<td width="107">51~60题</td>
												<td width="107">61~70题</td>
												<td width="107">71~80题</td>
												<td width="107">81~90题</td>
											</tr>
											<tr style="color: #58595b;">
												<td>单价</td>
												<td>￥2元</td>
												<td>￥3元</td>
												<td>￥4元</td>
												<td>￥5元</td>
												<td>￥6元</td>
												<td>￥7元</td>
												<td>￥8元</td>
												<td>￥9元</td>
											</tr>
											<tr style="color: #8C8C8C; background-color: #F7F7F7;">
												<td>题目数</td>
												<td>91~100题</td>
												<td>101~110题</td>
												<td>111~120题</td>
												<td>121~130题</td>
												<td>131~140题</td>
												<td>141~150题</td>
												<td>151~160题</td>
												<td>超过160题</td>
											</tr>
											<tr style="color: #58595b;">
												<td>单价</td>
												<td>￥10元</td>
												<td>￥11元</td>
												<td>￥12元</td>
												<td>￥13元</td>
												<td>￥14元</td>
												<td>￥15元</td>
												<td>￥16元</td>
												<td>每10题加1元</td>
											</tr>
										</table>
									</div>
									<div class="sm-price-part">
										<h6>
											二、附加价格 <span
												style="color: #595959; margin-left: 10px; font-size: 14px;">(此价格指每份有效答卷增加的单价)</span>
										</h6>

										<p class="sm-sub-atitle">指定性别</p>
										<table border="0">
											<tr style="color: #8C8C8C; background-color: #F7F7F7;">
												<td width="152">男</td>
												<td width="152">女</td>
											</tr>
											<tr style="color: #58595b">
												<td>+1元</td>
												<td>+1元</td>
											</tr>
										</table>
										<p class="sm-sub-atitle">指定年龄段</p>
										<table width="100%" border="0">
											<tr style="color: #8C8C8C; background-color: #F7F7F7;">
												<td width="12.5%">14岁以下</td>
												<td width="12.5%">14-17岁</td>
												<td width="12.5%">18-20岁</td>
												<td width="12.5%">21-24岁</td>
												<td width="12.5%">25-30岁</td>
												<td width="12.5%">31-40岁</td>
												<td width="12.5%">40-60岁</td>
												<td width="12.5%">60岁以上</td>
											</tr>
											<tr style="color: #58595b;">
												<td>+8元</td>
												<td>+4元</td>
												<td>+3元</td>
												<td>+2元</td>
												<td>+3元</td>
												<td>+4元</td>
												<td>+6元</td>
												<td>+8元</td>
											</tr>
										</table>
										<p class="sm-sub-atitle">指定学历</p>
										<table width="100%" border="0">
											<tr style="color: #8C8C8C; background-color: #F7F7F7;">
												<td width="15.5%">小学</td>
												<td width="15.5%">初中</td>
												<td width="15.5%">高中</td>
												<td width="22.5%">中专、大专、大学</td>
												<td width="15.5%">研究生</td>
												<td width="15.5%">博士及以上</td>
											</tr>
											<tr style="color: #58595b;">
												<td>+8元</td>
												<td>+6元</td>
												<td>+3元</td>
												<td>+2元</td>
												<td>+5元</td>
												<td>+8元</td>
											</tr>
										</table>
										<p class="sm-sub-atitle">指定地区</p>
										<table width="100%" border="0">
											<tr style="color: #8C8C8C; background-color: #F7F7F7;">
												<td width="28%">北京、上海、广东<br /> 浙江、江苏
												</td>
												<td width="22%">黑龙江、山西<br /> 吉林、天津
												</td>
												<td width="28%">安徽、广西、辽宁<br /> 陕西、江西
												</td>
												<td width="22%">四川、湖南<br /> 重庆、海南
												</td>

											</tr>
											<tr>
												<td>+1元</td>
												<td>+3元</td>
												<td>+4元</td>
												<td>+5元</td>

											</tr>
											<tr style="color: #8C8C8C; background-color: #F7F7F7;">
												<td>山东、河南、湖北<br /> 河北、福建
												</td>
												<td>云南、贵州<br /> 内蒙古、甘肃
												</td>
												<td>台湾、香港、澳门</td>
												<td>宁夏、青海<br /> 西藏、新疆
												</td>
											</tr>
											<tr>

												<td>+6元</td>
												<td>+9元</td>
												<td>+12元</td>
												<td>+18元</td>
											</tr>
										</table>
										<p class="sm-sub-atitle">指定职业</p>
										<table width="100%" border="0" class="smpriceble">
											<tr style="color: #8C8C8C; background-color: #F7F7F7;">

												<td width="20%">IT/互联网</td>
												<td width="21.66%">影视/娱乐、媒体公关</td>
												<td width="21.66%">教育/科研、文化/艺术</td>
												<td width="21.66%">咨询/法律、医药/健康</td>
												<td width="15%">学生</td>
											</tr>
											<tr>
												<td>+3元</td>
												<td>+4元</td>
												<td>+5元</td>
												<td>+6元</td>
												<td>+6元</td>
											</tr>
											<tr style="color: #8C8C8C; background-color: #F7F7F7;">
												<td width="129">金融业、服务业</td>
												<td width="129">工业/制造、建筑/房产</td>
												<td width="129">个体户、自由职业</td>
												<td width="129">政府机构</td>
												<td>其它</td>
											</tr>
											<tr>
												<td>+7元</td>
												<td>+8元</td>
												<td>+9元</td>
												<td>+10元</td>
												<td>依实际情况而定</td>
											</tr>
										</table>
										<p class="sm-sub-atitle">其他要求</p>
										<table width="100%" border="0" class="smpriceble">
											<tr style="color: #8C8C8C; background-color: #fff;">
												<td style="text-align: left; padding: 8px;">如果您的要求<b
													style="color: #262626;">&nbsp;不在上面的列表&nbsp;</b>中或有<b
													style="color: #262626;">&nbsp;配额要求&nbsp;</b>，您可以在"需求/报价"页面的"其它要求"里面说明，价格会根据实际情况而定。
												</td>
											</tr>
										</table>

									</div>
								</div>
							</div>

						</div>
					</div>


				</div>
				<!-- row -->
			</div>
			<!-- container -->

		</section>

	</div>
	<!-- Javascript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js"> </script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
	<script src="vendor/waypoints/lib/jquery.waypoints.min.js"> </script>
	<script src="vendor/jquery.counterup/jquery.counterup.min.js"> </script>
	<script src="vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
	<script src="js/jquery.parallax-1.1.3.js"></script>
	<script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
	<script src="vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
	<script src="js/front.js"></script>
	<script src="layer/layer.js"></script>
	
	<script type="text/javascript">
		var userID = 1
  		if(userID != null){
		
			var questionnaireID = 1
			if(questionnaireID != null){
				//查询问卷title和问卷题量
				$.ajax({
					url:"QuestionQueryServlet",
					type:"get",
					dataType:"json",
					async:false,
					data:{
						"ID":questionnaireID,
						"questionQueryType":2
					},
					success:function(data){
						var question = JSON.parse(data[0]['content'])
						var questionid = data[0]['questionnaireID']
						var questiontitle = data[0]['title']
						var questionlist = question['questionlist']
						var questioncount = questionlist.length
					
						$("#ddlActivity").append(questiontitle+"(ID: "+questionnaireID+")")        //问卷id和问卷title
						
						$("#questionnairetitle").val(questiontitle)
						
						$("#questionnaireID").val(questionid)
						
						$("#ctl00_ContentPlaceHolder1_lblTotalQCount").append(questioncount)   //问卷的题目数量
					
				},
				error:function(error){
					console.log(error)
				}
			})
		}
		else{ 
			alert("无此问卷");
			window.location.href="myself.jsp"}  //用户问卷后台
	}
	else{ 
		alert("还未登录，请先登录！");
		window.location.href = "register.jsp" }
		
	</script>

	<script type="text/javascript">
			var needUpload = false;
			var divUpload = document.getElementById("ctl00_ContentPlaceHolder1_divUpload");
			var uploadBtn = document.getElementById("uploadBtn");
			var uploadSpanPrice = document.getElementById("ctl00_ContentPlaceHolder1_uploadSpanPrice");
		//	if (divUpload && divUpload.style.display != "none")
		//	needUpload = true;
	</script>
	<script type="text/javascript">
	
			var perprice = 0;    //每份问卷的有效单价
			var Amount = 0;      //订单总金额
			var request = new Array();    //要求数组
			var req ={ "tags":[
				{"tag" : null},
				{"tag" : null},
				{"tag" : null},
				{"tag" : null},
				{"tag" : null}
			]};
			var uploadSpanPrice = document.getElementById("ctl00_ContentPlaceHolder1_uploadSpanPrice");
			var divPrice = document.getElementById("divPrice");  //订单总价
			var btnPreview = document.getElementById("ctl00_ContentPlaceHolder1_btnPreview");  //获取报价
			var cblConditions = document.getElementById("ctl00_ContentPlaceHolder1_cblConditions");  //样本人群要求的table
			var cbRequest = document.getElementById("ctl00_ContentPlaceHolder1_cbRequest");    //样本人群要求
			var txtCount = document.getElementById("ctl00_ContentPlaceHolder1_txtCount");   //有效样本数量
			var txtName = document.getElementById("ctl00_ContentPlaceHolder1_txtName");     //称呼
			var txtPhone = document.getElementById("ctl00_ContentPlaceHolder1_txtPhone");   //联系电话
			var cbOther = document.getElementById("ctl00_ContentPlaceHolder1_cbOther");     //其他要求
			var ddlFapiao = document.getElementById("ctl00_ContentPlaceHolder1_ddlFapiao");   //发票
			
			//var totalQCount = 3;
			var IsManyQues = false;
			var fapiaoMsg = "";
			
			function GetBasePrice() {     //获取基础价格
				var totalQCount = document.getElementById("ctl00_ContentPlaceHolder1_lblTotalQCount").innerText;
				if (totalQCount == 0 || needUpload) //题目数未确定
					return -1;
					var price = 2; //2元起  基础价格
					var level1 = parseInt(totalQCount/ 10 - 2); 
					if (totalQCount > 20) {
						if (totalQCount % 10 > 0)
							level1 += 1;
							price += level1;
						}
												
				return parseInt(price);
			}
											var divs = ["divGender", "divAge", "divEdu", "divIndustry", "divArea",];
											for (var i = 0; i < divs.length; i++) {
												var divi = document.getElementById(divs[i]);
												var pinputs = divi.getElementsByTagName("input");
												for (var j = 0; j < pinputs.length; j++) {
													pinputs[j].onclick = function() {
														getTotalPrice();
													}
												}
											}
											var divOtherRequest = document.getElementById("divOtherRequest");
											var divPerFaPiao = document.getElementById("divPerFaPiao");
											var divCorpFaPiao = document.getElementById("divCorpFaPiao");
											var divTarget = document.getElementById("divTarget");

											var spanFapiao = document.getElementById("spanFapiao");
											var xianjinBalance = 0;
											var weiKaiAmount = 0;
											if (weiKaiAmount < xianjinBalance)
												spanFapiao.style.display = "none";
											var divXuanXiang = document.getElementById("divXuanXiang");
											var divBg = document.getElementById("divsmcontent");
											var totalPriceDiv = document.getElementById("total-price");

											cbOther.onclick = function() {
												if (this.checked) divOtherRequest.style.display = "";
												else {
													divOtherRequest.style.display = "none";
													getTotalPrice();
												}
											}

											cbRequest.onclick = function() {
												divBg.style.display = divXuanXiang.style.display = this.checked ? "" : "none";

											}
											if (cbRequest.checked) {
												cbRequest.onclick();
											}

											var hfPay = document.getElementById("ctl00_ContentPlaceHolder1_hfPay");
											var prevCount = 0;
											if (hfPay.value) {
												divBg.style.display = divXuanXiang.style.display = "none";
												prevCount = txtCount.value;
											}

											var txtOther = document.getElementById("ctl00_ContentPlaceHolder1_txtOther");
											txtOther.onchange = txtOther.onblur = function() {
												var val = this.value;
												//cbOther.checked = val ? true : false;
												if (val)
													getTotalPrice();
											}
											var condInputs = cblConditions.getElementsByTagName("input");
											for (var i = 0; i < condInputs.length; i++) {
												condInputs[i].index = i;
												condInputs[i].onclick = function() {
													var index = this.index;
													var d = document.getElementById(divs[index]);
													d.style.display = this.checked ? "" : "none";
													if (divs[index] == "divOther") {
														cbOther.checked = obj.checked;
													}
													getTotalPrice()
												}
												condInputs[i].onclick();
											}
											txtCount.onblur = txtCount.onchange = function() {
												var val = this.value;
												if (parseInt(val) != val) {
													this.value = "";
												} else {
													if (parseInt(val) < 50)
														this.value = 50;
													document.getElementById("spanLess").style.display = val >= 200 ? "none" : "";
												}
												getTotalPrice();
											}
											txtCount.onblur();
											var initBasePrice = 0;
											var initCondPrice = 0;

											function getInnerText(element) {
												return (typeof element.textContent == "string") ? element.textContent : element.innerText;
											}

											function trim(str) {
												return str.replace(/(^\s*)|(\s*$)/g, "");
											}
											
											function getTotalPrice() {
												var totalPrice = 0;
												var hasOther = false;
												var html = "<div id='form-layer' class='form-layer'>";
												var space = "&nbsp;&nbsp;|"
												html += "基础价格:&nbsp;&nbsp;";
												var basePrice = GetBasePrice();
												
												
												if (basePrice > 0) {
													html += basePrice + "元" + space;
													uploadSpanPrice.innerHTML = basePrice + "元";
												} else {
													if (IsManyQues)
														html += "由于问卷中的填写的内容过多，需要人工计算价格" + space;
													else {
														html += "待报价";
														uploadSpanPrice.innerHTML = "待报价";
													}
												}
												totalPrice += basePrice;
												if (cbRequest.checked) {
													var condInputs = cblConditions.getElementsByTagName("input");
													var request2 = new Array();
													var requestArr = new Array();
													for (var i = 0; i < condInputs.length; i++) {
														if (!condInputs[i].checked) continue;
														var divCond = document.getElementById(divs[i]);
														var priceInputs = divCond.getElementsByTagName("input");
														
														var cname = getInnerText(divCond.getElementsByTagName("i")[0]).replace("指定", "");
														
														var cPrice = 0;
														var choiceTxt = "";
														var cCount = 0;
														var choiseArr = new Array();
														var choiseval = new Array();
														for (var j = 0; j < priceInputs.length; j++) {
															var priceInput = priceInputs[j];
															if (!priceInput.checked)
																continue;
															cCount++;
															var mPrice = parseInt(priceInput.parentNode.getAttribute("jsvalue").split(",")[0]);
															var tag_value = parseInt(priceInput.parentNode.getAttribute("jsvalue").split(",")[1]);
															if (cPrice == 0) cPrice = mPrice;
															if (mPrice - cPrice < 0) cPrice = mPrice;
															var lbl = priceInput.parentNode.getElementsByTagName("label")[0];
															var labelData = lbl.innerHTML.replace("个人", "").split("或")[0];
															//choiceTxt += "<dd>" + labelData + "</dd>";
															choiseArr.push(labelData);
															choiseval.push(tag_value);
														}
														choiceTxt = choiseArr.join("、");  //同类条件之间加、
														req.tags[i].tag=choiseval;
														if (cCount > 1) {
															//如果您需要指定各个地区的配额，则将单独计算价格，配额要求请在"其它要求"中注明
															var divDesc = priceInputs[0].parentNode.parentNode.parentNode;
															var divTip = divDesc.children[divDesc.children.length - 1];
															var cnameraw = trim(cname.replace("：", ""));
															//divTip.innerHTML = "<span class='iconfontNew'>&#xe696;</span>如果您选择的" + cnameraw + "没有配额要求，将按所选" + cnameraw + "的最低价格计算，如需指定配额<a style='color:#8C8C8C;' href='javascript:' onclick='alert(this.title);' title='配额要求请在“其它要求”中注明'>(?)</a>，则将单独计算价格。";
															divTip.innerHTML = '<span class="iconfontNew">*</span>如果您选择的' + cnameraw + '没有配额要求，将按所选' +
																cnameraw +
																'的最低价格计算，如需指定配额<a style="color:#8C8C8C;" href="javascript:" onmouseenter="layer.tips(\'配额要求请在“其它要求”中注明\', this)" onmouseout="layer.closeAll(\'tips\')">(?)</a>，则将单独计算价格。';
														}
														//dl.innerHTML=dl.initHtml+choiceTxt;
														totalPrice += cPrice;
														if (cPrice > 0) {
															requestArr.push("&nbsp;&nbsp;" + cname + ":&nbsp;&nbsp;" + choiceTxt + "&nbsp;&nbsp;" + cPrice + "元");
															request2.push(cname + " : " + choiceTxt );
															// alert(request2);
															var vp = divCond.getElementsByTagName("p")[0];
															vp.innerHTML = cPrice + "元";
														}
													}
													var stringreq = requestArr.join("&nbsp;&nbsp;|");
													request = request2;
													html += stringreq;
													if (cbOther && cbOther.checked && txtOther.value) {
														html += "&nbsp;&nbsp;其它要求：待报价";
														hasOther = true;
													}
												}
												//html+="</div>";
												var strpice = "";
												var drop_div =
													"<span id='drop-btn-down'>&nbsp;&or;</span><span id='drop-btn-up' >&nbsp;&and;</span>";
													
												if (basePrice > 0 && !hasOther)
													strpice = "<div class='price-tit'><span class='price-lt'>样本总单价：</span><span class='price-rt'>" +
													totalPrice + "元</span>" + drop_div + "</div>";
												else {
													if (initBasePrice) {
														totalPrice = initBasePrice + initCondPrice;
														html = "<div id='form-layer' class='form-layer'>基础价格：" + initBasePrice + "元";
														if (initCondPrice > 0) {
															html += "&nbsp;&nbsp;指定条件：" + initCondPrice + "元";
														}
														strpice = "<div class='price-tit'><span class='price-lt'>样本总单价：</span><span class='price-rt'>" +
															totalPrice + "元</span>" + drop_div + "</div>";
														initBasePrice = 0;
													} else {
														strpice = "<div class='price-tit'><span class='price-lt'>样本总单价：</span><span class='price-rt'>待报价</span>" +
															drop_div + "</div>";
														totalPriceDiv.innerHTML = "待报价";
														totalPrice = -1;
													}
												}
												perprice = totalPrice;
												html += "</div>";
												html = strpice + html;
												var serviceFee = 0;
												var totalAmount = 0;
												var yangbenTotal = 0;
												if (txtCount.value && parseInt(txtCount.value) == txtCount.value) {
													html += "<div class='price-tit'><span class='price-lt'>样本数量：</span><span class='price-rt'>× " + txtCount.value +
														"份</span></div>";
													var count = txtCount.value;
													if (totalPrice > 0) {
														totalAmount = yangbenTotal = totalPrice * count;
														html += "<div class='price-tit'><span class='price-lt'>样本总额：</span><span class='price-rt'>" +
															yangbenTotal + "元</span>";
													} else {
														html += "<div class='price-tit'><span class='price-lt'>样本总额：</span><span class='price-rt'>待报价</span>";
													}
													if (count < 200) {
														var percent = (200 - count) * 2.0 / 1000;
														var addprice;
														if (totalPrice > 0) {
															addprice = parseInt(Math.round(percent * yangbenTotal)) + "元&nbsp;&nbsp;&nbsp;";
														} else {
															addprice = "";
														}
														html += "<div class='price-tit'><span class='price-lt'>附加服务费：</span><span class='price-rt'>" + addprice +
															"</span><span style='font-size: 14px;color: #8C8C8C'>样本总额×" + parseInt(percent * 100) + "%</span></div>";
														serviceFee = parseInt(Math.round(totalAmount * percent));
														totalAmount += serviceFee;
													}
													if (ddlFapiao.value != "0") {
														var suiFee = parseInt(totalAmount * 6 / 100);
														totalAmount += suiFee;
														var fapiaoSui;
														if (suiFee) fapiaoSui = suiFee + "元&nbsp;&nbsp;&nbsp;";
														else fapiaoSui = "";
														var stringfapiao;
														if (count < 200) {
															stringfapiao = "(样本总额+附加服务费)×6%";
														} else {
															stringfapiao = "样本总额×6%";
														}
														if (ddlFapiao.value == "2") {
															html += "<div class='price-tit'><span class='price-lt'>发票税款：</span><span class='price-rt'>" + fapiaoSui +
																"</span><span style='font-size: 14px;color: #8C8C8C'>" + stringfapiao + "</span></div>";
															html +=
																"<div class='price-tit'><span class='price-lt'>发票运费：</span><span class='price-rt'>+ 22元</span></div>";
															totalAmount += 20;
														} else
															html += "<div class='price-tit'><span class='price-lt'>发票税款：</span><span class='price-rt'>" + fapiaoSui +
															"</span><span style='font-size: 14px;color: #8C8C8C'>" + stringfapiao + "</span></div>";
													}
													if (totalPrice > 0) {
														//html += "<div class='price-tit'><span class='price-lt'>样本总额:</span><span class='price-rt'>" + totalAmount + "元</span>";
														totalPriceDiv.innerHTML = "<span style='font-size: 16px;'>￥</span>" + totalAmount +
															"<span style='font-size: 16px;'>元</span>";
													}
												}
												Amount = totalAmount;
												if (totalPrice > 0) {
													btnPreview.value = "提交订单";
													document.getElementById("divReport").style.display = "none";
													
												} else {
													btnPreview.value = "获取报价";
													document.getElementById("divReport").style.display = "";
												}
												divPrice.innerHTML = html;
												dropHandler();
											}
											getTotalPrice();

											function dropHandler() {
												var dropBtnDown = document.getElementById("drop-btn-down");
												var dropBtnUp = document.getElementById("drop-btn-up");
												var formLayer = document.getElementById("form-layer");
												dropBtnUp.style.display = formLayer.style.display = "none";
												dropBtnDown.onclick = function() {
													this.style.display = "none";
													dropBtnUp.style.display = formLayer.style.display = "";
												}
												dropBtnUp.onclick = function() {
													this.style.display = "none";
													dropBtnDown.style.display = "";
													formLayer.style.display = "none";
												}
											}

											function check(obj) {
											
												var count = txtCount.value;
												if (!count) {
													alert("请输入需要回收的数量！");
													txtCount.focus();
													return false;
												}
												var name = txtName.value;
												if (!name) {
													alert("请输入您的称呼！");
													txtName.focus();
													return false;
												}
												var phone = txtPhone.value;
												if (!phone) {
													alert("请输入您的联系方式！");
													txtPhone.focus();
													return false;
												}
												
												var qcount = document.getElementById("ctl00_ContentPlaceHolder1_txtCount");   //有效样本数量
												
												var id = document.getElementById("questionnaireID").value;
												
												var title = document.getElementById("questionnairetitle").value;
												
												var req2 = JSON.stringify(req);
												var request3 = request.join(" , ");
												
												var searchUrl =encodeURI('group_order.jsp?questionid='+ id+'&title='+title+'&qcount='+qcount.value+'&price='+perprice+'&amount='+Amount+'&request='+request3+'&req='+req2);   //使用encodeURI编码
												window.location.href=searchUrl;
							
											  }
											
											var divUpload = document.getElementById("ctl00_ContentPlaceHolder1_divUpload");
											var divView = document.getElementById("ctl00_ContentPlaceHolder1_divView");
											var hfFileName = document.getElementById("ctl00_ContentPlaceHolder1_hfFileName");
											var hasupload = 0;
											if (hasupload) {
												if (divUpload && divView) {
												//	uploadBtn.style.display = divUpload.style.display = "";
													uploadSpanPrice.innerHTML = "待报价";
													divView.style.display = "none";
												}
												needUpload = true;
												if (tempFileName && hfFileName)
													hfFileName.value = tempFileName;
												getTotalPrice();
											} else {
												needUpload = false;
												if (divUpload && divView) {
												//	uploadBtn.style.display = divUpload.style.display = "none";
													uploadSpanPrice.innerHTML = "2元";
													divView.style.display = "";
												}
												if (hfFileName) {
													hfFileName.value = "";
												}
												getTotalPrice();
											}
											
		</script>

</body>
</html>
