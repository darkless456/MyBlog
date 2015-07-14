/* 
 * @Author: darkless
 * @Date:   2015-07-14 15:20:33
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-07-14 16:54:34
 */
'use strict';
window.onload = function() {
    console.log(window.location);
    //navigation bar effects
    var oUl_Nav = getByClass(document, "nav_ul")[0];
    var aLi_Nav = oUl_Nav.getElementsByTagName("li");
    var aA_Nav = oUl_Nav.getElementsByTagName("a");
    for (var i = 0; i < aLi_Nav.length; i++) {
        aLi_Nav[i].index = i;
        aLi_Nav[i].onmouseover = function() {
            aLi_Nav[this.index].id = "mouse";
        }
        aLi_Nav[i].onmouseout = function() {
            aLi_Nav[this.index].id = '';
        }
    }
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