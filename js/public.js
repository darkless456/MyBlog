/* 
 * @Author: darkless
 * @Date:   2015-07-22 14:42:11
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-08-19 21:35:18
 */
'use strict';
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
//load css file
function myLoadCss(file) {
    var head = document.getElementsByTagName("head").item(0);
    var css = document.createElement("link");
    css.rel = "stylesheet";
    css.type = "text/css";
    var tmp = file;
    if (tmp.indexOf("child") >= 0) {
        css.href = "../css/" + file + ".css";
    } else {
        css.href = "css/" + file + ".css";
    }
    css.id = file;
    head.appendChild(css);
}
//get elements' style
function getStyle(obj, attr) {
    if (obj.currentStyle) {
        return obj.currentStyle[attr];
    } else {
        return getComputedStyle(obj, null)[attr];
    }
}
//auto change textarea's height 
function autoTextarea(origin, shadow) {
    origin.onpropertychange = origin.oninput = onChange;

    function onChange() {
        shadow.value = origin.value;
        setHeight();
        setTimeout(setHeight, 0);

        function setHeight() {
            origin.style.height = shadow.scrollHeight + "px";
        }
    }
}