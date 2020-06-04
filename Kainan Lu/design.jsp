<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>问卷设计</title>
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
    <link rel="stylesheet" href="custom.css">
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
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <div id="all">
      <!-- Top bar-->
      <div class="top-bar">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-md-6 d-md-block d-none">
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-md-end justify-content-between">
                <ul class="list-inline contact-info d-block d-md-none">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
                <ul class="social-custom list-inline">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Top bar end-->
      <!-- Login Modal-->
      <!-- Login modal end-->

      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">问卷设计</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item">Home</a></li>
                <li class="breadcrumb-item active">问卷设计</li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div id="content">
        <div class="container features-buttons">
          <section class="bar">
            <div class="mycontent">
              <div class="row">
                <div class="col-lg-3">
                  <!-- MENUS AND WIDGETS -->
                  <div class="panel panel-default sidebar-menu with-icons">
                    <div class="panel-heading">
                      <h3 class="h4 panel-title">选择题</h3>
                    </div>
                    <div class="panel-body">
                      <button id="scbtn" onclick="singleCh()" type="button" class="btn btn-template-main">单项选择</button><br>
                      <button id="mcbtn" onclick="multipleCh()" type="button" class="btn btn-template-main">多项选择</button><br>
                      <button id="bcbtn" onclick="boxCh()" type="button" class="btn btn-template-main">下拉框选择</button><br>
                    </div>
                    <div class="panel-heading">
                      <h3 class="h4 panel-title">填空题</h3>
                    </div>
                    <div class="panel-body">
                      <button id="txbtn" onclick="text()" type="button" class="btn btn-template-main">单项填空</button><br>
                      <button id="mtbtn" onclick="multipleText()" type="button" class="btn btn-template-main">多项填空</button><br>
                    </div>
                    <div class="panel-heading">
                      <h3 class="h4 panel-title">矩阵题</h3>
                    </div>
                    <div class="panel-body">
                      <button id="mscbtn" onclick="matrixCh()" type="button" class="btn btn-template-main">矩阵单选</button><br>
                      <!-- <button type="button" class="btn btn-template-main">矩阵多选</button><br> -->
                    </div>
                    <div class="panel-heading">
                      <h3 class="h4 panel-title">说明</h3>
                    </div>
                    <div class="panel-body">
                      <button id="exbtn" onclick="explain()" type="button" class="btn btn-template-main">段落说明</button><br>
                    </div>
                  </div>
                </div>
                <div id= "col-lg-9" class="col-lg-9">
                  <div>
                    <div id="save">
                      <button onclick="mySave()" type="button" class="btn btn-info">保存问卷</button>
                    </div>
                    <form id="choosetype">
                      <h4>请选择问卷的类型</h4>
                      <select id="type1" onclick="clickType()">
                        <option>教育培训</option>
                        <option>生活日常</option>
                        <option>市场调研</option>
                      </select>
                      <select id="type2">
                      </select>
                    </form>
                    <hr>
                  </div>
                  <div class="mytitle" id="mytitle">
                    <!-- <a href="#" class="title-btn">问卷标题</a> -->
                    <button id="title-btn" class="title-btn" onclick="atitle()">问卷标题</button>
                    <hr>
                    <div id="titleset" style="display: none;">
                      <h4>请输入问卷标题</h4>
                      <textarea id="tittletext" style="width: 100%;"></textarea>
                      <button onclick="settitle()" type="button" class="btn btn-template-main">保存编辑</button>
                      <hr>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>

    <!-- java script -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="custom.js"></script>
  </body>
</html>