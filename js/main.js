/* 
 * @Author: darkless
 * @Date:   2015-07-01 12:19:47
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-07-08 16:06:06
 */
'use strict';
window.onload = function() {
    var oDiv = document.getElementById("right_part");
    var oDivPy = getByClass(oDiv, "py")[0];
    var oDivJs = getByClass(oDiv, "js")[0];
    var oDivBl = getByClass(oDiv, "blog")[0];
    console.log(oDiv);
    console.log(oDivPy);
    console.log(oDivJs);
    console.log(oDivBl);
    //create a object of ajax
    xmlHttp("txt/About Blog.txt", oDivBl, function(){
        alert("xmlHttp.responseText");
    });
    xmlHttp("txt/About Python.txt", oDivPy);
    xmlHttp("txt/About Javascript.txt", oDivJs);
}

function xmlHttp(url, obj, fnSucc1) {
    var xmlHttp;
    if (window.XMLHttpRequest) {
        var xmlHttp = new XMLHttpRequest();
    } else {
        var xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    // console.log(xmlHttp);
    // connect to server
    xmlHttp.open("GET", url, true);
    xmlHttp.send();
    xmlHttp.onreadystatechange = function() {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
            obj.innerHTML = xmlHttp.responseText;
            obj.style.lineHeight = 30 + "px";
            // var arg1 = xmlHttp.responseText;
            fnSucc1(xmlHttp.responseText);
            // alert(fnSucc);
        }
    }
}
//Text_Output
//oDivPy.innerHTML = 
//oDivJs.innerHTMl = 
//oDivBl.innerHTML =