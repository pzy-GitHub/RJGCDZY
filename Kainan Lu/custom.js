// index:题号

// numofoption[i]:第i+1题的选项个数
// 单项填空题默认为0

// numofquestion[i]:第i+1题的子问题个数
// 矩阵单选

// count:题数

var scbtn = document.getElementById("scbtn");
var mcbtn = document.getElementById("mcbtn");
var bcbtn = document.getElementById("bcbtn");
var count = 0;

var numofoption = new Array();
var numofquestion = new Array();

//设置标题
function atitle(){
    var temp = document.getElementById("titleset");
    temp.style.display = "block";
}

function settitle(){
    var temp = document.getElementById("tittletext");
    var text = temp.value;
    
    var node = document.createTextNode(text);

    if(text == ""){
        var node = document.createTextNode("问卷标题");
    }

    var button = document.getElementById("title-btn");
    var oldtext = button.childNodes[0];

    button.replaceChild(node,oldtext);

    var temp = document.getElementById("titleset");
    temp.style.display = "none";
}

//选择二级标签
function clickType(){
    var type1 = document.getElementById("type1");
    var index = type1.selectedIndex;
    var all = document.getElementById("choosetype");
    var hr = document.getElementById("hr");
    var type2 = document.getElementById("type2");
    all.removeChild(type2);
    var type2 = document.createElement("select");
    type2.setAttribute("id","type2");
    all.insertBefore(type2,hr);

    if(index == 0){
      var option = document.createElement("option");
      var node = document.createTextNode("企业培训");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("学校教育");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("阅读研究");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("社会实践");
      option.appendChild(node);
      type2.appendChild(option);        
    }

    if(index == 1){
      var option = document.createElement("option");
      var node = document.createTextNode("升学就业");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("消费情况");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("恋爱婚姻");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("心理健康");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("家庭情况");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("上网调查");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("衣食住行");
      option.appendChild(node);
      type2.appendChild(option);
    }

    if(index == 2){
      var option = document.createElement("option");
      var node = document.createTextNode("环境环保");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("医疗健康");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("游戏产业");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("旅游产业");
      option.appendChild(node);
      type2.appendChild(option);
      var option = document.createElement("option");
      var node = document.createTextNode("弱势群体");
      option.appendChild(node);
      type2.appendChild(option);
    }
} 

// 添加单选题
function singleCh(){  
    count = count + 1;
    var index = count;
    numofoption[index-1] = 2;

    // 换行元素
    var br = document.createElement("br");
    // 分隔元素
    var hr = document.createElement("hr");

    // 整个题目div
    var all = document.createElement("div");
    all.setAttribute("class","single-choice");
    all.setAttribute("id",count);

    // 题目标题
    var h = document.createElement("h4");
    h.setAttribute("id",index + "h");
    var nodet = document.createTextNode(index + ".标题");
    h.appendChild(nodet);

    // 题目预览
    var que = document.createElement("div");
    que.setAttribute("class","question");
    que.setAttribute("id",index + "que")

    var form1 = document.createElement("form");

    var myinput = new Array();
    var mylabel = new Array();

    myinput[0] = document.createElement("input");
    myinput[0].setAttribute("type","radio");
    myinput[0].setAttribute("name",index + "c");

    mylabel[0] = document.createElement("label");
    mylabel[0].setAttribute("id","label0")
    var nodel1 = document.createTextNode("选项")
    mylabel[0].appendChild(nodel1);

    myinput[1] = document.createElement("input");
    myinput[1].setAttribute("type","radio");
    myinput[1].setAttribute("name",index + "c");

    mylabel[1] = document.createElement("label");
    mylabel[1].setAttribute("id","label1")
    var nodel2 = document.createTextNode("选项")
    mylabel[1].appendChild(nodel2);

    form1.appendChild(myinput[0]);
    form1.appendChild(mylabel[0]);
    form1.appendChild(br);
    form1.appendChild(myinput[1]);
    form1.appendChild(mylabel[1]);
    form1.appendChild(br.cloneNode(true));

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",count + "e");
    btns.setAttribute("onclick","edit(" + index +")");
    var nodeb = document.createTextNode("编辑");
    btns.appendChild(nodeb);

    var btnda = document.createElement("button");
    btnda.setAttribute("type","button");
    btnda.setAttribute("class","btn btn-sm btn-danger");
    btnda.setAttribute("id",count + "d");
    btnda.setAttribute("onclick","del(" + index +")");
    var nodeb = document.createTextNode("删除");
    btnda.appendChild(nodeb);

    que.appendChild(form1);
    que.appendChild(btns);
    que.appendChild(btnda);
    que.appendChild(hr);

    // 题目设置
    var set = document.createElement("div");
    set.setAttribute("class","setting");
    set.setAttribute("id",index + "set")

    var form2 = document.createElement("form");

    var title = document.createElement("textarea");
    title.setAttribute("class","title");
    title.setAttribute("id",index + "title");
    var node = document.createTextNode("标题");
    title.appendChild(node)

    form2.appendChild(title);

    var seth = document.createElement("h5");
    var nodeseth = document.createTextNode("选项设置");
    seth.appendChild(nodeseth);

    var form3 = document.createElement("form");

    var ul = document.createElement("ul");
    ul.setAttribute("id",index + "ul");

    var myli = new Array();
    var myin = new Array();
    var btnd = new Array();

    myli[0] = document.createElement("li");
    myli[0].setAttribute("id",'li0')

    myin[0] = document.createElement("textarea");
    myin[0].setAttribute("class","op");
    myin[0].setAttribute("id",index + "in0");
    var node = document.createTextNode("选项");
    myin[0].appendChild(node);

    btnd[0] = document.createElement("button");
    btnd[0].setAttribute("type","button");
    btnd[0].setAttribute("class","btn btn-sm btn-danger");
    btnd[0].setAttribute("id",index + "bt0");
    btnd[0].setAttribute("onclick","delop(" + index +","+ 0 + ")");
    var noded = document.createTextNode("删除");
    btnd[0].appendChild(noded);
    
    myli[0].appendChild(myin[0]);
    myli[0].appendChild(btnd[0]);

    myli[1] = document.createElement("li");
    myli[1].setAttribute("id",'li1')

    myin[1] = document.createElement("textarea");
    myin[1].setAttribute("class","op");
    myin[1].setAttribute("id",index + "in1");
    var node = document.createTextNode("选项");
    myin[1].appendChild(node);

    btnd[1] = document.createElement("button");
    btnd[1].setAttribute("type","button");
    btnd[1].setAttribute("class","btn btn-sm btn-danger");
    btnd[1].setAttribute("id",index + "bt1");
    btnd[1].setAttribute("onclick","delop(" + index +","+ 1 + ")");
    var noded = document.createTextNode("删除");
    btnd[1].appendChild(noded);

    myli[1].appendChild(myin[1]);
    myli[1].appendChild(btnd[1]);

    ul.appendChild(myli[0]);
    ul.appendChild(myli[1]);
    
    form3.appendChild(ul);

    var btna = document.createElement("button");
    btna.setAttribute("type","button");
    btna.setAttribute("class","btn btn-sm btn-primary");
    btna.setAttribute("id",index + "add");
    btna.setAttribute("onclick","singleChAddop(" + index + ")");
    var nodea = document.createTextNode("添加选项");
    btna.appendChild(nodea);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",index + "sa");
    btns.setAttribute("onclick","singleChSave(" + index + ")");
    var nodes = document.createTextNode("保存编辑");
    btns.appendChild(nodes);

    set.appendChild(form2);
    set.appendChild(seth);
    set.appendChild(form3);
    set.appendChild(btna);
    set.appendChild(btns);
    set.appendChild(hr.cloneNode(true));

    all.appendChild(h);
    all.appendChild(que);
    all.appendChild(set);

    var element=document.getElementById("col-lg-9");
    element.appendChild(all);
}

//添加多选题
function multipleCh(){
    count = count + 1;
    var index = count;
    numofoption[index-1] = 2;

    // 换行元素
    var br = document.createElement("br");
    // 分隔元素
    var hr = document.createElement("hr");

    // 整个题目div
    var all = document.createElement("div");
    all.setAttribute("class","multiple-choice");
    all.setAttribute("id",count);

    // 题目标题
    var h = document.createElement("h4");
    h.setAttribute("id",index + "h");
    var nodet = document.createTextNode(index + ".标题");
    h.appendChild(nodet);

    // 题目预览
    var que = document.createElement("div");
    que.setAttribute("class","question");
    que.setAttribute("id",index + "que")

    var form1 = document.createElement("form");

    var myinput = new Array();
    var mylabel = new Array();

    myinput[0] = document.createElement("input");
    myinput[0].setAttribute("type","checkbox");

    mylabel[0] = document.createElement("label");
    mylabel[0].setAttribute("id","label0")
    var nodel1 = document.createTextNode("选项")
    mylabel[0].appendChild(nodel1);

    myinput[1] = document.createElement("input");
    myinput[1].setAttribute("type","checkbox");

    mylabel[1] = document.createElement("label");
    mylabel[1].setAttribute("id","label1")
    var nodel2 = document.createTextNode("选项")
    mylabel[1].appendChild(nodel2);

    form1.appendChild(myinput[0]);
    form1.appendChild(mylabel[0]);
    form1.appendChild(br);
    form1.appendChild(myinput[1]);
    form1.appendChild(mylabel[1]);
    form1.appendChild(br.cloneNode(true));

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",count + "e");
    btns.setAttribute("onclick","edit(" + index +")");
    var nodeb = document.createTextNode("编辑");
    btns.appendChild(nodeb);

    var btnda = document.createElement("button");
    btnda.setAttribute("type","button");
    btnda.setAttribute("class","btn btn-sm btn-danger");
    btnda.setAttribute("id",count + "d");
    btnda.setAttribute("onclick","del(" + index +")");
    var nodeb = document.createTextNode("删除");
    btnda.appendChild(nodeb);

    que.appendChild(form1);
    que.appendChild(btns);
    que.appendChild(btnda);
    que.appendChild(hr);

    // 题目设置
    var set = document.createElement("div");
    set.setAttribute("class","setting");
    set.setAttribute("id",index + "set")

    var form2 = document.createElement("form");

    var title = document.createElement("textarea");
    title.setAttribute("class","title");
    title.setAttribute("id",index + "title");
    var node = document.createTextNode("标题");
    title.appendChild(node)

    form2.appendChild(title);

    var seth = document.createElement("h5");
    var nodeseth = document.createTextNode("选项设置");
    seth.appendChild(nodeseth);

    var form3 = document.createElement("form");

    var ul = document.createElement("ul");
    ul.setAttribute("id",index + "ul");

    var myli = new Array();
    var myin = new Array();
    var btnd = new Array();

    myli[0] = document.createElement("li");
    myli[0].setAttribute("id",'li0')

    myin[0] = document.createElement("textarea");
    myin[0].setAttribute("class","op");
    myin[0].setAttribute("id",index + "in0");
    var node = document.createTextNode("选项");
    myin[0].appendChild(node);

    btnd[0] = document.createElement("button");
    btnd[0].setAttribute("type","button");
    btnd[0].setAttribute("class","btn btn-sm btn-danger");
    btnd[0].setAttribute("id",index + "bt0");
    btnd[0].setAttribute("onclick","delop(" + index +","+ 0 + ")");
    var noded = document.createTextNode("删除");
    btnd[0].appendChild(noded);
    
    myli[0].appendChild(myin[0]);
    myli[0].appendChild(btnd[0]);

    myli[1] = document.createElement("li");
    myli[1].setAttribute("id",'li1')

    myin[1] = document.createElement("textarea");
    myin[1].setAttribute("class","op");
    myin[1].setAttribute("id",index + "in1");
    var node = document.createTextNode("选项");
    myin[1].appendChild(node);

    btnd[1] = document.createElement("button");
    btnd[1].setAttribute("type","button");
    btnd[1].setAttribute("class","btn btn-sm btn-danger");
    btnd[1].setAttribute("id",index + "bt1");
    btnd[1].setAttribute("onclick","delop(" + index +","+ 1 + ")");
    var noded = document.createTextNode("删除");
    btnd[1].appendChild(noded);

    myli[1].appendChild(myin[1]);
    myli[1].appendChild(btnd[1]);

    ul.appendChild(myli[0]);
    ul.appendChild(myli[1]);
    
    form3.appendChild(ul);

    var btna = document.createElement("button");
    btna.setAttribute("type","button");
    btna.setAttribute("class","btn btn-sm btn-primary");
    btna.setAttribute("id",index + "add");
    btna.setAttribute("onclick","multipleChAddop(" + index + ")");
    var nodea = document.createTextNode("添加选项");
    btna.appendChild(nodea);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",index + "sa");
    btns.setAttribute("onclick","multipleChSave(" + index + ")");
    var nodes = document.createTextNode("保存编辑");
    btns.appendChild(nodes);

    set.appendChild(form2);
    set.appendChild(seth);
    set.appendChild(form3);
    set.appendChild(btna);
    set.appendChild(btns);
    set.appendChild(hr.cloneNode(true));

    all.appendChild(h);
    all.appendChild(que);
    all.appendChild(set);

    var element=document.getElementById("col-lg-9");
    element.appendChild(all);

}

//添加下拉框选择
function boxCh(){
    count = count + 1;
    var index = count;
    numofoption[index-1] = 2;

    // 换行元素
    var br = document.createElement("br");
    // 分隔元素
    var hr = document.createElement("hr");

    var all = document.createElement("div");
    all.setAttribute("class","box-choice");
    all.setAttribute("id",count);

    // 题目标题
    var h = document.createElement("h4");
    h.setAttribute("id",index + "h");
    var nodet = document.createTextNode(index + ".标题");
    h.appendChild(nodet);

    var que = document.createElement("div");
    que.setAttribute("class","question");
    que.setAttribute("id",index + "que")

    var form1 = document.createElement("form");

    var select = document.createElement("select");

    var myoption = new Array();

    myoption[0] = document.createElement("option");
    myoption[0].setAttribute("id","option0")
    var node1 = document.createTextNode("选项")
    myoption[0].appendChild(node1);

    myoption[1] = document.createElement("option");
    myoption[1].setAttribute("id","option1")
    var node2 = document.createTextNode("选项")
    myoption[1].appendChild(node2);
    
    select.appendChild(myoption[0]);
    select.appendChild(myoption[1]);

    form1.appendChild(select);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",count + "e");
    btns.setAttribute("onclick","edit(" + index +")");
    var nodeb = document.createTextNode("编辑");
    btns.appendChild(nodeb);

    var btnda = document.createElement("button");
    btnda.setAttribute("type","button");
    btnda.setAttribute("class","btn btn-sm btn-danger");
    btnda.setAttribute("id",count + "d");
    btnda.setAttribute("onclick","del(" + index +")");
    var nodeb = document.createTextNode("删除");
    btnda.appendChild(nodeb);

    que.appendChild(form1);
    que.appendChild(btns);
    que.appendChild(btnda);
    que.appendChild(hr);

    // 题目设置
    var set = document.createElement("div");
    set.setAttribute("class","setting");
    set.setAttribute("id",index + "set")

    var form2 = document.createElement("form");

    var title = document.createElement("textarea");
    title.setAttribute("class","title");
    title.setAttribute("id",index + "title");
    var node = document.createTextNode("标题");
    title.appendChild(node)

    form2.appendChild(title);

    var seth = document.createElement("h5");
    var nodeseth = document.createTextNode("选项设置");
    seth.appendChild(nodeseth);

    var form3 = document.createElement("form");

    var ul = document.createElement("ul");
    ul.setAttribute("id",index + "ul");

    var myli = new Array();
    var myin = new Array();
    var btnd = new Array();

    myli[0] = document.createElement("li");
    myli[0].setAttribute("id",'li0')

    myin[0] = document.createElement("textarea");
    myin[0].setAttribute("class","op");
    myin[0].setAttribute("id",index + "in0");
    var node = document.createTextNode("选项");
    myin[0].appendChild(node);

    btnd[0] = document.createElement("button");
    btnd[0].setAttribute("type","button");
    btnd[0].setAttribute("class","btn btn-sm btn-danger");
    btnd[0].setAttribute("id",index + "bt0");
    btnd[0].setAttribute("onclick","delop(" + index +","+ 0 + ")");
    var noded = document.createTextNode("删除");
    btnd[0].appendChild(noded);
    
    myli[0].appendChild(myin[0]);
    myli[0].appendChild(btnd[0]);

    myli[1] = document.createElement("li");
    myli[1].setAttribute("id",'li1')

    myin[1] = document.createElement("textarea");
    myin[1].setAttribute("class","op");
    myin[1].setAttribute("id",index + "in1");
    var node = document.createTextNode("选项");
    myin[1].appendChild(node);

    btnd[1] = document.createElement("button");
    btnd[1].setAttribute("type","button");
    btnd[1].setAttribute("class","btn btn-sm btn-danger");
    btnd[1].setAttribute("id",index + "bt1");
    btnd[1].setAttribute("onclick","delop(" + index +","+ 1 + ")");
    var noded = document.createTextNode("删除");
    btnd[1].appendChild(noded);

    myli[1].appendChild(myin[1]);
    myli[1].appendChild(btnd[1]);

    ul.appendChild(myli[0]);
    ul.appendChild(myli[1]);
    
    form3.appendChild(ul);

    var btna = document.createElement("button");
    btna.setAttribute("type","button");
    btna.setAttribute("class","btn btn-sm btn-primary");
    btna.setAttribute("id",index + "add");
    btna.setAttribute("onclick","boxChAddop(" + index + ")");
    var nodea = document.createTextNode("添加选项");
    btna.appendChild(nodea);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",index + "sa");
    btns.setAttribute("onclick","boxChSave(" + index + ")");
    var nodes = document.createTextNode("保存编辑");
    btns.appendChild(nodes);

    set.appendChild(form2);
    set.appendChild(seth);
    set.appendChild(form3);
    set.appendChild(btna);
    set.appendChild(btns);
    set.appendChild(hr.cloneNode(true));

    all.appendChild(h);
    all.appendChild(que);
    all.appendChild(set)

    var element=document.getElementById("col-lg-9");
    element.appendChild(all);

}

//添加单项填空题
function text(){
    count = count + 1;
    var index = count;
    //单项填空题默认为0
    numofoption[index-1] = 0;

    // 换行元素
    var br = document.createElement("br");
    // 分隔元素
    var hr = document.createElement("hr");

    // 整个题目div
    var all = document.createElement("div");
    all.setAttribute("class","text");
    all.setAttribute("id",count);

    // 题目标题
    var h = document.createElement("h4");
    h.setAttribute("id",index + "h");
    var nodet = document.createTextNode(index + ".标题");
    h.appendChild(nodet);

    // 题目预览
    var que = document.createElement("div");
    que.setAttribute("class","question");
    que.setAttribute("id",index + "que")

    var form1 = document.createElement("form");

    var input = document.createElement("input");
    input.setAttribute("type","text");
    input.setAttribute("class","mytext");

    form1.appendChild(input);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",count + "e");
    btns.setAttribute("onclick","edit(" + index +")");
    var nodeb = document.createTextNode("编辑");
    btns.appendChild(nodeb);

    var btnda = document.createElement("button");
    btnda.setAttribute("type","button");
    btnda.setAttribute("class","btn btn-sm btn-danger");
    btnda.setAttribute("id",count + "d");
    btnda.setAttribute("onclick","del(" + index +")");
    var nodeb = document.createTextNode("删除");
    btnda.appendChild(nodeb);

    que.appendChild(form1);
    que.appendChild(btns);
    que.appendChild(btnda);
    que.appendChild(hr);

    // 题目设置
    var set = document.createElement("div");
    set.setAttribute("class","setting");
    set.setAttribute("id",index + "set")

    var form2 = document.createElement("form");

    var title = document.createElement("textarea");
    title.setAttribute("class","title");
    title.setAttribute("id",index + "title");
    var node = document.createTextNode("标题");
    title.appendChild(node)

    form2.appendChild(title);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",index + "sa");
    btns.setAttribute("onclick","textSave(" + index + ")");
    var nodes = document.createTextNode("保存编辑");
    btns.appendChild(nodes);

    set.appendChild(form2);
    set.appendChild(btns);
    set.appendChild(hr.cloneNode(true));

    all.appendChild(h);
    all.appendChild(que);
    all.appendChild(set);

    var element=document.getElementById("col-lg-9");
    element.appendChild(all);
}

//添加多项填空题
function multipleText(){
    count = count + 1;
    var index = count;
    numofoption[index-1] = 2;

    // 换行元素
    var br = document.createElement("br");
    // 分隔元素
    var hr = document.createElement("hr");

    // 整个题目div
    var all = document.createElement("div");
    all.setAttribute("class","multiple-text");
    all.setAttribute("id",count);

    // 题目标题
    var h = document.createElement("h4");
    h.setAttribute("id",index + "h");
    var nodet = document.createTextNode(index + ".标题");
    h.appendChild(nodet);

    // 题目预览
    var que = document.createElement("div");
    que.setAttribute("class","question");
    que.setAttribute("id",index + "que")

    var form1 = document.createElement("form");

    var mylabel = new Array();
    var myinput = new Array();
    var myli1 = new Array();

    var ul1 = document.createElement("ul");

    myli1[0] = document.createElement("li");
    mylabel[0] = document.createElement("label");
    var node = document.createTextNode("问题");
    mylabel[0].appendChild(node);
    myinput[0] = document.createElement("input");
    myinput[0].setAttribute("type","text");
    myinput[0].setAttribute("class","mytext");
    myli1[0].appendChild(mylabel[0]);
    myli1[0].appendChild(myinput[0]);

    myli1[1] = document.createElement("li");
    mylabel[1] = document.createElement("label");
    var node = document.createTextNode("问题");
    mylabel[1].appendChild(node);
    myinput[1] = document.createElement("input");
    myinput[1].setAttribute("type","text");
    myinput[1].setAttribute("class","mytext");
    myli1[1].appendChild(mylabel[1]);
    myli1[1].appendChild(myinput[1]);

    ul1.appendChild(myli1[0]);
    ul1.appendChild(myli1[1]);

    form1.appendChild(ul1);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",count + "e");
    btns.setAttribute("onclick","edit(" + index +")");
    var nodeb = document.createTextNode("编辑");
    btns.appendChild(nodeb);

    var btnda = document.createElement("button");
    btnda.setAttribute("type","button");
    btnda.setAttribute("class","btn btn-sm btn-danger");
    btnda.setAttribute("id",count + "d");
    btnda.setAttribute("onclick","del(" + index +")");
    var nodeb = document.createTextNode("删除");
    btnda.appendChild(nodeb);

    que.appendChild(form1);
    que.appendChild(btns);
    que.appendChild(btnda);
    que.appendChild(hr);

    // 题目设置
    var set = document.createElement("div");
    set.setAttribute("class","setting");
    set.setAttribute("id",index + "set")

    var form2 = document.createElement("form");

    var title = document.createElement("textarea");
    title.setAttribute("class","title");
    title.setAttribute("id",index + "title");
    var node = document.createTextNode("标题");
    title.appendChild(node)

    form2.appendChild(title);

    var seth = document.createElement("h5");
    var nodeseth = document.createTextNode("行标题设置");
    seth.appendChild(nodeseth);

    var form3 = document.createElement("form");

    var ul2 = document.createElement("ul");
    ul2.setAttribute("id",index + "ul");

    var myli2 = new Array();
    var myin = new Array();
    var btnd = new Array();

    myli2[0] = document.createElement("li");
    myli2[0].setAttribute("id",'li0')

    myin[0] = document.createElement("textarea");
    myin[0].setAttribute("class","op");
    myin[0].setAttribute("id",index + "in0");
    var node = document.createTextNode("问题");
    myin[0].appendChild(node);

    btnd[0] = document.createElement("button");
    btnd[0].setAttribute("type","button");
    btnd[0].setAttribute("class","btn btn-sm btn-danger");
    btnd[0].setAttribute("id",index + "bt0");
    btnd[0].setAttribute("onclick","delop(" + index +","+ 0 + ")");
    var noded = document.createTextNode("删除");
    btnd[0].appendChild(noded);
    
    myli2[0].appendChild(myin[0]);
    myli2[0].appendChild(btnd[0]);

    myli2[1] = document.createElement("li");
    myli2[1].setAttribute("id",'li1')

    myin[1] = document.createElement("textarea");
    myin[1].setAttribute("class","op");
    myin[1].setAttribute("id",index + "in1");
    var node = document.createTextNode("问题");
    myin[1].appendChild(node);

    btnd[1] = document.createElement("button");
    btnd[1].setAttribute("type","button");
    btnd[1].setAttribute("class","btn btn-sm btn-danger");
    btnd[1].setAttribute("id",index + "bt1");
    btnd[1].setAttribute("onclick","delop(" + index +","+ 1 + ")");
    var noded = document.createTextNode("删除");
    btnd[1].appendChild(noded);

    myli2[1].appendChild(myin[1]);
    myli2[1].appendChild(btnd[1]);

    ul2.appendChild(myli2[0]);
    ul2.appendChild(myli2[1]);
    
    form3.appendChild(ul2);

    var btna = document.createElement("button");
    btna.setAttribute("type","button");
    btna.setAttribute("class","btn btn-sm btn-primary");
    btna.setAttribute("id",index + "add");
    btna.setAttribute("onclick","multipleTextAddop(" + index + ")");
    var nodea = document.createTextNode("添加问题");
    btna.appendChild(nodea);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",index + "sa");
    btns.setAttribute("onclick","multipleTextSave(" + index + ")");
    var nodes = document.createTextNode("保存编辑");
    btns.appendChild(nodes);

    set.appendChild(form2);
    set.appendChild(seth);
    set.appendChild(form3);
    set.appendChild(btna);
    set.appendChild(btns);
    set.appendChild(hr.cloneNode(true));

    all.appendChild(h);
    all.appendChild(que);
    all.appendChild(set);

    var element=document.getElementById("col-lg-9");
    element.appendChild(all);
}

//添加矩阵单选题
function matrixCh(){
    count = count + 1;
    var index = count;
    numofoption[index-1] = 5;
    numofquestion[index-1] = 2;

    // 换行元素
    var br = document.createElement("br");
    // 分隔元素
    var hr = document.createElement("hr");

    // 整个题目div
    var all = document.createElement("div");
    all.setAttribute("class","matrix");
    all.setAttribute("id",count);

    // 题目标题
    var h = document.createElement("h4");
    h.setAttribute("id",index + "h");
    var nodet = document.createTextNode(index + ".标题");
    h.appendChild(nodet);

    // 题目预览
    var que = document.createElement("div");
    que.setAttribute("class","question");
    que.setAttribute("id",index + "que");

    var table = document.createElement("table");
    table.setAttribute("class","matrix");
    
    var thead = document.createElement("thead");
    var th = document.createElement("th");
    var td = document.createElement("td");
    var node = document.createTextNode("选项");
    td.appendChild(node);
    thead.appendChild(th);
    thead.appendChild(td);
    thead.appendChild(td.cloneNode(true));
    thead.appendChild(td.cloneNode(true));
    thead.appendChild(td.cloneNode(true));
    thead.appendChild(td.cloneNode(true));

    var tbody = document.createElement("tbody");
    var tr = document.createElement("tr");
    var th = document.createElement("th");
    var node = document.createTextNode("问题");
    th.appendChild(node);

    var td = document.createElement("td");
    var input = document.createElement("input");
    input.setAttribute("type","radio");
    td.appendChild(input);

    tr.appendChild(th);
    tr.appendChild(td);
    tr.appendChild(td.cloneNode(true));
    tr.appendChild(td.cloneNode(true));
    tr.appendChild(td.cloneNode(true));
    tr.appendChild(td.cloneNode(true));

    tbody.appendChild(tr);
    tbody.appendChild(tr.cloneNode(true));

    table.appendChild(thead);
    table.appendChild(tbody);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",count + "e");
    btns.setAttribute("onclick","edit(" + index +")");
    var nodeb = document.createTextNode("编辑");
    btns.appendChild(nodeb);

    var btnda = document.createElement("button");
    btnda.setAttribute("type","button");
    btnda.setAttribute("class","btn btn-sm btn-danger");
    btnda.setAttribute("id",count + "d");
    btnda.setAttribute("onclick","del(" + index +")");
    var nodeb = document.createTextNode("删除");
    btnda.appendChild(nodeb);

    que.appendChild(table);
    que.appendChild(btns);
    que.appendChild(btnda);
    que.appendChild(hr);

    //题目设置
    var set = document.createElement("div");
    set.setAttribute("class","setting");
    set.setAttribute("id",index + "set")

    var form1 = document.createElement("form");

    var title = document.createElement("textarea");
    title.setAttribute("class","title");
    title.setAttribute("id",index + "title");
    var node = document.createTextNode("标题");
    title.appendChild(node)

    form1.appendChild(title);

    var seth = document.createElement("h5");
    var nodeseth = document.createTextNode("行标题设置");
    seth.appendChild(nodeseth);

    var form2 = document.createElement("form");

    var ul1 = document.createElement("ul");

    var myli1 = new Array();
    var myin1 = new Array();
    var btnd1 = new Array();

    myli1[0] = document.createElement("li");
    myin1[0] = document.createElement("textarea");
    myin1[0].setAttribute("class","op");
    var node = document.createTextNode("问题");
    myin1[0].appendChild(node);

    btnd1[0] = document.createElement("button");
    btnd1[0].setAttribute("type","button");
    btnd1[0].setAttribute("class","btn btn-sm btn-danger");
    btnd1[0].setAttribute("onclick","matrixdelque(" + index +","+ 0 + ")");
    var noded = document.createTextNode("删除");
    btnd1[0].appendChild(noded);
    
    myli1[0].appendChild(myin1[0]);
    myli1[0].appendChild(btnd1[0]);

    myli1[1] = document.createElement("li");
    myin1[1] = document.createElement("textarea");
    myin1[1].setAttribute("class","op");
    var node = document.createTextNode("问题");
    myin1[1].appendChild(node);

    btnd1[1] = document.createElement("button");
    btnd1[1].setAttribute("type","button");
    btnd1[1].setAttribute("class","btn btn-sm btn-danger");
    btnd1[1].setAttribute("onclick","matrixdelque(" + index +","+ 1 + ")");
    var noded = document.createTextNode("删除");
    btnd1[1].appendChild(noded);

    myli1[1].appendChild(myin1[1]);
    myli1[1].appendChild(btnd1[1]);

    ul1.appendChild(myli1[0]);
    ul1.appendChild(myli1[1]);

    form2.appendChild(ul1);

    var seto = document.createElement("h5");
    var node= document.createTextNode("选项设置");
    seto.appendChild(node);
    
    var form3 = document.createElement("form");

    var ul2 = document.createElement("ul");

    var myli2 = new Array();
    var myin2= new Array();
    var btnd2= new Array();

    myli2[0] = document.createElement("li");
    myin2[0] = document.createElement("textarea");
    myin2[0].setAttribute("class","op");
    var node = document.createTextNode("选项");
    myin2[0].appendChild(node);

    btnd2[0] = document.createElement("button");
    btnd2[0].setAttribute("type","button");
    btnd2[0].setAttribute("class","btn btn-sm btn-danger");
    btnd2[0].setAttribute("onclick","matrixdelop(" + index +","+ 0 + ")");
    var noded = document.createTextNode("删除");
    btnd2[0].appendChild(noded);
    
    myli2[0].appendChild(myin2[0]);
    myli2[0].appendChild(btnd2[0]);

    myli2[1] = document.createElement("li");
    myin2[1] = document.createElement("textarea");
    myin2[1].setAttribute("class","op");
    var node = document.createTextNode("选项");
    myin2[1].appendChild(node);

    btnd2[1] = document.createElement("button");
    btnd2[1].setAttribute("type","button");
    btnd2[1].setAttribute("class","btn btn-sm btn-danger");
    btnd2[1].setAttribute("onclick","matrixdelop(" + index +","+ 1 + ")");
    var noded = document.createTextNode("删除");
    btnd2[1].appendChild(noded);

    myli2[1].appendChild(myin2[1]);
    myli2[1].appendChild(btnd2[1]);

    myli2[2] = document.createElement("li");
    myin2[2] = document.createElement("textarea");
    myin2[2].setAttribute("class","op");
    var node = document.createTextNode("选项");
    myin2[2].appendChild(node);

    btnd2[2] = document.createElement("button");
    btnd2[2].setAttribute("type","button");
    btnd2[2].setAttribute("class","btn btn-sm btn-danger");
    btnd2[2].setAttribute("onclick","matrixdelop(" + index +","+ 2 + ")");
    var noded = document.createTextNode("删除");
    btnd2[2].appendChild(noded);

    myli2[2].appendChild(myin2[2]);
    myli2[2].appendChild(btnd2[2]);

    myli2[3] = document.createElement("li");
    myin2[3] = document.createElement("textarea");
    myin2[3].setAttribute("class","op");
    var node = document.createTextNode("选项");
    myin2[3].appendChild(node);

    btnd2[3] = document.createElement("button");
    btnd2[3].setAttribute("type","button");
    btnd2[3].setAttribute("class","btn btn-sm btn-danger");
    btnd2[3].setAttribute("onclick","matrixdelop(" + index +","+ 3 + ")");
    var noded = document.createTextNode("删除");
    btnd2[3].appendChild(noded);

    myli2[3].appendChild(myin2[3]);
    myli2[3].appendChild(btnd2[3]);

    myli2[4] = document.createElement("li");
    myin2[4] = document.createElement("textarea");
    myin2[4].setAttribute("class","op");
    var node = document.createTextNode("选项");
    myin2[4].appendChild(node);

    btnd2[4] = document.createElement("button");
    btnd2[4].setAttribute("type","button");
    btnd2[4].setAttribute("class","btn btn-sm btn-danger");
    btnd2[4].setAttribute("onclick","matrixdelop(" + index +","+ 4 + ")");
    var noded = document.createTextNode("删除");
    btnd2[4].appendChild(noded);

    myli2[4].appendChild(myin2[4]);
    myli2[4].appendChild(btnd2[4]);

    ul2.appendChild(myli2[0]);
    ul2.appendChild(myli2[1]);
    ul2.appendChild(myli2[2]);
    ul2.appendChild(myli2[3]);
    ul2.appendChild(myli2[4]);

    form3.appendChild(ul2);

    var btna = document.createElement("button");
    btna.setAttribute("type","button");
    btna.setAttribute("class","btn btn-sm btn-primary");
    btna.setAttribute("id",index + "addque");
    btna.setAttribute("onclick","matrixAddque(" + index + ")");
    var nodea = document.createTextNode("添加问题");
    btna.appendChild(nodea);

    var btna1 = document.createElement("button");
    btna1.setAttribute("type","button");
    btna1.setAttribute("class","btn btn-sm btn-primary");
    btna1.setAttribute("id",index + "addop");
    btna1.setAttribute("onclick","matrixAddop(" + index + ")");
    var nodea = document.createTextNode("添加选项");
    btna1.appendChild(nodea);

    var btns = document.createElement("button");
    btns.setAttribute("type","button");
    btns.setAttribute("class","btn btn-sm btn-warning");
    btns.setAttribute("id",index + "sa");
    btns.setAttribute("onclick","matrixSave(" + index + ")");
    var nodes = document.createTextNode("保存编辑");
    btns.appendChild(nodes);

    set.appendChild(form1);
    set.appendChild(seth);
    set.appendChild(form2);
    set.appendChild(seto);
    set.appendChild(form3);
    set.appendChild(btna);
    set.appendChild(btna1);
    set.appendChild(btns);
    set.appendChild(hr.cloneNode(true));
    
    all.appendChild(h);
    all.appendChild(que);
    all.appendChild(set);

    var element=document.getElementById("col-lg-9");
    element.appendChild(all);
}

//添加说明
function explain(){
    count = count + 1;
    var index = count;
    numofoption[index-1] = 2;

    var all = document.createElement("div");
    all.setAttribute("class","explain");
    all.setAttribute("id",count);
    var hr = document.createElement("hr");

    var form = document.createElement("form");
    var text = document.createElement("textarea");
    text.setAttribute("style","width: 100%; height: 100px;")

    form.appendChild(text);
    
    all.appendChild(form);
    all.appendChild(hr);

    var element=document.getElementById("col-lg-9");
    element.appendChild(all);
}

//保存单选题
function singleChSave(index){
    var num = numofoption[index-1];

    var title = document.getElementById(index + "title").value;

    var h = document.getElementById(index + "h");
    var oldnode = h.childNodes[0];
    var newnode = document.createTextNode(index + "." + title);
    h.replaceChild(newnode,oldnode);
    
    var i = 0;
    
    var myvalue = new Array();

    for(i = 0; i < num; i++){
        myvalue[i] = document.getElementById(index + "in" + i).value;
    }

    var que = document.getElementById(index + "que");

    var p = document.createTextNode(index);

    var oldform = que.childNodes[0];

    var myform = document.createElement("form");

    var myinput = new Array();
    var mylabel = new Array();

    for(i = 0; i < num; i++){
        var mytext = myvalue[i];
        myinput[i] = document.createElement("input");
        myinput[i].setAttribute("type","radio");
        myinput[i].setAttribute("name",index + "c");
        mylabel[i] = document.createElement("label");
        mylabel[i].setAttribute("id","label" + i);
        var node = document.createTextNode(mytext);
        mylabel[i].appendChild(node);

        var br = document.createElement("br");

        myform.appendChild(myinput[i]);
        myform.appendChild(mylabel[i]);
        myform.appendChild(br);
    }

    que.replaceChild(myform,oldform);

    var set = document.getElementById(index + "set");
    set.style.display = "none";
}

//保存多选题
function multipleChSave(index){
    var num = numofoption[index-1];

    var title = document.getElementById(index + "title").value;

    var h = document.getElementById(index + "h");
    var oldnode = h.childNodes[0];
    var newnode = document.createTextNode(index + "." + title);
    h.replaceChild(newnode,oldnode);
    
    var i = 0;
    
    var myvalue = new Array();

    for(i = 0; i < num; i++){
        myvalue[i] = document.getElementById(index + "in" + i).value;
    }

    var que = document.getElementById(index + "que");

    var p = document.createTextNode(index);

    var oldform = que.childNodes[0];

    var myform = document.createElement("form");

    var myinput = new Array();
    var mylabel = new Array();

    for(i = 0; i < num; i++){
        var mytext = myvalue[i];
        myinput[i] = document.createElement("input");
        myinput[i].setAttribute("type","checkbox");
        myinput[i].setAttribute("name",index + "c");
        mylabel[i] = document.createElement("label");
        mylabel[i].setAttribute("id","label" + i);
        var node = document.createTextNode(mytext);
        mylabel[i].appendChild(node);

        var br = document.createElement("br");

        myform.appendChild(myinput[i]);
        myform.appendChild(mylabel[i]);
        myform.appendChild(br);
    }

    que.replaceChild(myform,oldform);

    var set = document.getElementById(index + "set");
    set.style.display = "none";
}

//保存下拉框选择题
function boxChSave(index){
    var num = numofoption[index-1];

    var title = document.getElementById(index + "title").value;

    var h = document.getElementById(index + "h");
    var oldnode = h.childNodes[0];
    var newnode = document.createTextNode(index + "." + title);
    h.replaceChild(newnode,oldnode);
    
    var i = 0;
    
    var myvalue = new Array();

    for(i = 0; i < num; i++){
        myvalue[i] = document.getElementById(index + "in" + i).value;
    }

    var que = document.getElementById(index + "que");

    var p = document.createTextNode(index);

    var oldform = que.childNodes[0];

    var myform = document.createElement("form");
    var select = document.createElement("select");

    var myoption = new Array();

    for(i = 0; i < num; i++){
        var mytext = myvalue[i];

        myoption[i] = document.createElement("option");
        myoption[i].setAttribute("id","option" + i);
        var node = document.createTextNode(mytext)
        myoption[i].appendChild(node);

        select.appendChild(myoption[i]);
    }

    myform.appendChild(select);

    que.replaceChild(myform,oldform);

    var set = document.getElementById(index + "set");
    set.style.display = "none";
}

//保存单项填空题
function textSave(index){
    var num = numofoption[index-1];

    var title = document.getElementById(index + "title").value;

    var h = document.getElementById(index + "h");
    var oldnode = h.childNodes[0];
    var newnode = document.createTextNode(index + "." + title);
    h.replaceChild(newnode,oldnode);

    var set = document.getElementById(index + "set");
    set.style.display = "none";
}

//保存多项填空题
function multipleTextSave(index){
    var num = numofoption[index-1];

    var title = document.getElementById(index + "title").value;

    var h = document.getElementById(index + "h");
    var oldnode = h.childNodes[0];
    var newnode = document.createTextNode(index + "." + title);
    h.replaceChild(newnode,oldnode);
    
    var i = 0;
    
    var myvalue = new Array();

    for(i = 0; i < num; i++){
        myvalue[i] = document.getElementById(index + "in" + i).value;
    }

    var que = document.getElementById(index + "que");

    var p = document.createTextNode(index);

    var oldform = que.childNodes[0];

    var myform = document.createElement("form");

    var myinput = new Array();
    var mylabel = new Array();
    var myli = new Array();

    var ul = document.createElement("ul");

    for(i = 0; i < num; i++){
        var mytext = myvalue[i];

        myli[i] = document.createElement("li");
        mylabel[i] = document.createElement("label");
        var node = document.createTextNode(mytext);
        mylabel[i].appendChild(node);
        myinput[i] = document.createElement("input");
        myinput[i].setAttribute("type","text");
        myinput[i].setAttribute("class","mytext");
        myli[i].appendChild(mylabel[i]);
        myli[i].appendChild(myinput[i]);

        myform.appendChild(myli[i]);
    }

    que.replaceChild(myform,oldform);

    var set = document.getElementById(index + "set");
    set.style.display = "none";
}

//保存矩阵单选题
function matrixSave(index){
    var num1 = numofoption[index-1];
    var num2 = numofquestion[index-1];

    var title = document.getElementById(index + "title").value;

    var h = document.getElementById(index + "h");
    var oldnode = h.childNodes[0];
    var newnode = document.createTextNode(index + "." + title);
    h.replaceChild(newnode,oldnode);

    var myvalue1 = new Array();//选项
    var myvalue2 = new Array();//子问题

    var set = document.getElementById(index + "set");

    for(var i = 0; i < num1; i++){
        var form = set.childNodes[4];
        var ul = form.childNodes[0];
        var li = ul.childNodes[i];
        var myin1 = li.childNodes[0];
        myvalue1[i] = myin1.value;
    }

    for(var i = 0; i < num2; i++){
        var form = set.childNodes[2];
        var ul = form.childNodes[0];
        var li = ul.childNodes[i];
        var myin2 = li.childNodes[0];
        myvalue2[i] = myin2.value;
    }
    
    var que = document.getElementById(index + "que");

    var oldtable = que.childNodes[0];

    var mytable = document.createElement("table");
    mytable.setAttribute("class","matrix");

    var thead = document.createElement("thead");
    var th = document.createElement("th");

    thead.appendChild(th);

    for(var i=0; i<num1; i++){     
        var td = document.createElement("td");
        var node = document.createTextNode(myvalue1[i]);
        td.appendChild(node);
        thead.appendChild(td);
    }
    
    var tbody = document.createElement("tbody");

    for(var i=0; i<num2; i++){
        var tr = document.createElement("tr");
        var th = document.createElement("th");
        var node = document.createTextNode(myvalue2[i]);
        th.appendChild(node);

        tr.appendChild(th);
        for(var j=0; j<num1; j++){
            var td = document.createElement("td");
            var input = document.createElement("input");
            input.setAttribute("type","radio");

            td.appendChild(input);

            tr.appendChild(td);     
        }
        tbody.appendChild(tr);
    }

    mytable.appendChild(thead);
    mytable.appendChild(tbody);
    
    que.replaceChild(mytable,oldtable);

    set.style.display = "none";

}



//添加单选题选项
function singleChAddop(index){
    var num = numofoption[index-1];

    var myli = document.createElement('li');
    myli.setAttribute("id",'li' + num);

    myin = document.createElement("textarea");
    myin.setAttribute("class","op");
    myin.setAttribute("id",index + "in" +num);
    var node = document.createTextNode("选项");
    myin.appendChild(node)

    btnd = document.createElement("button");
    btnd.setAttribute("type","button");
    btnd.setAttribute("class","btn btn-sm btn-danger");
    btnd.setAttribute("id",index + "bt" +num);
    btnd.setAttribute("onclick","delop(" + index +","+ num + ")");
    var noded = document.createTextNode("删除");
    btnd.appendChild(noded);
    
    myli.appendChild(myin);
    myli.appendChild(btnd);

    var ul = document.getElementById(index + "ul");
    ul.appendChild(myli);

    numofoption[index-1] = numofoption[index-1] + 1;
}

//添加多选题选项
function multipleChAddop(index){
    var num = numofoption[index-1];

    var myli = document.createElement('li');
    myli.setAttribute("id",'li' + num);

    myin = document.createElement("textarea");
    myin.setAttribute("class","op");
    myin.setAttribute("id",index + "in" +num);
    var node = document.createTextNode("选项");
    myin.appendChild(node)

    btnd = document.createElement("button");
    btnd.setAttribute("type","button");
    btnd.setAttribute("class","btn btn-sm btn-danger");
    btnd.setAttribute("id",index + "bt" +num);
    btnd.setAttribute("onclick","delop(" + index +","+ num + ")");
    var noded = document.createTextNode("删除");
    btnd.appendChild(noded);
    
    myli.appendChild(myin);
    myli.appendChild(btnd);

    var ul = document.getElementById(index + "ul");
    ul.appendChild(myli);

    numofoption[index-1] = numofoption[index-1] + 1;
}

//添加下拉框选择题选项
function boxChAddop(index){
    var num = numofoption[index-1];

    var myli = document.createElement('li');
    myli.setAttribute("id",'li' + num);

    myin = document.createElement("textarea");
    myin.setAttribute("class","op");
    myin.setAttribute("id",index + "in" +num);
    var node = document.createTextNode("选项");
    myin.appendChild(node)

    btnd = document.createElement("button");
    btnd.setAttribute("type","button");
    btnd.setAttribute("class","btn btn-sm btn-danger");
    btnd.setAttribute("id",index + "bt" +num);
    btnd.setAttribute("onclick","delop(" + index +","+ num + ")");
    var noded = document.createTextNode("删除");
    btnd.appendChild(noded);
    
    myli.appendChild(myin);
    myli.appendChild(btnd);

    var ul = document.getElementById(index + "ul");
    ul.appendChild(myli);

    numofoption[index-1] = numofoption[index-1] + 1;
}

//添加多项填空题选项
function multipleTextAddop(index){
    var num = numofoption[index-1];

    var myli = document.createElement('li');
    myli.setAttribute("id",'li' + num);

    myin = document.createElement("textarea");
    myin.setAttribute("class","op");
    myin.setAttribute("id",index + "in" +num);
    var node = document.createTextNode("问题");
    myin.appendChild(node)

    btnd = document.createElement("button");
    btnd.setAttribute("type","button");
    btnd.setAttribute("class","btn btn-sm btn-danger");
    btnd.setAttribute("id",index + "bt" +num);
    btnd.setAttribute("onclick","delop(" + index +","+ num + ")");
    var noded = document.createTextNode("删除");
    btnd.appendChild(noded);
    
    myli.appendChild(myin);
    myli.appendChild(btnd);

    var ul = document.getElementById(index + "ul");
    ul.appendChild(myli);

    numofoption[index-1] = numofoption[index-1] + 1;
}

//添加矩阵单选选项
function matrixAddop(index){
    var num = numofoption[index-1];

    var myli = document.createElement('li');

    myin = document.createElement("textarea");
    myin.setAttribute("class","op");
    var node = document.createTextNode("选项");
    myin.appendChild(node)

    btnd = document.createElement("button");
    btnd.setAttribute("type","button");
    btnd.setAttribute("class","btn btn-sm btn-danger");
    btnd.setAttribute("onclick","matrixdelop(" + index +","+ num + ")");
    var noded = document.createTextNode("删除");
    btnd.appendChild(noded);
    
    myli.appendChild(myin);
    myli.appendChild(btnd);

    var set = document.getElementById(index + "set");
    var form = set.childNodes[4];
    var ul = form.childNodes[0];
    ul.appendChild(myli);

    numofoption[index-1] = numofoption[index-1] + 1;
}

//添加矩阵单选子问题
function matrixAddque(index){
    var num = numofquestion[index-1];

    var myli = document.createElement('li');

    myin = document.createElement("textarea");
    myin.setAttribute("class","op");
    var node = document.createTextNode("问题");
    myin.appendChild(node)

    btnd = document.createElement("button");
    btnd.setAttribute("type","button");
    btnd.setAttribute("class","btn btn-sm btn-danger");
    btnd.setAttribute("onclick","matrixdelque(" + index +","+ num + ")");
    var noded = document.createTextNode("删除");
    btnd.appendChild(noded);
    
    myli.appendChild(myin);
    myli.appendChild(btnd);

    var set = document.getElementById(index + "set");
    var form = set.childNodes[2];
    var ul = form.childNodes[0];
    ul.appendChild(myli);

    numofquestion[index-1] = numofquestion[index-1] + 1;
}

//删除选项
function delop(index, x){
    var ul = document.getElementById(index + "ul");
    var li = ul.childNodes[x];
    
    var num = numofoption[index - 1];

    if(x < num-1){
        for(var i=x+1; i<num; i++){
            var j = i - 1;
            var newli = ul.childNodes[i];
            newli.setAttribute("id","li" + j);

            var temp1 = document.getElementById(index + "in" + i);
            temp1.setAttribute("id",index + "in" + j);
            var temp2 = document.getElementById(index + "bt" + i);
            temp2.setAttribute("id",index + "bt" + j);
            temp2.setAttribute("onclick","delop(" + index + "," + j +")");
        }
    }
    ul.removeChild(li);
    numofoption[index - 1] = numofoption[index - 1] - 1;
        
}

//删除选项（矩阵单选）
function matrixdelque(index,x){
    var set = document.getElementById(index + "set");
    var form = set.childNodes[4];
    var ul = form.childNodes[0];
    var li = ul.childNodes[x];
    
    var num = numofoption[index - 1];

    ul.removeChild(li);
    numofoption[index - 1] = numofoption[index - 1] - 1;
}

//删除子问题（矩阵单选）
function matrixdelque(index,x){
    var set = document.getElementById(index + "set");
    var form = set.childNodes[2];
    var ul = form.childNodes[0];
    var li = ul.childNodes[x];
    
    var num = numofquestion[index - 1];

    ul.removeChild(li);
    numofquestion[index - 1] = numofquestion[index - 1] - 1;
}


// 编辑题目
function edit(index){
    var set = document.getElementById(index + "set");
    set.style.display = "block";
}

//删除题目
function del(index){
    var col9 = document.getElementById("col-lg-9");

    var num = numofoption;
    var numque = numofquestion;

    var x = document.getElementById(index);
    var i = 1;


    // 删除题目后将后面题目往前移
    if(index < count){
        for(i = index+1; i <= count; i++){
            var j = i - 1;
            var a = 0;
            var nexttype = document.getElementById(i).className;

            if(nexttype == "single-choice"){
                var indexx = document.getElementById(i);
                var h = document.getElementById(i + "h");
                var que = document.getElementById(i + "que");
                var set = document.getElementById(i + "set");
                var e = document.getElementById(i + "e");
                var d = document.getElementById(i + "d");
                var titlee = document.getElementById(i + "title");
                var ul = document.getElementById(i + "ul");
                var add = document.getElementById(i + "add");
                var sa = document.getElementById(i + "sa");
    
                for(a = 0; a < num[i-1]; a++){
                    var temp1 = document.getElementById(i + "in" + a);
                    temp1.setAttribute("id",j + "in" + a);
                    var temp2 = document.getElementById(i + "bt" + a);
                    temp2.setAttribute("id",j + "bt" + a);
                    temp2.setAttribute("onclick","delop(" + j + "," + a +")");
                }
      
                var oldnode = h.childNodes[0];
                var title = document.getElementById(i + "title").value;
                var newnode = document.createTextNode(j + "." + title);
                h.replaceChild(newnode,oldnode);
    
                indexx.setAttribute("id", j);
                h.setAttribute("id", j + "h");
                que.setAttribute("id", j + "que");
                set.setAttribute("id", j + "set");
                e.setAttribute("id", j + "e");
                e.setAttribute("onclick", "edit(" + j +")");
                d.setAttribute("id", j + "d");
                d.setAttribute("onclick", "del(" + j +")");
                titlee.setAttribute("id", j + "title");
                ul.setAttribute("id", j + "ul");
                add.setAttribute("id", j + "add");
                add.setAttribute("onclick", "singleChAddop(" + j + ")");
                sa.setAttribute("id", j + "sa");
                sa.setAttribute("onclick", "singleChSave(" + j + ")");
            }

            if(nexttype == "multiple-choice"){
                var indexx = document.getElementById(i);
                var h = document.getElementById(i + "h");
                var que = document.getElementById(i + "que");
                var set = document.getElementById(i + "set");
                var e = document.getElementById(i + "e");
                var d = document.getElementById(i + "d");
                var titlee = document.getElementById(i + "title");
                var ul = document.getElementById(i + "ul");
                var add = document.getElementById(i + "add");
                var sa = document.getElementById(i + "sa");
    
                for(a = 0; a < num[i-1]; a++){
                    var temp1 = document.getElementById(i + "in" + a);
                    temp1.setAttribute("id",j + "in" + a);
                    var temp2 = document.getElementById(i + "bt" + a);
                    temp2.setAttribute("id",j + "bt" + a);
                    temp2.setAttribute("onclick","delop(" + j + "," + a +")");
                }
      
                var oldnode = h.childNodes[0];
                var title = document.getElementById(i + "title").value;
                var newnode = document.createTextNode(j + "." + title);
                h.replaceChild(newnode,oldnode);
    
                indexx.setAttribute("id", j);
                h.setAttribute("id", j + "h");
                que.setAttribute("id", j + "que");
                set.setAttribute("id", j + "set");
                e.setAttribute("id", j + "e");
                e.setAttribute("onclick", "edit(" + j +")");
                d.setAttribute("id", j + "d");
                d.setAttribute("onclick", "del(" + j +")");
                titlee.setAttribute("id", j + "title");
                ul.setAttribute("id", j + "ul");
                add.setAttribute("id", j + "add");
                add.setAttribute("onclick", "multipleChAddop(" + j + ")");
                sa.setAttribute("id", j + "sa");
                sa.setAttribute("onclick", "multipleChSave(" + j + ")");

            }

            if(nexttype == "box-choice"){
                var indexx = document.getElementById(i);
                var h = document.getElementById(i + "h");
                var que = document.getElementById(i + "que");
                var set = document.getElementById(i + "set");
                var e = document.getElementById(i + "e");
                var d = document.getElementById(i + "d");
                var titlee = document.getElementById(i + "title");
                var ul = document.getElementById(i + "ul");
                var add = document.getElementById(i + "add");
                var sa = document.getElementById(i + "sa");
    
                for(a = 0; a < num[i-1]; a++){
                    var temp1 = document.getElementById(i + "in" + a);
                    temp1.setAttribute("id",j + "in" + a);
                    var temp2 = document.getElementById(i + "bt" + a);
                    temp2.setAttribute("id",j + "bt" + a);
                    temp2.setAttribute("onclick","delop(" + j + "," + a +")");
                }
      
                var oldnode = h.childNodes[0];
                var title = document.getElementById(i + "title").value;
                var newnode = document.createTextNode(j + "." + title);
                h.replaceChild(newnode,oldnode);
    
                indexx.setAttribute("id", j);
                h.setAttribute("id", j + "h");
                que.setAttribute("id", j + "que");
                set.setAttribute("id", j + "set");
                e.setAttribute("id", j + "e");
                e.setAttribute("onclick", "edit(" + j +")");
                d.setAttribute("id", j + "d");
                d.setAttribute("onclick", "del(" + j +")");
                titlee.setAttribute("id", j + "title");
                ul.setAttribute("id", j + "ul");
                add.setAttribute("id", j + "add");
                add.setAttribute("onclick", "boxChAddop(" + j + ")");
                sa.setAttribute("id", j + "sa");
                sa.setAttribute("onclick", "boxeChSave(" + j + ")");
            }

            if(nexttype == "text"){
                var indexx = document.getElementById(i);
                var h = document.getElementById(i + "h");
                var que = document.getElementById(i + "que");
                var set = document.getElementById(i + "set");
                var e = document.getElementById(i + "e");
                var d = document.getElementById(i + "d");
                var titlee = document.getElementById(i + "title");
                var sa = document.getElementById(i + "sa");
      
                var oldnode = h.childNodes[0];
                var title = document.getElementById(i + "title").value;
                var newnode = document.createTextNode(j + "." + title);
                h.replaceChild(newnode,oldnode);
    
                indexx.setAttribute("id", j);
                h.setAttribute("id", j + "h");
                que.setAttribute("id", j + "que");
                set.setAttribute("id", j + "set");
                e.setAttribute("id", j + "e");
                e.setAttribute("onclick", "edit(" + j +")");
                d.setAttribute("id", j + "d");
                d.setAttribute("onclick", "del(" + j +")");
                titlee.setAttribute("id", j + "title");
                sa.setAttribute("id", j + "sa");
                sa.setAttribute("onclick", "singleChSave(" + j + ")");
            }

            if(nexttype == "multiple-text"){
                var indexx = document.getElementById(i);
                var h = document.getElementById(i + "h");
                var que = document.getElementById(i + "que");
                var set = document.getElementById(i + "set");
                var e = document.getElementById(i + "e");
                var d = document.getElementById(i + "d");
                var titlee = document.getElementById(i + "title");
                var ul = document.getElementById(i + "ul");
                var add = document.getElementById(i + "add");
                var sa = document.getElementById(i + "sa");
    
                for(a = 0; a < num[i-1]; a++){
                    var temp1 = document.getElementById(i + "in" + a);
                    temp1.setAttribute("id",j + "in" + a);
                    var temp2 = document.getElementById(i + "bt" + a);
                    temp2.setAttribute("id",j + "bt" + a);
                    temp2.setAttribute("onclick","delop(" + j + "," + a +")");
                }
      
                var oldnode = h.childNodes[0];
                var title = document.getElementById(i + "title").value;
                var newnode = document.createTextNode(j + "." + title);
                h.replaceChild(newnode,oldnode);
    
                indexx.setAttribute("id", j);
                h.setAttribute("id", j + "h");
                que.setAttribute("id", j + "que");
                set.setAttribute("id", j + "set");
                e.setAttribute("id", j + "e");
                e.setAttribute("onclick", "edit(" + j +")");
                d.setAttribute("id", j + "d");
                d.setAttribute("onclick", "del(" + j +")");
                titlee.setAttribute("id", j + "title");
                ul.setAttribute("id", j + "ul");
                add.setAttribute("id", j + "add");
                add.setAttribute("onclick", "multipleTextAddop(" + j + ")");
                sa.setAttribute("id", j + "sa");
                sa.setAttribute("onclick", "multipleTextSave(" + j + ")");
            }

            if(nexttype == "matrix"){
                var indexx = document.getElementById(i);
                var h = document.getElementById(i + "h");
                var que = document.getElementById(i + "que");
                var set = document.getElementById(i + "set");
                var e = document.getElementById(i + "e");
                var d = document.getElementById(i + "d");
                var titlee = document.getElementById(i + "title");
                var addque = document.getElementById(i + "addque");
                var addop = document.getElementById(i + "addop");
                var sa = document.getElementById(i + "sa");

                var oldnode = h.childNodes[0];
                var title = document.getElementById(i + "title").value;
                var newnode = document.createTextNode(j + "." + title);
                h.replaceChild(newnode,oldnode);

                for(a = 0; a < num[i-1]; a++){
                    var form = set.childNodes[4];
                    var ul = form.childNodes[0];
                    var li = ul.childNodes[a];

                    var temp1 = li.childNodes[1]
                    temp1.setAttribute("onclick","matrixdelop(" + j + "," + a +")");
                }

                for(a = 0; a < numque[i-1]; a++){
                    var form = set.childNodes[2];
                    var ul = form.childNodes[0];
                    var li = ul.childNodes[a];

                    var temp1 = li.childNodes[1]
                    temp1.setAttribute("onclick","matrixdelque(" + j + "," + a +")");
                }

                indexx.setAttribute("id", j);
                h.setAttribute("id", j + "h");
                que.setAttribute("id", j + "que");
                set.setAttribute("id", j + "set");
                e.setAttribute("id", j + "e");
                e.setAttribute("onclick", "edit(" + j +")");
                d.setAttribute("id", j + "d");
                d.setAttribute("onclick", "del(" + j +")");
                titlee.setAttribute("id", j + "title");
                ul.setAttribute("id", j + "ul");
                addque.setAttribute("id", j + "addque");
                addque.setAttribute("onclick", "matrixAddque(" + j + ")");
                addop.setAttribute("id", j + "addop");
                addop.setAttribute("onclick", "matrixAddop(" + j + ")");
                sa.setAttribute("id", j + "sa");
                sa.setAttribute("onclick", "matrixSave(" + j + ")");
            }

            if(nexttype == "explain"){
                var indexx = document.getElementById(i);
    
                indexx.setAttribute("id", j);
            }
        }

    }  
    col9.removeChild(x);

    for(i = 0; i < count-1; i++){
        numofoption[i] = numofoption[i+1];
        numofquestion[i] = numofquestion[i+1];
    }

    count = count - 1;

}

//保存问卷至数据库
function mySave(){
    var userID = 981026;
    var title = document.getElementById("title-btn").innerHTML;
    var i = 0;
    var num = numofoption;
    var num2 = numofquestion;
    var question = new Array();

    for(i=1; i<=count; i++){
        var obj = new Object();
        var myindex = document.getElementById(i);
        var type = myindex.getAttribute("class");

        if(type == "single-choice"){
            var op = new Array();

            var h = document.getElementById(i + "title").value;

            for(var j=0; j<num[i-1]; j++){
                var temp = document.getElementById(i + "in" + j);
                op.push(temp.value);
            }

            obj.type = "单项选择";
            obj.index = i;
            obj.option = op;
            obj.content = h;
        }
        
        if(type == "multiple-choice"){
            var op = new Array();

            var h = document.getElementById(i + "title").value;

            for(var j=0; j<num[i-1]; j++){
                var temp = document.getElementById(i + "in" + j);
                op.push(temp.value);
            }

            obj.type = "多项选择";
            obj.index = i;
            obj.option = op;
            obj.content = h;

        }

        if(type == "box-choice"){
            var op = new Array();

            var h = document.getElementById(i + "title").value;

            for(var j=0; j<num[i-1]; j++){
                var temp = document.getElementById(i + "in" + j);
                op.push(temp.value);
            }

            obj.type = "下拉菜单";
            obj.index = i;
            obj.option = op;
            obj.content = h;
        }
        
        if(type == "text"){
            var h = document.getElementById(i + "title").value;

            obj.type = "单项填空";
            obj.index = i;
            obj.content = h;
        }

        if(type == "multiple-text"){
            var quelist = new Array();
            var aque = new Array();
            var h = document.getElementById(i + "title").value;

            for(var j=0; j<num[i-1]; j++){
            	aque[j] = new Object();
                var temp = document.getElementById(i + "in" + j);
                aque[j].content = temp.value;
                aque[j].index = j+1;

                quelist.push(aque[j]);
            }

            obj.type = "多项填空";
            obj.index = i;
            obj.content = h;
            obj.questionlist = quelist;
        }

        if(type == "matrix"){
            var set = document.getElementById(i + "set");
            var form1 = set.childNodes[2];
            var form2 = set.childNodes[4];
            var h = document.getElementById(i + "title").value;

            var temp1 = new Array();
            var temp2 = new Array();

            for(var j=0; j<num2[i-1]; j++){
                var text1 = form1.childNodes[0].childNodes[j].childNodes[0].value;
                temp1.push(text1);
            }
            for(var j=0; j<num[i-1]; j++){
                var text2 = form2.childNodes[0].childNodes[j].childNodes[0].value;
                temp2.push(text2);
            }

            obj.type = "矩阵单选";
            obj.index = i;
            obj.content = h;
            obj.subtitle = temp1;
            obj.option = temp2;
        }

        if(type == "explain"){
            var h= myindex.childNodes[0].childNodes[0].value;

            obj.type = "解释";
            obj.index = i;
            obj.content = h;
        }
                


        question.push(obj);
    }
    	
    var co = new Object();
    co.questionlist = question;

    var content = JSON.stringify(co);

    var status = 0;

    var now = new Date();
    var year = now.getFullYear();
    var month = now.getMonth()+1;
    var date = now.getDate();
    var hour = now.getHours();
    var min = now.getMinutes();
    
    if(min<10){
    	min = "0"+min;
    }

    var nowtime = year+"."+month+"."+date+" "+hour+":"+min;
    	
    var type1 = document.getElementById("type1");
    var type2 = document.getElementById("type2");

    var i1 = type1.selectedIndex;
    var i2 = type2.selectedIndex;

    var tag1 = type1.options[i1].text;
    var tag2 = type2.options[i2].text;

    var cnt = 0;

    $.ajax({
        url:"QuestionUpdateServlet",
        type:"get",
        dataType:"json",
        data:{
        	"userID":userID,
            "title":title,
            "content":content,
            "status":status,
            "publishTime":nowtime,
            "tag1":tag1,
            "tag2":tag2,
            "cnt":cnt
        },
        success:function(data){

        },
        error:function(error){
            console.log(error)
        }
    })

}
