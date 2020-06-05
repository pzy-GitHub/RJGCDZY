<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>吾问-我的问卷</title>
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
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <style type="text/css">
			.items{
				line-height: 40px;
				/* margin-bottom: 10px; */
			}
			.items b{
				margin-left: 30px;
				text-align: right;
				display: inline-block;
				vertical-align: middle;
				width: 100px;
				font-size: 17px;
				font-weight: 500;
				color: #8c8c8c;
				line-height: 40px;
				margin-right: 20px;
			}
			.items span{	
				text-align: left;
				height: 40px;
				font-size: 14px;
				font-weight: 500;
				line-height: 45px;
				vertical-align: middle;
			}
		</style>
  </head>
  <body>
	  <div id="all">
	  	<!-- Top bar-->
	  	<div class="top-bar">
	  	  <div class="container">
	  	    <div class="row d-flex align-items-center">
	  	      <div class="col-md-6 d-md-block d-none">
	  	        <p>Contact us on 123456@qq.com.</p>
	  	      </div>
	  	    </div>
	  	  </div>
	  	</div>
	  	<!-- Top bar end-->
		
		<!-- 主体 -->
	    <div id="content">
			<div class="container">
				<div class="row bar" style="#f7f7f7">
					<!-- 导航栏 -->
				    <div class="col-md-3">
						<div class="panel panel-default sidebar-menu">
							<div class="panel-body">
								<ul id="pills-tab" role="tablist" class="nav nav-pills nav-justified flex-column text-sm category-menu">
								  <div class="nav-item" style="background-color: rgb(79,191,168)"><a id="create" href="register.jsp" class="nav-link active"><b style="color:white">创建问卷</b></a></div><br>
								  <li class="nav-item"><a id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="True" class="nav-link active">全部问卷</a></li>
								  <li class="nav-item"><a id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false" class="nav-link">个人信息</a></li>
								</ul>
							</div>
						</div>
					</div>
					
					<!-- 展示栏 -->
					<div id="blog-listing-big" class="col-md-9">
						<div id="pills-tabContent" class="tab-content">
						  
						  <!-- 全部问卷 -->
						  <div id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" class="tab-pane fade show active">
							  
						  </div>
						  
						  <!-- 个人信息 -->
						  <div id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" class="tab-pane fade ">
									<h3 style="margin: 10px 330px 20px;">个人信息</h3>
									<div id="content-left" style="width: 300px; float: left;">
									<div class="items">
										<div style="float:left;"><b>昵称:</b><span id="username"></span></div>
										<div style="clear:both;"></div>
									</div>
									<div class="items">
										<b>账号ID:</b><span id="userid"></span>
										<div style="clear:both;"></div>
									</div>
									<div class="items">
										<b>性别:</b><span id="gender"></span>
										<div style="clear:both;"></div>
									</div>
									<div class="items">
										<b>年龄:</b><span id="age"></span>
										<div style="clear:both;"></div>
									</div>
									<div class="items">
										<b>教育水平:</b><span id="edu"></span>
										<div style="clear:both;"></div>
									</div>
									<div class="items" style="margin-bottom: 20px;">
										<b>账户余额:</b><span id="account"></span>
										<div style="clear:both;"></div>
									</div>
									</div>
										<img src="img/pickme.png" width="300px" height="260px" style="margin-left: 150px;"/>
								</div>
						</div>
					</div>
				</div>
			</div>
	    </div>
	  </div>
  </body>
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
    <script type="text/javascript">    
		
			var userID=<%=session.getAttribute("userID")%>;
			if(userID!=null){
				$.ajax({
					async:false,
					url:"QuestionCountServlet",
					type:"get",
					dataType:"json",
					data:{
						"userID":userID,
					},
					success:function(data){ //请求成功时执行该函数
						var n = parseInt(data);
						$.ajax({
							async:false,
							url:"QuestionQuery1Servlet",
							type:"get",
							dataType:"json",
							data:{
								"ID":userID,
								"questionQueryType":1,
							},
							success:function(result){
								for(var i=0; i<n; ++i){
									var index=i+1
									var html='<div class="post"><div class="row"><div class="col-sm-3"><p id="Q'+index+
									'-id" class="author-category">问卷ID:</p></div><div class="col-sm-2"><p id="Q'+index+
									'-status" class="author-category"></p></div><div class="col-sm-3"><p id="Q'+index+
									'-cnt" class="author-category">答卷：</p></div><div class="col-sm-4 text-right"><p id="Q'+index+
									'-time" class="author-category"><a><i class="fa fa-calendar-o"></i></a></p></div></div><h3 id="Q'+index+
									'-title"></h3><br><p class="read-more text-right"><div class="row"><div class="col-sm-2">'+
									'<a id="publish'+index+'" href="javascript:location.reload();" class="btn btn-template-outlined">发布问卷</a></div><div class="col-sm-2">'+
									'<a id="stop'+index+'" href="javascript:location.reload();" class="btn btn-template-outlined">结束填写</a></div><div class="col-sm-2">'+
					  				'<a id="send'+index+'" class="btn btn-template-outlined" style="color:rgb(79,191,168)">发送问卷</a></div><div class="col-sm-2">'+
						  			'<a id="analysis'+index+'" class="btn btn-template-outlined" style="color:rgb(79,191,168)">结果分析</a></div><div class="col-sm-4">'+
									'<a id="delete'+index+'" href="javascript:location.reload();" class="btn btn-template-outlined" style="float:right">删除问卷</a></div></div>'+
									'</p></div><br>'
									
									$("#pills-profile").append(html)
									
									var script = document.createElement("script")
									script.type = "text/javascript"
									var status = result[i]['status']
									if(status==0){
										var s="未发布"
									}else{
										var s="填写中"
									}
									var scriptString = 
									"$('#Q"+index+"-title').append('"+result[i]['title']+"')\n"+
									"$('#Q"+index+"-id').append("+result[i]['questionnaireID']+")\n"+
									"$('#Q"+index+"-cnt').append("+result[i]['cnt']+")\n"+
									"$('#Q"+index+"-time').append('"+result[i]['publishTime']+"')\n"+
									"$('#Q"+index+"-id').val("+result[i]['questionnaireID']+")\n"+
									"$('#Q"+index+"-status').val("+result[i]['status']+")\n"+
									"$('#Q"+index+"-status').append('"+s+"')"+
									"<!-- 发布问卷 -->\n$('#publish"+index+"').click(function(){var userID = 1;"+
									"var questionnaireID = document.getElementById('Q"+index+
									"-id').value;var status = document.getElementById('Q"+index+
									"-status').value;if("+userID+"!=null){if(status == 0){$.ajax({url:'QuestionStatusUpdateServlet',"+
									"type:'get',dataType:'json',data:{'questionnaireID':questionnaireID,'status':1},"+
									"success:function(result){window.open('myself.jsp')},error:function(error){}"+
									"})}else{alert('问卷已在填写中！ ');}}else{window.location.href='register.jsp';}})"+
									"<!-- 结束填写 -->\n$('#stop"+index+"').click(function(){var userID = 1;"+
									"var questionnaireID = document.getElementById('Q"+index+
									"-id').value;var status = document.getElementById('Q"+index+
									"-status').value;if("+userID+"!=null){if(status == 1){$.ajax({url:'QuestionStatusUpdateServlet',"+
									"type:'get',dataType:'json',data:{'questionnaireID':questionnaireID,'status':0},"+
									"success:function(result){window.open('myself.jsp')},error:function(error){}"+
									"})}else{alert('问卷还未发布！ ');}}else{window.location.href='register.jsp';}})"+
									
									"<!-- 发送问卷 -->\n$('#send"+index+"').click(function(){var userID = 1;"+
									"var questionnaireID = document.getElementById('Q"+index+
									"-id').value;var status = document.getElementById('Q"+index+
									"-status').value;"+
									"if("+userID+"!=null){if(status == 1){\n$.ajax({url:'QuestionnaireIDUpdateServlet',"+
									"type:'get',dataType:'json',data:{'questionnaireID':questionnaireID,},"+
									"success:function(result){},error:function(error){}});window.location.href='register.jsp'}else{alert('问卷还未发布！ ');}}else{window.location.href='register.jsp'}"+
									"})"+
									

									"<!-- 结果分析 -->\n$('#analysis"+index+"').click(function(){var userID = 1;"+
									"var questionnaireID = document.getElementById('Q"+index+
									"-id').value;var status = document.getElementById('Q"+index+
									"-status').value;"+
									"if("+userID+"!=null){if(status == 1){\n$.ajax({url:'QuestionnaireIDUpdateServlet',"+
									"type:'get',dataType:'json',data:{'questionnaireID':questionnaireID,},"+
									"success:function(result){},error:function(error){}});window.location.href='register.jsp'}else{alert('问卷还未发布！ ');}}else{window.location.href='register.jsp'}"+
									"})"+
									
									"<!-- 删除问卷 -->\n$('#delete"+index+"').click(function(){var userID = 1;"+
									"var questionnaireID = document.getElementById('Q"+index+
									"-id').value;var status = document.getElementById('Q"+index+
									"-status').value;if("+userID+"!=null){$.ajax({url:'QuestionStatusUpdateServlet',"+
									"type:'get',dataType:'json',data:{'questionnaireID':questionnaireID,'status':-1},"+
									"success:function(result){window.open('myself.jsp')},error:function(error){}"+
									"})}else{window.location.href='register.jsp';}})"
									

									
									
									script.text = scriptString
									$("#pills-profile").append(script)					
								}
							},
							error:function(error){
								
							}
						})	
					},
					error:function(error){
					    console.log(error)
					}	
				})
			}else{
				window.location.href="register.jsp"
			}
			
			$("#pills-profile-tab").click(function(){
				window.location.href="myself.jsp"
			})
		
		
		<!-- 发布问卷 -->
		$("#publish").click(function(){
			var userID = 1;
			var questionnaireID = document.getElementById("Q1-id").value;
			var status = document.getElementById("Q1-status").value;
			if(userID!=null){
				if(status == 0){
					$.ajax({
						url:"QuestionStatusUpdateServlet",
						type:"get",
						dataType:"json",
						data:{
							"questionnaireID":questionnaireID,
							"status":1
						},
						success:function(result){
							window.open("myself.jsp")
						},
						error:function(error){
						}
					})
				}else{
					alert("问卷已在填写中！");
				}
			}else{
				window.location.href="register.jsp";
			}
		})
		
		<!-- 结束填写 -->
		$("#stop").click(function(){
			var userID = 1;
			var questionnaireID = document.getElementById("Q1-id").value;
			var status = document.getElementById("Q1-status").value;
			if(userID!=null){
				if(status == 1){
					$.ajax({
						url:"QuestionStatusUpdateServlet",
						type:"get",
						dataType:"json",
						data:{
							"questionnaireID":questionnaireID,
							"status":0
						},
						success:function(result){
							window.open("myself.jsp")
						},
						error:function(error){
						}
					})
				}else{
					alert("问卷还未发布！");
				}
			}else{
				window.location.href="register.jsp";
			}
		})
		
		<!-- 发送问卷 -->
		$("#send").click(function(){
			var userID = 1;
			var questionnaireID = document.getElementById("Q1-id").value;
			var status = document.getElementById("Q1-status").value;
			if(userID!=null){
				if(status == 1){
					$.ajax({
						url:"QuestionnaireIDUpdateServlet",
						type:"get",
						dataType:"json",
						data:{
							"questionnaireID":questionnaireID,
						},
						success:function(result){
						},
						error:function(error){
						}
					})
					window.location.href="register.jsp";
				}else{
					alert("问卷还未发布！");
				}
			}else{
				window.location.href="register.jsp";
			}
		})
		
		<!-- 结果分析 -->
		$("#analysis").click(function(){
			var userID = 1;
			var questionnaireID = document.getElementById("Q1-id").value;
			var status = document.getElementById("Q1-status").value;
			if(userID!=null){
				if(status == 1){
					alert(questionnaireID);
					alert(status);
					$.ajax({
						url:"QuestionnaireIDUpdateServlet",
						type:"get",
						dataType:"json",
						data:{
							"questionnaireID":questionnaireID,
						},
						success:function(result){
						},
						error:function(error){
						}
					})
					var n = <%=session.getAttribute("questionnaireID")%>;
					console.log(n);
					window.location.href="register.jsp";
				}else{
					alert("问卷还未发布！");
				}
			}else{
				window.location.href="#";
			}
		})
		
		<!-- 删除问卷-->
		$("#delete").click(function(){
			var userID = 1;
			var questionnaireID = document.getElementById("Q1-id").value;
			var status = document.getElementById("Q1-status").value;
			if(userID!=null){
				$.ajax({
					url:"QuestionStatusUpdateServlet",
					type:"get",
					dataType:"json",
					data:{
						"questionnaireID":questionnaireID,
						"status":-1
					},
					success:function(result){
					},
					error:function(error){
					}
				})
			}else{
				window.location.href="register.jsp";
			}
		})    
    
    </script>
    <script type="text/javascript">
		$("#pills-contact-tab").click(function() {
			var userID = <%=session.getAttribute("userID")%>;
			if (userID != null) {
				$.ajax({
					url: "UserAccountQueryServlet",
					type: "get",
					dataType: "json",
					data: {
						"userID": userID
					
					},
					success: function(result) { //请求成功时执行该函数
						var username = result[0]['username'];
						var age_tag = parseInt(result[0]['age'])
						var edu_tag = parseInt(result[0]['education'])
						var gender_tag = parseInt(result[0]['gender'])
						var account =parseInt(result[0]['account'])
						$("#username").append(username)
						$("#userid").append(userID)
						$("#account").append(account)
						//根据tag值判断实际性别
						if(gender_tag == -1)
							$("#gender").append("")
						else if(gender_tag = 0)
							$("#gender").append("男")
							else{
								$("#gender").append("女")
							}
						//根据tag值判断实际年龄区间
						if(age_tag == -1)
							$("#age").append("")
						else if(age_tag == 0)
							$("#age").append("14岁以下")
							else if(age_tag == 1)
								$("#age").append("14~17岁")
								else if(age_tag == 2)
									$("#age").append("18~20岁")
									else if(age_tag == 1)
										$("#age").append("21~24岁")
										else if(age_tag == 1)
											$("#age").append("25~30岁")
											else if(age_tag == 1)
												$("#age").append("31~40岁")
												else if(age_tag == 1)
													$("#age").append("41~60岁")
													else{
														$("#age").append("60岁以上")
													}
						//根据tag值判断实际学历
						if(edu_tag == -1)
							$("#edu").append("")
						else if(age_tag == 0)
							$("#edu").append("小学")
							else if(age_tag == 1)
								$("#edu").append("初中")
								else if(age_tag == 2)
									$("#edu").append("高中")
									else if(age_tag == 1)
										$("#edu").append("中专")
										else if(age_tag == 1)
											$("#edu").append("大专")
											else if(age_tag == 1)
												$("#edu").append("大学")
												else if(age_tag == 1)
													$("#edu").append("研究生")
													else{
														$("#edu").append("博士及以上")
													}
					},
					error: function(error) { //请求失败时执行该函数
						console.log(error) //将错误信息打印到浏览器控制台
					}
				})
			} else {
				window.location.href = "register.jsp"
			}
		})
	</script>
</html>