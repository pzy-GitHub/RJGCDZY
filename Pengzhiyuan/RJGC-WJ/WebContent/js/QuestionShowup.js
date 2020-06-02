/**
 * 
 */



function displayData(){
	//$("#recordtablebody").empty();
	//document.getElementById("singer").setAttribute("value","${param.name}");
	$.ajax({
		url: "QuestionQueryServlet",
		type: "post",
		async: false,
		data: {
			ID: "${param.questionnaireID}",
			questionQueryType: "2"
		},
		success: function(data){
			//var tableData = eval("("+data+")");
			for(var i=0;i<data.length;i++){
				title1 = document.getElementById('title1');
				title1.innerHTML = data[i].title;
				title2 = document.getElementById('title2');
				title2.innerHTML = '发布时间 ' + data[i].publishTime;
				j = 1;
				while(j <= data[i].content["qestionlist"].len()){
					// 问卷开头
			        var parent = document.getElementById("questionparent");
			        // div格式
				    var div1 = document.createElement("div")
				    div1.class = "col-lg-5 col-md-12 col-xs-12";
				    parent.appendChild(div1);
				    var div2 = document.createElement("div")
				    div2.class = "subscribe-form";
				    div1.appendChild(div2);
				    var div3 = document.createElement("div")
				    div3.class = "form-wrapper";
				    div2.appendChild(div3);
				    // 进入题目块
				    var div4 = document.createElement("div")
				    div4.class = "sub-title text-center";
				    div3.appendChild(div4);
				    var title = createElement("h4");
				    var node_title = createTextNode("Q" + i + ":" + data[i].content["qestionlist"][j]["content"])
				    title.appendChild(node_title);
				    var form = document.createElement("form");
				    div3.appendChild(form)
				    if(data[i].content["qestionlist"][j]["type"] == "single-choice"){				    	
				    	for(var index=0;index<data[i].content["qestionlist"][j]["option"].len();index++){
				    		var row = document.createElement("div");
				    		div.class = "row";
				    		var row2 = document.createElement("div");
				    		div.class = "col-12 form-line";
				    		var row3 = document.createElement("div");
				    		div.class = "form-group";
				    		row.appendChild(row2);
				    		row2.appendChild(row3);
				    		var button = document.createElement("button");
				    		button.type = "button";
				    		button.class = "btn btn-default btn-lg btn-block";
				    		var option_content = document.createTextNode(data[i].content["qestionlist"][j]["option"][index]);
				    		button.appendChild(option_content);
				    		button.id = "question" + data[i].content["qestionlist"][j]["index"] + index;
				    		row3.appendChild(button);
				    	}				    		
				    } else if(data[i].content["qestionlist"][j]["type"] == "multiple-choice"){
				    	var row = document.createElement("div");
			    		div.class = "row";
			    		var row2 = document.createElement("div");
			    		div.class = "col-12 form-line";
			    		var row3 = document.createElement("div");
			    		div.class = "form-group";
			    		row.appendChild(row2);
			    		row2.appendChild(row3);
			    		var input = document.createElement("input");
			    		input.type = "text";
			    		input.class = "form-control";
			    		input.id = "question" + data[i].content["qestionlist"][j]["index"];
			    		var option_content = document.createTextNode(data[i].content["qestionlist"][j]["option"][index]);
			    		button.appendChild(option_content);
			    		row3.appendChild(button);
				    }
				}
			}
		}, 
		error: function(data){
			alert("读取失败！");
		}
	});
}

displayData();
