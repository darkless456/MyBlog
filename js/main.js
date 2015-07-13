/* 
 * @Author: darkless
 * @Date:   2015-07-01 12:19:47
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-07-13 16:40:35
 */
'use strict';
window.onload = function() {
    //argument statement
    var oDiv = document.getElementById("right_part");
    var oArt = getByClass(oDiv, "content") || document.getElementsByClassName("content");
    //content get from server by ajax
    xmlHttp("txt/About Python.txt", oArt[0]);
    xmlHttp("txt/About JavaScript.txt", oArt[1]);
    xmlHttp("txt/About Blog.txt", oArt[2]);
    //load outer css for content
    loadCss("textStyle");
    //load scrolling images
    var oBody = document.getElementsByTagName("body")[0];
    var oDiv_Imgs = getByClass(document, "imgs_div");
    var oUl_Imgs = getByClass(oDiv_Imgs[0], "imgs_ul")[0];
    var aLi_Imgs = oUl_Imgs.getElementsByTagName("li");
    oUl_Imgs.innerHTML += oUl_Imgs.innerHTML;
    var aLi_Len = aLi_Imgs.length;
    oUl_Imgs.style.width = aLi_Imgs[0].offsetWidth * aLi_Len + "px";
    var speed = -1;
    var timer = setInterval(movePics, 30);
    oUl_Imgs.onmouseover = function() {
        oUl_Imgs.style.cursor = "pointer";
        clearInterval(timer);
        oUl_Imgs.onclick = function(ev){
            oBody.style.backgroundImage = "url(" + ev.target.src + ")";
        }
    }
    oUl_Imgs.onmouseout = function() {
        timer = setInterval(movePics, 30);
    }
    //movePictures
    function movePics() {
        if (oUl_Imgs.offsetLeft <= -(oUl_Imgs.offsetWidth / 2)) {
            oUl_Imgs.style.left = 0;
        }
        oUl_Imgs.style.left = oUl_Imgs.offsetLeft + speed + "px";
    }
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
function loadCss(file) {
    var head = document.getElementsByTagName("head").item(0);
    var css = document.createElement("link")
    css.rel = "stylesheet";
    css.type = "text/css";
    css.href = "css/" + file + ".css";
    css.id = file;
    head.appendChild(css);
}
//getbyclass
function getByClass(obj, sClass) {
    var tmp = obj.getElementsByTagName("*");
    var aResult = [];
    for (var i = 0; i < tmp.length; i++) {
        if (tmp[i].className == sClass) {
            aResult.push(tmp[i]);
        }
    }
    return aResult;
}