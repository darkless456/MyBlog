/* 
 * @Author: darkless
 * @Date:   2015-07-01 12:19:47
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-07-10 14:07:37
 */
'use strict';
window.onload = function() {
    //argument statement
    var oDiv = document.getElementById("right_part");
    var oDivCont = getByClass(oDiv, "content");

    //content get from server by ajax
    xmlHttp("txt/About Python.txt", oDivCont[0]);
    xmlHttp("txt/About Javascript.txt", oDivCont[1]);
    xmlHttp("txt/About Blog.txt", oDivCont[2]);

    //load outer css for content
    loadCss("textStyle");
}
//ajax
function xmlHttp(url, obj, fnSucc1) {
    var xmlHttp;
    if (window.XMLHttpRequest) {
        var xmlHttp = new XMLHttpRequest();
    } else {
        var xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    // connect to server
    xmlHttp.open("GET", url, true);
    xmlHttp.send();
    xmlHttp.onreadystatechange = function() {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
            obj.innerHTML = xmlHttp.responseText;
            if (fnSucc1) {
                fnSucc1(xmlHttp.responseText);
            }
        }
    }
}

//loadCss
function loadCss(file){
    var head = document.getElementsByTagName("head").item(0);
    var css = document.createElement("link")
    css.rel = "stylesheet";
    css.type = "text/css";
    css.href = "css/" + file + ".css";
    css.id = file;
    head.appendChild(css);
}