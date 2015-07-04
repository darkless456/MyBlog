/* 
 * @Author: darkless
 * @Date:   2015-06-19 16:35:46
 * @Last Modified by:   darkless
 * @Last Modified time: 2015-07-02 14:43:54
 */
'use strict';

function ajax(url, fnSucc, fnFaild) {
    //1.创建对象
    if (window.XMLHttpRequest) {
        var ajax = new XMLHttpRequest;
    } else {
        var ajax = ActiveXObject(Microsoft.X)
    }
    // console.log(oAjax);
    //2.连接服务器
    //open(方法，文件路径，异步传输)
    oAjax.open("GET", url, true);
    //3.发送请求
    oAjax.send();
    //4.接收返回值
    //onreadystatechange方法
    oAjax.onreadystatechange = function() {
        //readyState == 4 表示服务器与客户端通信完成，但不确定读取是否成功
        if (oAjax.readyState == 4) {
            //==200,表示读取成功
            if (oAjax.status == 200) {
                fnSucc(oAjax.responseText);
            } else {
                if (fnFaild) {
                    fnFaild(oAjax.status);
                }
                // alert("failed" + oAjax.status);
            }
        }
    }
}