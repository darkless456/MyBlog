/* 
* @Author: darkless
* @Date:   2015-07-22 14:42:11
* @Last Modified by:   darkless
* @Last Modified time: 2015-07-23 16:06:32
*/

'use strict';

//loadCss
function myLoadCss(file) {
    var head = document.getElementsByTagName("head").item(0);
    var css = document.createElement("link");
    css.rel = "stylesheet";
    css.type = "text/css";
    var tmp = file;
    if(tmp.indexOf("child")>=0){
        css.href = "../css/" + file + ".css";
    } else{
        css.href = "css/" + file + ".css";
    }
    css.id = file;
    head.appendChild(css);
}

//getStyle
function getStyle(obj, attr){
    if(obj.currentStyle){
        return obj.currentStyle[attr];
    } else{
        return getComputedStyle(obj, null)[attr];
    }
}