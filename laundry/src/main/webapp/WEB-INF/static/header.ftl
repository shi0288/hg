<!DOCTYPE html>
<html>
<head>
    <title>邻家优购</title>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
    <META HTTP-EQUIV="Expires" CONTENT="0">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="static/common/css/base.css?v=0.1.0"/>
    <script src="static/common/js/jquery-1.8.2.min.js"></script>
    <script src="static/common/js/jquery.touchslider.min.js"></script>
    <script src="static/common/js/jquery.Spinner.js"></script>
    <script src="static/common/js/basic.js?v=0.5.5"></script>
    <link rel="stylesheet" href="static/common/css/index.css?v=0.0.3"/>
    <script>
        var openId = "${openId!''}";
        var nickName = "${nickName!''}";
        if (openId == '') {
        } else {
            localStorage.setItem("openId", openId);
            localStorage.setItem("name", openId);
            localStorage.setItem("nickName", nickName);
        }
        jQuery(function ($) {
            var order = localStorage.getItem("order");
            if (!order) {
                $("#header-cart-num").html(0);
            } else {
                order = order.split(";");
                $("#header-cart-num").html(order.length);
            }
            var schoolName = localStorage.getItem("schoolName");


            if (!schoolName) {
                $("#schoolName").html('请选择');
            } else {
                $("#schoolName").html(schoolName.split(">")[1]);
            }
            $(".return").click(function(){
                history.go(-1);
            });
        });
    </script>
</head>
