/* 
 * @Author: Kevin
 * @Date:   2015-06-11 11:22:10
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-07-02 16:57:57
 */
'use strict';
//获取同类名元素
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
//获取样式
function getStyle(obj, attr) {
    if (obj.currentStyle) {
        return obj.currentStyle[attr];
    } else {
        return getComputedStyle(obj, null)[attr];
    }
}
//绑定事件
function addEvent(obj, ev, fn) {
    if (obj.attachEvent) {
        obj.attachEvent("on" + ev, fn);
    } else {
        obj.addEventListener(ev, fn, false);
    }
}