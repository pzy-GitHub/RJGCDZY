<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>吾问-登录</title>
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
    <!-- Favicon and apple touch icons-->
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
      <!-- Top bar-->
      <div class="top-bar">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-md-6 d-md-block d-none">
              <p>Contact us on 123456@qq.com.</p>
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-md-end justify-content-between">
                <ul class="list-inline contact-info d-block d-md-none">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
                <div class="login">
					<a href="#" data-toggle="modal" data-target="#login-modal" class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">登录</span></a>
					<a href="register.jsp" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">注册</span></a>
				</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Top bar end-->
	  <div id="all">
	    <!-- Login Modal-->
	    <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
	      <div role="document" class="modal-dialog">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h4 id="login-modalLabel" class="modal-title">用户登录</h4>
	            <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
	          </div>
	          <div class="modal-body">
	            <form method="get">
	              <div class="form-group">
	                <input id="name_modal" type="text" placeholder="昵称" class="form-control">
	              </div>
	              <div class="form-group">
	                <input id="password_modal" type="password" placeholder="密码" class="form-control">
	              </div>
	              <p class="text-center">
	                <button class="btn btn-template-outlined" onclick="login_modal()"><i class="fa fa-sign-in"></i>登录</button>
	              </p>
	            </form>
	            <p class="text-center text-muted">还没有账户？</p>
	            <p class="text-center text-muted"><a href="register.jsp"><strong>现在注册</strong></a>! 你将拥有更多权限</p>
	          </div>
	        </div>
	      </div>
	    </div>
	    <!-- Login modal end-->
	    
	    <div id="heading-breadcrumbs">
	      <div class="container">
	        <div class="row d-flex align-items-center flex-wrap">
	          <div class="col-md-7">
	            <h1 class="h2">注册 / 登录</h1>
	          </div>
	        </div>
	      </div>
	    </div>
	    <div id="content">
	      <div class="container">
	        <div class="row">
	          <div class="col-lg-6">
	            <div class="box">
	  			  <h2 class="text-uppercase">注册</h2>
	  			  <p class="lead">没有账户？</p>
	  			  <p>我们将会获取您的一些个人信息以推荐更符合您喜好的问卷，您可以选择性填写</p>
	  			  <hr>
	  				  <div class="form-group">
	  				    <label style="color:red">*</label>
	  				    <label for="name-login">昵称</label>
	  				    <input id="name-login" type="text" class="form-control" placeholder="不可重复">
	  				  </div>
	  				  <div class="form-group">
	  				    <label style="color:red">*</label>
	  				    <label for="password-login">密码</label>
	  				    <input id="password-login" type="password" class="form-control" placeholder="不超过16位" onclick= "check()">
	  				  </div>
	  				  <div class="form-group">
	  				    <label for="age-login">年龄</label>
	  				    <br>
	  				    <select id="age-login" class="form-control">
	  				  	  <option value="-1"></option>
	  				  	  <option value="0">14岁以下</option>
	  				  	  <option value="1">14~17岁</option>
	  				  	  <option value="2">18~20岁</option>
	  				  	  <option value="3">21~24岁</option>
	  				  	  <option value="4">25~30岁</option>
	  				  	  <option value="5">31~40岁</option>
	  				  	  <option value="6">41~60岁</option>
	  				  	  <option value="7">60岁以上</option>
	  				    </select>
	  				  </div>
	  				  <div class="form-group">
	  				    <label for="gender-login">性别</label>
	  				    <br>
	  				    <select id="gender-login" class="form-control">
	  				  	  <option value="-1"></option>
	  				  	  <option value="0">男</option>
	  				  	  <option value="1">女</option>
	  				    </select>
	  				  </div>
	  				  <div class="form-group">
	  				    <label for="edu-login">教育水平</label>
	  				    <br>
	  				    <select id="edu-login" class="form-control">
	  				  	  <option value="-1"></option>
	  				  	  <option value="0">小学</option>
	  				  	  <option value="1">初中</option>
	  				  	  <option value="2">高中</option>
	  				  	  <option value="3">中专</option>
	  				  	  <option value="4">大专</option>
	  				  	  <option value="5">大学</option>
	  				  	  <option value="6">研究生</option>
	  				  	  <option value="7">博士及以上</option>
	  				    </select>
	  				  </div>	
	  				  <div class="form-group">
	  				    <label for="job-login">职业</label>
	  				    <br>
	  				    <select id="job-login" class="form-control">
	  				  	  <option value="-1"></option>
	  				  	  <option value="0">学生</option>
	  				  	  <option value="1">IT/互联网</option>
	  				  	  <option value="2">金融</option>
	  				  	  <option value="3">咨询/法律</option>
	  				  	  <option value="4">政府机构</option>
	  				  	  <option value="5">工业/制造</option>
	  				  	  <option value="6">教育/科研</option>
	  				  	  <option value="7">文化/艺术</option>
	  				  	  <option value="8">影视/娱乐</option>
	  				  	  <option value="9">医药/健康</option>
	  				  	  <option value="10">媒体公关</option>
	  				  	  <option value="11">建筑/房产</option>
	  				  	  <option value="12">服务业</option>
	  				  	  <option value="13">个体户</option>
	  				  	  <option value="14">自由职业</option>
	  				  	  <option value="15">其他</option>
	  				    </select>
	  				  </div>
	  				  <div class="form-group">
	  				    <label for="area-login">地区</label>
	  				    <br>
	  				    <select id="area-login" class="form-control">
	  				  	  <option value="-1"></option>
	  				  	  <option value="1">北京</option>
	  				  	  <option value="2">天津</option>
	  				  	  <option value="3">上海</option>
	  				  	  <option value="4">重庆</option>
	  				  	  <option value="5">河北</option>
	  				  	  <option value="6">山西</option>
	  				  	  <option value="7">辽宁</option>
	  				  	  <option value="8">吉林</option>
	  				  	  <option value="9">黑龙江</option>
	  				  	  <option value="10">江苏</option>
	  				  	  <option value="11">浙江</option>
	  				  	  <option value="12">安徽</option>
	  				  	  <option value="13">福建</option>
	  				  	  <option value="14">江西</option>
	  				  	  <option value="15">山东</option>
	  				  	  <option value="16">河南</option>
	  				  	  <option value="17">湖北</option>
	  				  	  <option value="18">湖南</option>
	  				  	  <option value="19">广东</option>
	  				  	  <option value="20">海南</option>
	  				  	  <option value="21">四川</option>
	  				  	  <option value="22">贵州</option>
	  				  	  <option value="23">云南</option>
	  				  	  <option value="24">陕西</option>
	  				  	  <option value="25">甘肃</option>
	  				  	  <option value="26">青海</option>
	  				  	  <option value="27">台湾</option>
	  				  	  <option value="28">内蒙古</option>
	  				  	  <option value="29">西藏</option>
	  				  	  <option value="30">广西</option>
	  				  	  <option value="31">宁夏</option>
	  				  	  <option value="32">新疆</option>
	  				  	  <option value="33">香港</option>
	  				  	  <option value="34">澳门</option>
	  				    </select>
	  				  </div>				  
	  				  <div class="text-center">
	  				    <button class="btn btn-template-outlined" onclick="register()"><i class="fa fa-user-md"></i>提交</button>
	  				  </div>
	            </div>
	          </div>
	          <div class="col-lg-6">
	            <div class="box">
	              <h2 class="text-uppercase">登录</h2>
	  			<p class="lead">已有帐户？</p>
	  			<p>请根据注册时的账号、密码登录</p>
	              <hr>
	              <form>
	                <div class="form-group">
	                  <label for="name">昵称</label>
	                  <input id="name" type="text" class="form-control">
	                </div>
	                <div class="form-group">
	                  <label for="password">密码</label>
	                  <input id="password" type="password" class="form-control">
	                </div>
	                <div class="text-center">
	                  <button class="btn btn-template-outlined" onclick="login()"><i class="fa fa-sign-in"></i>登录</button>
	                </div>
	              </form>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
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
	  <script type="text/javascript">
	      function check(){   //检查昵称是否重复
	    	  var name = document.getElementById("name-login").value;
	    	  if(name.length==0){
				  alert("请输入用户名！"); 
		      }else{
		    	  $.ajax({
		    		  url:"UserQueryServlet",
					  type:"get",
					  dataType:"json",
					  data:{
						  "name":name
					  },
					  success:function(result){
						  if(result=="0"){
							  console.log(result)
						  }else{
							  alert("已存在该用户，请重新设置昵称！")							  
							  window.location.href="register.jsp"
						  }
					  }
		    	  })
		      }
	      }
	      
		  function register(){
			  var account = 0;
			  var name = document.getElementById("name-login").value;
			  var password = document.getElementById("password-login").value;
			  var age = document.getElementById("age-login").value;
			  var education = document.getElementById("edu-login").value;
			  var job = document.getElementById("job-login").value;
			  var area = document.getElementById("area-login").value;
			  var gender = document.getElementById("gender-login").value;
			  
			  if(name.length==0){
				  alert("请输入用户名！");
		      }else if(password.length==0 || password.length>16){
		    	  alert("密码不能为空或超过16位！")
		      }else{
		    	  $.ajax({
		    		  async:false,
					  url:"UserUpdateServlet",
					  type:"get",
					  data:{
						  "username":name,
						  "password":password,
						  "age":age,
						  "education":education,
						  "job":job,
						  "area":area,
						  "gender":gender,
						  "account":account
					  },
					  success:function(result){
						  alert("注册成功")
						  window.open("register.jsp")
					  },
					  error:function(error){
						  alert("注册失败")
						  console.log(error)
					  }
				  })
		      }
			  
			  
		  }

		  function login(){
			  var name = document.getElementById("name").value;
			  var password = document.getElementById("password").value;
			  
			  if(name.length==0){
				  alert("请输入用户名！"); 
		      }else if(password.length==0 || password.length>16){
		    	  alert("密码不能为空或超过16位！")
		      }else{
		    	  $.ajax({
		    		  async:false,
					  url:"UserQueryServlet",
					  type:"get",
					  dataType:"json",
					  data:{
						  "name":name
					  },
					  success:function(result){
						  if(result=="0"){
							  alert("请先注册")
						  }else{
							  var right_pw = result[0]['password']
							  if(right_pw!=password){
								  alert("密码不正确,请重新输入！")
							  }else{
								  var id = result[0]['userID']
								  $.ajax({
									  async:false,
									  url:"UserIDUpdateServlet",
									  type:"get",
									  data:{
										  "userID":id
									  },
									  success:function(result){
										  alert("登录成功！")
										  window.open("myself.jsp")
									  },
									  error:function(error){
										  alert("咋回事")
										  console.log(error)
									  }
								  })
							  }
						  }			  						  
					  },
					  error:function(error){
						  console.log(error)
					  }
				  })
		      }
		  }
		  
		  function login_modal(){
			  var name = document.getElementById("name_modal").value;
			  var password = document.getElementById("password_modal").value;
			  
			  if(name.length==0){
				  alert("请输入用户名！"); 
		      }else if(password.length==0 || password.length>16){
		    	  alert("密码不能为空或超过16位！")
		      }else{
		    	  $.ajax({
		    		  async:false,
					  url:"UserQueryServlet",
					  type:"get",
					  dataType:"json",
					  data:{
						  "name":name
					  },
					  success:function(result){
						  if(result=="0"){
							  alert("请先注册")
						  }else{
							  var right_pw = result[0]['password']
							  if(right_pw!=password){
								  alert("密码不正确,请重新输入！")
							  }else{
								  var id = result[0]['userID']
								  $.ajax({
									  async:false,
									  url:"UserIDUpdateServlet",
									  type:"get",
									  data:{
										  "userID":id
									  },
									  success:function(result){
										  alert("登录成功！")
										  window.open("myself.jsp")
									  },
									  error:function(error){
										  alert("咋回事")
										  console.log(error)
									  }
								  })
							  }
						  }			  						  
					  },
					  error:function(error){
						  console.log(error)
					  }
				  })
		      }
		  }
	  </script>
  </body>
</html>