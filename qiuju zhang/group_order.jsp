<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<!-- 此页面为订单详情页面，展示需求填写页面的内容，并前往支付页面 -->
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>订单详情</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="robots" content="all,follow">
		<!-- Bootstrap CSS-->
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<!-- Font Awesome CSS-->
		<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
		<!-- Google fonts - Roboto-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
		<!-- Bootstrap Select-->
		<link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">
		<!-- owl carousel-->
		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
		<link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
		<!-- theme stylesheet-->
		<link rel="stylesheet" href="css/style.group.css" id="theme-stylesheet">
		<!-- Custom stylesheet - for your changes-->
		<link rel="stylesheet" href="css/custom.css">
		<!-- Favicon and apple touch icons-->
		<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
		<link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png">
		<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png">
		<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
		<link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png">
		<link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png">
		<link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png">
		
	</head>
	<body>
		<div id="all">

	
			<section class="bar" style="background-color: #f6f6f6;">
				<div class="container">
					<div class="row" style='margin-top:0'>
						<div class="col-lg-9">
							

							<div name="aspnetForm" id="aspnetForm">

								<div style="vertical-align: middle;" align="center" id="main">
									<div style="margin: 15px 0px;">
										<table style="width: 90%; margin-bottom: 5px;">
											<tr style=" border-bottom: 1px solid #F5F5F5;">
												<td >
													<!-- 标题 -->
													<span id="ctl01_ContentPlaceHolder1_lblFunction" style="font-size: 22px;color: #262626;margin: 40px 350px 30px;display: block;line-height: 28px;">吾问群组服务订单</span>
												</td>
											</tr>
										</table>
										<table cellspacing="0" cellpadding="5" style="margin-left: 30px;margin-top: 10px; width: 90%; font-size: 17px;">
											<tr style=" border-bottom: 1px solid #F5F5F5;height: 50px; text-align: center;">
												<td align="left" style="width:130px;">
													<b>需求问卷</b>
												</td>
												<td align="left">
													<!-- 跳转到问卷 -->
													<div><span id="qid"  name="qid"></span></div>
													
												</td>
											</tr>
											<tr style=" border-bottom: 1px solid #F5F5F5;">
												<td align="left" style="position: relative;">
													<b style="position: absolute;left: 5px;top: 20px;">订单详情</b>
												</td>
												<td align="left">
													<div style="margin-left:0px;">
														<span id="ctl01_ContentPlaceHolder1_lblRequest" class="order-style" style="font-size:14px;">
															<div style="margin-top: 20px;height: 30px;"><span>答卷份数：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
															 	 <span id="Count" name="Count"></span><span>份</span></div>
															
															<div style="height: 30px;"><span>样本要求：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
																<span id="Request" name="Request"></span></div>
																
															<div style="height: 30px;"><span>有效答卷单价：&nbsp;&nbsp;&nbsp;</span>
															<span>￥</span><span id="Price" name="Price" style='font-size:14px;'></span><span>元</span></div>
															
															<div style="height: 30px;"><span><span>订单总金额：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
															  <span>￥</span><span id="Amount" name="Amount"></span><span>元</span></div>
														</span>
													</div>
													<div style="margin-top: 5px; margin-bottom: 15px;">
														<!-- 返回到需求编辑页面 -->
														<input type="button" value="修改要求" onclick="backUpPage()" style="font-size:14px;background:#FFFFFF;border: 1px solid #E8E8E8; color: #262626; padding: 3px 10px;" />
														
													</div>
												</td>
											</tr>

											<tr style=" border-bottom: 1px solid #F5F5F5; height: 60px; text-align: center;">
												<td align="left">
													<b>订单金额</b>
												</td>
												<td align="left">
													<div style="font-size:17px"><b><span>￥</span><span id="Amount2" name="Amount2"></span>元</b></div>
												</td>
											</tr>
										</table>
										<div style=" font-size: 14px; text-align:center;margin: 0 auto 35px;height:80px;text-align: center; overflow: hidden;margin-left: 68px;border-bottom: 1px solid #F5F5F5;line-height: 60px;">
											<div class="pull-left" style="font-size: 17px;font-weight: bold;width: 115px;text-align: left;">现金余额</div>
											<div class="pull-left" style="margin-left: 10px;">
												<!-- 从数据集读取 -->
												
												<span  style="color:#01AD56;font-size:14px;margin-right: 10px;font-weight:bold"><span id="account" name="account"></span><span>元</span></span>
												
												<span id="Balance">本次消费&nbsp;<span id='Cost' name="Cost" style='font-weight:bold;color:#F63;font-size:24px;'></span>&nbsp;元<span
													 style='' id='lblOther'>，还需要充值<span id='Remain' name="Remain" style='font-weight:bold;color:#F63;font-size:24px;'></span>元</span>&nbsp;&nbsp;
											</div>
										</div>
										<div style="clear: both; text-align: center;">
											<span id="ctl01_ContentPlaceHolder1_lblMsg" style="color:Red;"></span>
										</div>
										<div id="ctl01_ContentPlaceHolder1_divMsg" style="font-size: 14px; line-height: 22px;"></div>
										<div style="margin-bottom: 30px;">
											<!-- 返回到我的问卷页面 -->
											<input type="button" value="返回" style="margin-left: 0px; margin-top:8px;margin-right: 8px;width: 60px;height: 36px;" onclick="back()"
											 class="wjxui-btn wjxui-btn-primary vam" />
											<input type="submit" name="ctl01$ContentPlaceHolder1$btnSubmit" value="确认" onclick="check();"
											 id="ctl01_ContentPlaceHolder1_btnSubmit" class="wjxui-btn vam" style="margin-top:8px;font-size: 14px;background-color: #FF6A00;width: 100px;height: 36px;line-height: 36px;border: none;display: inline-block;color: #fff !important; text-align: center;border-radius: 0.125rem;white-space: nowrap;" />
										</div>

									</div>
									 <!-- <input name="ctl01$ContentPlaceHolder1$hidPirce" type="hidden" id="ctl01_ContentPlaceHolder1_hidPirce" value="240" /> --> 

								</div>
							</div>
							
						</div>
					</div>
				</div>

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
		<script src="vendor/jquery/jquery.min.js"></script>
		<script type="text/javascript">
		function back(){
			window.location.href = "myself.jsp";
		}
		</script>
		<script type="text/javascript">
		   var userID = 1;
		
				if(userID != null){
		
					var questionnaireID = 1 ;  //获取问卷id
					if(questionnaireID != null){
						//根据用户id查询用户金币余额
						
						$.ajax({
							url:"UserAccountQueryServlet",
							type:"get",
							dataType:"json",
							async:false,
							data:{
								"userID": userID
							},
							success:function(data){   
								var account =parseInt(data[0]['account'])
								$("#account").append(account)
								
							},
							error:function(error){
								console.log(error)
							}
						})
					}
					else{ 
						alert("无此问卷，请先创建！")
						window.location.href="myself.jsp"}  //用户问卷后台
				}
				else{ 
					alert("请先登录！")
					window.location.href = "register.jsp" }  
		
			</script>
			
		<script type="text/javascript">
				
				var questionid = '123';   //问卷id
				var questiontitle = '123';
				var qcount = 0;       //有效样本数量
				var price = 0 ;     //样本单价
				var amount = 0;      //样本总额
				var request = '123' ;  //样本要求
				var data = getSearch();
		
				function getSearch() {
					
					var obj = {};
					//1. 获取到地址栏中的参数部分
					var search = location.search;
					//2. 需要对地址栏的参数进行解码
					search = decodeURI(search);
					//3. 把?截取掉
					search = search.slice(1);
					var arr = search.split("&");
					arr.forEach(function(item) {
						var key = item.split("=")[0];
						var value = item.split("=")[1];
						obj[key] = value;
				
					});
			
					return obj;
				}
		
				questionid = data.questionid;
				questiontitle = data.title;
				var questionnaire = questiontitle+"(ID:"+questionid+")";
				qcount = data.qcount;
				price = data.price;
				amount = parseInt(data.amount);
				
				request = data.request ;
				var req = JSON.parse(data.req); //转换为json形式
				var reqstr = new Array();   //存储tag信息
				
				for(i in req.tags){
					var value = req.tags[i].tag;
					if(value != null){
						var str = JSON.stringify(req.tags[i]);
					}
					else {
						var str = "NULL";
					}
					reqstr.push(str);
				}
				for(i in reqstr){
				} 
		        $("#qid").append(questionnaire);
				$("#Count").append(qcount);
				$("#Request").append(request);
				$("#Price").append(price);
				$("#Amount").append(amount);
				$("#Amount2").append(amount);
				$("#Cost").append(amount);
				var account = parseInt(document.getElementById("account").innerText);
				
				if(account - amount>=0)
					$("#Remain").append(0);
				else {
					$("#Remain").append(amount-account)
				}
				var diff = account - amount;
				
				function check(){
					var userID = <%=session.getAttribute("userID")%>   //获取用户id
					var questionnaireID = <%=session.getAttribute("questionnaireID")%>
					
					if(diff>=0){  //余额充足
						$("#Remain").append(0);
						
						$.ajax({
							url:"GroupInsertServlet",
							type:"get",
							data:{
								"questionnaireID":questionnaireID,
								"userID":userID,
								"title": questiontitle,
								"gender": reqstr[0],
								"age":reqstr[1],
								"education":reqstr[2],
								"job":reqstr[3],
								"area":reqstr[4],
								"account":diff
							},
							success:function(data){   
								alert("下单成功");
								window.location.href = "myself.jsp"; //跳转到问卷后台
								
							},
							error:function(error){
								alert("订单失败，请核对信息");
								window.location.href= "myself.jsp"; //跳转到问卷后台
								console.log(error)
							}
						})
					}
					else{  //余额不足
						var account = parseInt(document.getElementById("account").innerText);
						$.ajax({
							url:"GroupInsertServlet",
							type:"get",
							data:{
								"questionnaireID":questionnaireID,
								"userID":userID,
								"title": questiontitle,
							    "gender": reqstr[0],
								"age":reqstr[1],
								"education":reqstr[2],
								"job":reqstr[3],
								"area":reqstr[4],
								"account":account
							},
							success:function(data){   
								alert("余额不足，请先支付");
								window.location.href = "group_pay.html"; //跳转到付款页面
								
							},
							error:function(error){
								alert("下单失败");
								window.location.href= "myself.jsp"; //跳转到问卷后台
								console.log(error)
							}
						})
					}
				}
				
				
		</script>
		<script type="text/javascript">
								function Show(divId) {
									var name = document.getElementById(divId);
									if (name.style.display == "none") {
										name.style.display = "";
									} else {
										name.style.display = "none";
									}
								}

								function backUpPage() //返回上一页面
								{
									var Opagetopurl = window.parent.location;
									var pagetopurl = Opagetopurl.toString().toLowerCase();
									if (pagetopurl.indexOf("reportupgrade") != -1) {
										history.go(-2);
									} else {
										history.back();
									}
								}
			</script>
	</body>
</html>
