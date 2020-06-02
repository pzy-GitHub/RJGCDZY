<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <title>问卷填写 <%request.getParameter("questionnaireID"); %></title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/line-icons.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/nivo-lightbox.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/color-switcher.css">
    <link rel="stylesheet" href="css/menu_sideslide.css">
    <link rel="stylesheet" href="css/main.css">    
    <link rel="stylesheet" href="css/responsive.css">
    <script type="text/javascript" src="js/jquery-min.js"></script>
    <script type="text/javascript" src="js/vue.min.js"></script>
    <style>
    button:active{        
    color:yellow;        
    transform:scale(0.80);        
    -ms-transform:rotate(0.80); 	/* IE 9 */       
    -moz-transform:rotate(0.80); 	/* Firefox */        
    -webkit-transform:rotate(0.80); /* Safari 和 Chrome */        
    -o-transform:rotate(0.80); 	/* Opera */    
    }
    </style>
  </head>
  <body>
    <!-- Header Section Start -->
    <header id="slider-area">  
      <nav class="navbar navbar-expand-md fixed-top scrolling-navbar bg-white">
        <div class="container">          
          <a class="navbar-brand" href="index.html"><span class="lni-bulb"></span>吾问</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <i class="lni-menu"></i>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto w-100 justify-content-end">
              <li class="nav-item">
                <a class="nav-link page-scroll" href="#slider-area">Title</a>
              </li>    
              <li class="nav-item">
                <a class="nav-link page-scroll" href="#subscribe">Questionnaire</a>
              </li>
              <li class="nav-item">
                <a class="nav-link page-scroll" href="#blog">Others</a>
              </li> 
            </ul>              
          </div>
        </div>
      </nav> 

      <!-- Main Carousel Section -->
      <div id="carousel-area">
        <div id="carousel-slider" class="carousel slide carousel-fade" data-ride="carousel">
          <ol class="carousel-indicators">
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img src="img/slider/bg-1.jpg" alt="" id="back">
              <div class="carousel-caption text-left">
                <h3 class="wow fadeInRight" data-wow-delay="0.2s">Questionnaire</h1>  
                <h2 class="wow fadeInRight" data-wow-delay="0.4s" id='title1'></h2>
                <h4 class="wow fadeInRight" data-wow-delay="0.6s" id='title2'></h4>
                <a href="#" class="btn btn-lg btn-common btn-effect wow fadeInRight" data-wow-delay="0.9s" id="like">like</a>
                <a href="#" class="btn btn-lg btn-border wow fadeInRight" data-wow-delay="1.2s" id="dislike">Dislike</a>
              </div>
            </div>
          </div>
        </div>
      </div>  

    </header>
    <!-- Header Section End --> 

    <!-- Call to Action Start -->
    <section class="call-action section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-10">
            <div class="cta-trial text-center">
              <h3>Are You Ready To Get Started?</h3>
              <p>lets get start to your trip to this Questionnaire!</p>
              <a href="#" class="btn btn-common btn-effect" id="start_button">Start Now!</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Call to Action End -->
    
	<div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>

    <!-- Subcribe Section Start -->
    <div id="subscribe" class="section">
      <div class="container">
        <div class="row justify-content-between" id="questionparent">          
        </div>
      </div>
    </div>
    <!-- Subcribe Section End -->
    
    <!-- Counter Section Start -->
    <div class="counters section bg-defult">
      <div class="container">
        <div class="row"> 
          <div class="col-sm-6 col-md-6 col-lg-3">
            <div class="facts-item"> 
              <div class="icon">
                <i class="lni-rocket"></i>
              </div>                
              <div class="fact-count">
                <h3><span class="counter" id="year"></span></h3>
                <h4>Year</h4>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-3">
            <div class="facts-item">
              <div class="icon">
                <i class="lni-coffee-cup"></i>
              </div>                
              <div class="fact-count">
                <h3><span class="counter" id="month"></span></h3>
                <h4>Month</h4>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-3">
            <div class="facts-item">
              <div class="icon">
                <i class="lni-user"></i>
              </div>                
              <div class="fact-count">
                <h3><span class="counter" id="date"></span></h3>
                <h4>Day</h4>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-3">
            <div class="facts-item">
              <div class="icon">
                <i class="lni-heart"></i>
              </div>                
              <div class="fact-count">
                <h3><span class="counter" id="timer"></span></h3>
                <h4>填写时长</h4>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div align="center" style="margin:20px 0 0 0;">
          <a href="#" class="btn btn-border" id="submit">Submit</a>
      </div>
    </div>
    <!-- Counter Section End -->

    <!-- Call To Action Section Start -->
    <section id="cta" class="section" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-xs-12">            
            <div class="cta-text">
              <h5>Don't wanna fill in a questionnaire? Download a free dataset for yourself!</h5>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-xs-12 text-right">
            <a href="buy.jsp" class="btn btn-border">Download</a>
          </div>
        </div>
      </div>
    </section>
    <!-- Call To Action Section End -->

    <!-- Blog Section -->
    <section id="blog" class="section">
      <!-- Container Starts -->
      <div class="container">
        <div class="section-header">          
          <h2 class="section-title">Other Questionnaire by same author</h2>
          <span>Other Questionnaire by same author</span>
          <p class="section-subtitle">You can fill in more interesting and wonderful questionnaires!</p>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 col-xs-12 blog-item">
            <!-- Blog Item Starts -->
            <div class="blog-item-wrapper">
              <div class="blog-item-img">
                <a href="#" id="img0">
                  <img src="img/blog/img1.jpg" alt="">
                </a>                
              </div>
              <div class="blog-item-text"> 
                <div class="date" id="date1"><i class="lni-calendar"></i>XX XXXX, 2020</div>
                <h3><a href="#" id='a1'>Coming Soon</a></h3>
                <div class="meta-tags">
                  <span><a href="#"><i class="lni-eye"></i> 4.5k Views</a></span>
                  <span><a href="#"><i class="lni-bubble"></i> 07</a></span>
                  <span><a href="#"><i class="lni-reply"></i> 332</a></span>
                </div>
              </div>
            </div>
            <!-- Blog Item Wrapper Ends-->
          </div>

          <div class="col-lg-4 col-md-6 col-xs-12 blog-item">
            <!-- Blog Item Starts -->
            <div class="blog-item-wrapper">
              <div class="blog-item-img">
                <a href="#" id="img1">
                  <img src="img/blog/img2.jpg" alt="">
                </a>                
              </div>
              <div class="blog-item-text"> 
                <div class="date" id="date2"><i class="lni-calendar"></i>XX XXXX, 2020</div>
                <h3><a href="#" id="a2">Coming Soon</a></h3>
                <div class="meta-tags">
                  <span><a href="#"><i class="lni-eye"></i> 4.5k Views</a></span>
                  <span><a href="#"><i class="lni-bubble"></i> 07</a></span>
                  <span><a href="#"><i class="lni-reply"></i> 332</a></span>
                </div>
              </div>
            </div>
            <!-- Blog Item Wrapper Ends-->
          </div>

          <div class="col-lg-4 col-md-6 col-xs-12 blog-item">
            <!-- Blog Item Starts -->
            <div class="blog-item-wrapper">
              <div class="blog-item-img">
                <a href="#" id="img2">
                  <img src="img/blog/img3.jpg" alt="">
                </a>                
              </div>
              <div class="blog-item-text"> 
                <div class="date" id="date3"><i class="lni-calendar"></i>XX XXXX, 2020</div>
                <h3><a href="#" id="a3">Coming Soon</a></h3>
                <div class="meta-tags">
                  <span><a href="#"><i class="lni-eye"></i> 4.5k Views</a></span>
                  <span><a href="#"><i class="lni-bubble"></i> 07</a></span>
                  <span><a href="#"><i class="lni-reply"></i> 332</a></span>
                </div>
              </div>
            </div>
            <!-- Blog Item Wrapper Ends-->
          </div>
        </div>
      </div>
    </section>
    <!-- blog Section End -->

    <!-- Footer Section Start -->
    <footer>
      <!-- Footer Area Start -->
      <section class="footer-Content">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <h3>Essence</h3>
              <div class="textwidget">
                <p>If you think you have the passion, 
                attitude and capability to join us 
                the next big software company
                s so that we can get the convers.</p>
              </div>
              <ul class="footer-social">
                <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                <li><a class="linkedin" href="#"><i class="lni-linkedin-fill"></i></a></li>
                <li><a class="google-plus" href="#"><i class="lni-google-plus"></i></a></li>
              </ul> 
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">
                <h3 class="block-title">Short Link</h3>
                <ul class="menu">
                  <li><a href="#">Service</a></li>
                  <li><a href="#">Wishlist</a></li>
                  <li><a href="#">FAQ</a></li>
                  <li><a href="#">Advance Sarch</a></li>
                  <li><a href="#">Site Map</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">
                <h3 class="block-title">Contact Us</h3>
                <ul class="contact-footer">
                  <li>
                    <strong>Address :</strong> <span>1900 Pico Blvd, New York br Centernial, colorado</span>
                  </li>
                  <li>
                    <strong>Phone :</strong> <span>+48 123 456 789</span>
                  </li>
                  <li>
                    <strong>E-mail :</strong> <span><a href="#">info@example.com</a></span>
                  </li>
                </ul> 
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">
                <h3 class="block-title">Instagram</h3>
                <ul class="instagram-footer">
                  <li><a href="#"><img src="img/instagram/insta1.jpg" alt=""></a></li>
                  <li><a href="#"><img src="img/instagram/insta2.jpg" alt=""></a></li>
                  <li><a href="#"><img src="img/instagram/insta3.jpg" alt=""></a></li>
                  <li><a href="#"><img src="img/instagram/insta4.jpg" alt=""></a></li>
                  <li><a href="#"><img src="img/instagram/insta5.jpg" alt=""></a></li>
                  <li><a href="#"><img src="img/instagram/insta6.jpg" alt=""></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Footer area End -->
      
      <!-- Copyright Start  -->
      <div id="copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="site-info float-left">
                <p>MyQuestionnaire <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">吾问</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">问卷填写网站</a></p>
              </div>              
              <div class="float-right">  
                <ul class="nav nav-inline">
                  <li class="nav-item">
                    <a class="nav-link active" href="#">About Prime</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">TOS</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Return Policy</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">FAQ</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright End -->

    </footer>
    <!-- Footer Section End --> 

    <!-- Go To Top Link -->
    <a href="#" class="back-to-top">
      <i class="lni-arrow-up"></i>
    </a>

    <div id="loader">
      <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
      </div>
    </div>    

    <!-- jQuery first, then Tether, then Bootstrap JS. -->
    <script src="js/jquery-min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/color-switcher.js"></script>
    <script src="js/jquery.mixitup.js"></script>
    <script src="js/nivo-lightbox.js"></script>
    <script src="js/owl.carousel.js"></script>    
    <script src="js/jquery.stellar.min.js"></script>    
    <script src="js/jquery.nav.js"></script>    
    <script src="js/scrolling-nav.js"></script>    
    <script src="js/jquery.easing.min.js"></script>     
    <script src="js/wow.js"></script> 
    <script src="js/jquery.vide.js"></script>
    <script src="js/jquery.counterup.min.js"></script>    
    <script src="js/jquery.magnific-popup.min.js"></script>    
    <script src="js/waypoints.min.js"></script>    
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>   
    <script src="js/main.js"></script>
  
  </body>
  
<script>
var hour = 0;
var minute = 0;
var second = 0;
var timuset = [];
var danxuanti = [];
var like = 0;
var __second = 0;

function getTime(){
	var hour = '';
	var minute = '';
	var second = '';
	window.second = window.second + 1;
	
	if(window.second == 61){
		window.second = 0;
		window.minute = window.minute + 1;
	}
	if(window.minute == 61){
		window.minute = 0;
		window.hour = window.hour + 1;
	}
	if(window.hour.toString().length<2){
		hour = '0' + window.hour.toString();
	} else{
		hour = window.hour.toString();
	}
	if(window.minute.toString().length<2){
		minute = '0' + window.minute.toString();
	} else{
		minute = window.minute.toString();
	}
	if(window.second.toString().length<2){
		second = '0' + window.second.toString();
	} else{
		second = window.second.toString();
	}
	//console.log(second);
	//console.log(window.second);
	str = hour + ":" + minute + ":" + second;
}

function setTimer(){
	getTime();
	mtimer = document.getElementById("timer");
	mtimer.innerHTML = str;
	__second++;
}

function displayData(){
	//document.getElementById('back').src = 'img/slider/bg-' + num + '.jpg'
	$("#questionparent").empty();
	var d = new Date();
	document.getElementById("year").innerHTML = d.getFullYear();
	document.getElementById("month").innerHTML = d.getMonth()+1;
	document.getElementById("date").innerHTML = d.getDate();
	$.ajax({
		url: "QuestionQueryServlet",
		type: "post",
		async: false,
		data: {
			ID: "${param.questionnaireID}",
			questionQueryType: "2"
		},
		success: function(data){
			for(var i=0;i<data.length;i++){
				new WOW().init();
				title1 = document.getElementById('title1');
				title1.innerHTML = data[i].title;
				title2 = document.getElementById('title2');
				title2.innerHTML = '发布时间 ' + data[i].publishTime;
				var j = 0;
				var content = JSON.parse(data[i].content);
				var questionlist = content["questionlist"]
				console.log(questionlist[1]["content"]);
				//var data_wow_delay = 10;
				while(j < questionlist.length){
					var timu = new Object();
					timu.type = questionlist[j]["type"];
					// 问卷开头
			        var parent = document.getElementById("questionparent");
			        // div格式
				    var div1 = document.createElement("div");
			        div1.style.margin = "3%";
				    div1.className = "col-lg-5 col-md-12 col-xs-12";			    
			        parent.appendChild(div1);
				    var div2 = document.createElement("div");
				    div2.className = "subscribe-form";
				    div1.appendChild(div2);
				    var div3 = document.createElement("div");
				    div3.className = "form-wrapper";
				    //div3.setAttribute("data_wow_delay", data_wow_delay + 's');
				    //div3.setAttribute("animation-duration", "2s");
				    //div3.setAttribute("animation-delay", "0.6s");
				    //data_wow_delay += 0.3;
				    div2.appendChild(div3);
				    // 进入题目块
				    var div4 = document.createElement("div")
				    div4.className = "sub-title text-center";
				    div3.appendChild(div4);
				    var title = document.createElement("h4");
				    console.log(j);
				    if(questionlist[j]["type"] == "解释"){
				    	var node_title = document.createTextNode("No." + j + " Explanation");
				    } else {
				    	var node_title = document.createTextNode("Q" + j + ": " + questionlist[j]["content"])
				    }
				    if(questionlist[j]["type"] == "多项选择"){
				    	var node_title = document.createTextNode("Q" + j + ": " + questionlist[j]["content"] + "[多选]")
				    	
				    }
				    title.appendChild(node_title);
				    div4.appendChild(title);
				    var form = document.createElement("form");
				    div3.appendChild(form)
				    if(questionlist[j]["type"] == "单项选择" || questionlist[j]["type"] == "多项选择"){		
				    	timu.timuid = [];
				    	if(questionlist[j]["type"] == "单项选择"){
				    		var thisdanxuan = [];
				    	}
				    	for(var index=0;index<questionlist[j]["option"].length;index++){
				    		var row = document.createElement("div");
				    		row.className = "row";
				    		var row2 = document.createElement("div");
				    		row2.className = "col-12 form-line";
				    		var row3 = document.createElement("div");
				    		row3.className = "form-group";
				    		row.appendChild(row2);
				    		row2.appendChild(row3);
				    		var button = document.createElement("button");
				    		button.type = "button";
				    		button.className = "btn btn-default btn-lg btn-block";
				    		var option_content = document.createTextNode(questionlist[j]["option"][index]);
				    		button.appendChild(option_content);
				    		button.id = "question" + questionlist[j]["index"] + index;
				    		timu.timuid.push(button.id);
				    		console.log(timu.sub);
				    		if(questionlist[j]["type"] == "单项选择"){
				    			thisdanxuan.push(button.id);
					    	}
				    		button.style.color = "black";
				    		button.style.margin = "5px";
				    		row3.appendChild(button);
				    		form.appendChild(row);
				    	}
				    	if(questionlist[j]["type"] == "单项选择"){
				    		danxuanti.push(thisdanxuan);
					    	console.log(danxuanti)
				    	}
				    } else if(questionlist[j]["type"] == "单项填空"){
				    	var row = document.createElement("div");
			    		row.className = "row";
			    		var row2 = document.createElement("div");
			    		row2.className = "col-12 form-line";
			    		var row3 = document.createElement("div");
			    		row3.className = "form-group";
			    		row.appendChild(row2);
			    		row2.appendChild(row3);
			    		var input = document.createElement("input");
			    		input.type = "text";
			    		input.className = "form-control";
			    		input.id = "question" + questionlist[j]["index"];
			    		row3.appendChild(input);
			    		form.appendChild(row);
			    		timu.timuid = "question" + questionlist[j]["index"];
				    } else if(questionlist[j]["type"] == "下拉菜单"){
				    	var row = document.createElement("div");
			    		row.className = "row";
			    		var row2 = document.createElement("div");
			    		row2.className = "col-12 form-line";
			    		var row3 = document.createElement("div");
			    		row3.className = "form-group";
			    		row.appendChild(row2);
			    		row2.appendChild(row3);
			    		var select = document.createElement("select");
			    		select.id = "question" + questionlist[j]["index"];
			    		select.className = "dropdown-menu-right"
			    		row3.appendChild(select);
			    		select.style.width = "60%";
			    		select.style.margin = "0 20%";
			    		for(var index=0;index<questionlist[j]["option"].length;index++){
			    		    var option = document.createElement('option');
			    		    option.value = questionlist[j]["option"][index];
			    		    option.innerHTML = questionlist[j]["option"][index];
			    		    select.appendChild(option);
			    		}
			    		form.appendChild(row);
			    		timu.timuid = "question" + questionlist[j]["index"];
				    } else if(questionlist[j]["type"] == "多项填空"){
				    	//div3.style.width = "100%";
				    	//div3.style.height = "100%";
				    	timu.timuid = [];
				    	for(var index=0;index<questionlist[j]["questionlist"].length;index++){
				    		var row = document.createElement("div");
				    		row.className = "row";
				    		var row2 = document.createElement("div");
				    		row2.className = "col-12 form-line";
				    		var row3 = document.createElement("div");
				    		row3.className = "form-group";
				    		row.appendChild(row2);
				    		row2.appendChild(row3);
				    		var input = document.createElement("input");
				    		input.type = "text";
				    		input.className = "form-control";
				    		input.id = "question" + questionlist[j]["index"] + index;
				    		input.style.margin = "5px";
				    		input.placeholder = questionlist[j]["questionlist"][index]["content"];
				    		row3.appendChild(input);
				    		form.appendChild(row);
				    		timu.timuid.push(input.id);
				    	} 
				    } else if(questionlist[j]["type"] == "解释"){
			    		var div_text = document.createElement("div");
			    		div_text.className = "text-box";
			    		var p = document.createElement("p");
			    		p.innerHTML = questionlist[j]["content"];
			    		div_text.appendChild(p);
			    		form.appendChild(div_text);
			    	} else if(questionlist[j]["type"] == "矩阵单选"){
			    		//form.style.position = "absolute";
			    		//var height_form = questionlist[j]["subtitle"].length *100;
			    		//var width_form = 100;
			    		//form.style.width = width_form + "%";
			    		//form.style.height = height_form + "px";
			    		//var div_question = document.createElement("div");
			    		//div_question.style.padding = "0 0 0 40%";
			    		//div_question.style.position = "absolute";
			    		//form.appendChild(div_question);
			    		//div_question.style.width = "100%";
			    		//div_question.style.height = "20%";
			    		timu.timuid = []
			    		var tr1 = document.createElement("tr");
			    		var td = document.createElement("td");
			    		var biaotou = document.createTextNode("");
			    		var table = document.createElement("table");
			    		td.appendChild(biaotou);
			    		td.style.padding = "0 10px 0 10px"
			    		form.appendChild(table);
			    		tr1.appendChild(td)
			    		table.style.padding = "10px";
			    		table.align = "center"
			    		for(var option_index=0;option_index<questionlist[j]["option"].length;option_index++){
			    			var td = document.createElement("td");
			    			var pB = document.createElement("B");
		    				//pB.style.float = "right";
		    				//pB.style.position = "absolute";
		    				//var rest = 60 - 4*questionlist[j]["option"].length;
		    				//var width = 60/(questionlist[j]["option"].length);
		    				//pB.style.width = width + "%";
		    				//if(option_index%2==0){
		    				//pB.style.margin = "0 " + width + "% 0 0";
		    				//} else {
		    					//pB.style.margin = "0 0 0 " + width + "%";
		    				//}		    				
		    				pB.innerHTML = questionlist[j]["option"][option_index];
		    				//div_question.appendChild(pB);
		    				tr1.appendChild(td);
		    				td.appendChild(pB);
		    				td.style.padding = "0 10px 0 10px"
		    				table.appendChild(tr1);
		    				//td.padding = "10";
		    			}
			    		//form.appendChild(div_question);
			    		for(var title_index=0;title_index<questionlist[j]["subtitle"].length;title_index++){
			    			var timu_j = []
			    			//var div_content = document.createElement("div");
			    			//form.appendChild(div_content);
			    			//var height = 80 / title_index<questionlist[j]["subtitle"].length;
			    			//div_content.style.position = "absolute";
			    			//div_content.style.width = "100%";
			    			//div_content.style.height = height + "%";
			    			var tr = document.createElement("tr");
			    			var subtitle = document.createElement("td");
			    			var title = document.createTextNode(questionlist[j]["subtitle"][title_index])
			    			//subtitle.appendChild(title);
			    			//subtitle.style.float = "left";
			    			//subtitle.style.position = "absolute";
			    			//subtitle.style.left = "0%";
			    			//subtitle.style.width = "38%";
			    			//subtitle.style.margin = "2%";
			    			subtitle.appendChild(title);
			    			tr.appendChild(subtitle);
			    			td.style.padding = "0 10px 0 10px"
			    			//subtitle.padding = "10";
			    			//var length = 40;
			    			for(var option_index=0;option_index<questionlist[j]["option"].length;option_index++){
			    				var td = document.createElement("td");
			    				var input = document.createElement("input");
			    				//input.style.float = "left";
			    				td.appendChild(input);
			    				//input.style.position = "absolute";
			    				//var offset;
			    				//if(3-questionlist[j]["option"].length>0){
			    				//	offset = 3-questionlist[j]["option"].length;
			    				//} else {
			    				//	offset = 0;
			    				//}
			    				//var part = length/questionlist[j]["option"].length - (option_index+1)*offset;
			    				//input.style.margin = "5% " + part + "% 4% 0";
			    				//input.style.margin = "5% 0 5% 0";
			    				//input.style.width = length/questionlist[j]["option"].length + "%";
			    				input.name = questionlist[j]["option"][title_index];
			    				input.value = questionlist[j]["option"][option_index];
			    				input.type = "radio";
			    				input.id = title_index*questionlist[j]["option"].length + option_index;
			    				timu_j.push(input.id)
			    				//var rest = 60 - 2*questionlist[j]["option"].length;
			    				//var pad = option_index*3 + 3;
			    				//input.style.padding = "0 0 0 " + pad + "%";
			    				//div_content.appendChild(input);
			    				tr.appendChild(td);
			    				td.align = "center"
			    				td.style.padding = "0 10px 0 10px"
			    				//td.padding = "10";
			    			}	
			    		    table.appendChild(tr);
			    		    timu.timuid.push(timu_j);
			    		}
			    		//form.appendChild(div_question);
			    	}
				    j++;
				    timuset.push(timu);
				    console.log(timuset);
				}
			}
		}, 
		error: function(data){
			alert("读取失败！");
		}
	});
	terval = setInterval(setTimer, 1000);
	$.ajax({
		url: "QuestionQueryOtherServlet",
		type: "post",
		async: false,
		data: {
			ID: "${param.questionnaireID}",
			questionQueryType: "2"
		},
		success: function(data){
			if(data.length>=3){
				var len = 3;
			} else {
				var len = data.length;
			}	
			for(var i=0;i<len;i++){
				var num = i+1;
				var name = 'a' + num;
				console.log(name);
			    document.getElementById(name).innerHTML = data[i].title;
			    document.getElementById('date'+num).innerHTML = data[i].publishTime;
			    document.getElementById(name).href = "WriteQuestionnaire.jsp?questionnaireID=" + data[i].questionnaireID;
			    document.getElementById('img'+i).href = "WriteQuestionnaire.jsp?questionnaireID=" + data[i].questionnaireID;
			    
			}
		}, 
		error: function(data){
			alert("读取失败！");
		}
	});
}

displayData();

$(document).ready(function() {
    $("#start_button").click(function() {
        $('html, body').animate({
            scrollTop: $("#subscribe").offset().top
        }, 1000);
    });
});

$("button.btn").click(function() {
	if(this.style.backgroundColor == "rgb(249, 119, 148)"){
		this.style.backgroundColor = "#EFEFEF";
		//$(this).css({'background-color' : 'yellow'});
	} else {
		for(var i=0;i<danxuanti.length;i++){
			if(danxuanti[i].indexOf(this.id)!=-1){
				for(var j=0;j<danxuanti[i].length;j++){
					//console.log(danxuanti[i][j])
					document.getElementById(danxuanti[i][j]).style.backgroundColor = "#EFEFEF";
				}
				break;
			}
		}
		this.style.backgroundColor = "#F97794";
	}
});

$("#like").click(function(){
	/*$.ajax({
		url: "likeservlet",
		type: "post",
		async: false,
		data: {
			ID: "${param.questionnaireID}",
			like: "1"
		},
		success: function(data){
			window.alert("您赞了本篇问卷！");
		},
		error: function(data){
			alert("读取失败！");
		}
	    });*/
	like = 1;
	window.alert("您赞了本篇问卷！");
});

$("#dislike").click(function(){
	$.ajax({
		url: "likeservlet",
		type: "post",
		async: false,
		data: {
			ID: "${param.questionnaireID}",
			like: "-1"
		},
		success: function(data){
			window.alert("您踩了本篇问卷！");
			console.log("${sessionScope.like}")
		},
		error: function(data){
			alert("读取失败！");
		}
	    });
	like = -1;
	window.alert("您赞了本篇问卷！");
});

$("#submit").click(function(){
	var userID;
	if("${sessionScope.userID}"){
		userID = "${sessionScope.userID}";
	} else {
		userID = "0";
	}
	console.log(userID);
	var resultset = new Object();
	var flag = true;
	resultset.answerlist = [];
	for(var i=0;i<timuset.length;i++){
		var answer = new Object();
		answer.index = i+1;
		if(timuset[i].type == '单项填空'){
			answer.answer = document.getElementById(timuset[i].timuid).value
			if(answer.answer == ""){
				flag = false;
			}
		} else if(timuset[i].type == '单项选择'){
			for(var j=0;j<timuset[i].timuid.length;j++){
				if(document.getElementById(timuset[i].timuid[j]).style.backgroundColor == "rgb(249, 119, 148)"){
					break;
				}
			}
			answer.answer = j;
			if(answer.answer == timuset[i].timuid.length){
				flag = false;
			}
		} else if(timuset[i].type == '多项选择'){
			answer.answer = []
			for(var j=0;j<timuset[i].timuid.length;j++){
				if(document.getElementById(timuset[i].timuid[j]).style.backgroundColor == "rgb(249, 119, 148)"){
					answer.answer.push(j);
				}
			}
			if(answer.answer.length == 0){
				flag = false;
			}
		} else if(timuset[i].type == '多项填空'){
			answer.answer = []
			for(var j=0;j<timuset[i].timuid.length;j++){
				//var subanswer = new Object();
				//subanswer.index = j+1;
				answer.answer.push(document.getElementById(timuset[i].timuid[j]).value);
			}
			if(answer.answer.length < timuset[i].timuid.length){
				flag = false;
			}
		} else if(timuset[i].type == '下拉菜单'){
			answer.answer = document.getElementById(timuset[i].timuid).value;
		} else if(timuset[i].type == '矩阵单选'){
			answer.answer = [];
			for(var j=0;j<timuset[i].timuid.length;j++){
				//alert(j);
				for(var w=0;w<timuset[i].timuid[j].length;w++){
					//alert(w);
					if(document.getElementById(timuset[i].timuid[j][w]).checked){
						answer.answer.push(parseInt(timuset[i].timuid[j][w])-j*timuset[i].timuid[j].length);
						//alert(parseInt(timuset[i].timuid[j][w])-j);
						break;
					}
				}
			}
			if(answer.answer.length < timuset[i].timuid.length){
				flag = false;
			}
		} 
		resultset.answerlist.push(answer)
	}
	
	/*var like;
	if("${sessionScope.like}" == null){
		like = 0;
	} else if("${sessionScope.like}" == '1'){
		like = 1;
	} else {
		like = -1;
	}*/
	
	//var theDate = new Date(document.getElementById("timer").innerHTML);
	//var _hour = theDate.getHours();
	//var _minute = theDate.getMinutes();
	//var _second = theDate.getSeconds();
	//var time = _hour*3600+_minute*60+_second;
	//var time1 = new Date("2020-04-20" + $("#timer").val()).getTime();
	//var time2 = new Date("2020-04-20 00:00:00").getTime();
	//var time = time1 - time2;
	//alert(__second);
	
	var date=new Date();   
	var year=date.getFullYear(); //获取当前年份   
	var month=date.getMonth()+1; //获取当前月份   
	var dat=date.getDate(); //获取当前日   
	var day=date.getDay(); //获取当前星期几   
	var __hour=date.getHours(); //获取小时   
	var __minutes=date.getMinutes(); //获取分钟   
	var second=date.getSeconds(); //获取秒   
	var timer;    
	if(__hour<10){
		__hour = "0"+hour;
	}
	if(__minutes<10){
		__minutes = "0"+minute;
	}
	var new_timer=year+'.'+month+'.'+dat+' '+__hour+':'+__minutes;
    console.log(resultset);
    
    console.log(__second);
    console.log(new_timer);
    
    if(flag){
    	$.ajax({
    		url: "AnswerUpdateServlet",
    		type: "post",
    		async: false,
    		data: {
    			questionnaireID: "${param.questionnaireID}",
    			userID: userID,
    			feedback: like,
    			content: JSON.stringify(resultset),
    			status: '1',
    			submitTime: new_timer,
    			timeForWriting: __second
    		},
    		success: function(data){
    			alert("提交成功！");
    			//response.sendRedirect("index.jsp");
    			request.getRequestDispatcher("index.jsp").forward(request,response);
    		}, 
    		error: function(data){
    			alert("提交失败！");
    		}
    	});
    } else {
    	alert("您还未填写完整，请完整填写再提交!");
    }
	
});
</script>
</html>