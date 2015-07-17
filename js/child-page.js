/* 
 * @Author: darkless
 * @Date:   2015-07-14 15:20:33
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-07-16 17:42:52
 */
'use strict';
$(document).ready(function() {
    //navigation bar effects
    var oUl_Nav = $("ul.nav_ul")[0];
    var aLi_Nav = $("li.nav_li");
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
 });