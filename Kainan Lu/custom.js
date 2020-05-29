// index:题号
// numofoption[i]:第i+1题的选项个数
// count:题数

var scbtn = document.getElementById("scbtn");
var mcbtn = document.getElementById("mcbtn");
var count = 0;

var numofoption = new Array();

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

//删除选项
function delop(index, x){
    var ul = document.getElementById(index + "ul");
    var li = document.getElementById("li" + x);
    ul.removeChild(li);
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
        }

    }  
    col9.removeChild(x);

    for(i = 0; i < count-1; i++){
        numofoption[i] = numofoption[i+1];
    }

    count = count - 1;

}