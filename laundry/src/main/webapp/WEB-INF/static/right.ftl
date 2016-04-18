<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
    <META HTTP-EQUIV="Expires" CONTENT="0">
    <meta name="format-detection" content="telephone=no"/>
    <title>左侧导航</title>
    <link rel="stylesheet" href="static/common/css/index.css?v=0.0.2"/>
    <link rel="stylesheet" href="static/common/css/base.css?v=0.0.9"/>
    <link rel="stylesheet" type="text/css" href="static/common/css/style.css"/>
    <script src="static/common/js/basic.js?v=0.5.3"></script>
    <script src="static/common/js/jquery-1.8.2.min.js"></script>
    <script src="static/common/js/iscroll.js"></script>
    <script type="text/javascript" charset="utf-8">
        $(function () {
            //菜单框架自动获取高度
            var doc_H = $(document).height();
            $('.Menu_box').height(doc_H);
            window.onresize = function () {
                var doc_H = $(document).height();
                $('.Menu_box').height(doc_H);
            }
        });
        var myScroll_left;
        function loaded() {
            myScroll_left = new IScroll('#left_Menu', {mouseWheel: true, click: true});
        }
        document.addEventListener('touchmove', function (e) {
            e.preventDefault();
        }, false);
    </script>
</head>
<body onLoad="loaded()">
<div class="Menu_box">
    <div class="left" id="left_Menu">
        <div class="pxui-area">
            <div class="pxui-shoes product-list">
                <div id="js-goodlist" style="position: relative;">
                <#list pageVo.list as e >
                    <a href="javascript:void(0);"
                       style="width:48%;min-width: 0px;height:100%  ">
                        <#list e.fileNames as f>
                            <#if f_index==0>
                                <div  class="img160"
                                     style="background-image: none;width:100%;height: 120px">
                                    <dfn></dfn><img style="max-height: 90px;" src="../../upload/img/${f}"
                                                    onerror="nofind();"/></div>
                            </#if>
                        </#list>
                        <span style="padding-top: 0px;" class="name">${e.name}</span>
                        <span class="price">￥${e.price}</span>
                        <br/>
                        <del class="price">￥${e.oldPrice}</del>
                        <br/>
                        <p style='margin-left:12px' class="hengAddBox"
                           onclick="ProMoveBox(this,'${e._id}@${e.name}@${e.price}@${e.oldPrice}@${e.fileNames[0]}')">
                            加入购物车</p>
                    </a>
                </#list>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>