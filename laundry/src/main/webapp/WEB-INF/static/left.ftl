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

    <link rel="stylesheet" type="text/css" href="static/common/css/style.css">
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
        <div id="scroller">
            <ul>
            <#list mainPro as e>
                <#if id??>
                    <li><a <#if e._id==id>class="red" </#if> href="right.html?status=0&mainProId=${e._id}&sortStr=jump&orderBy=-1"
                              target="right">&nbsp;&nbsp;${e.name}</a></li>
                    <#list e.sortList as s>
                        <li><a <#if s._id==id>class="red" </#if> style="margin-left: 10px;" href="right.html?status=0&sortProId=${s._id}&sortStr=jump&orderBy=-1"
                               target="right">${'>'+s.name}</a></li>
                    </#list>
                <#else>
                    <li><a  href="right.html?status=0&mainProId=${e._id}&sortStr=jump&orderBy=-1"
                              target="right">&nbsp;&nbsp;${e.name}</a></li>
                    <#list e.sortList as s>
                        <li><a  style="margin-left: 10px;" href="right.html?status=0&sortProId=${s._id}&sortStr=jump&orderBy=-1"
                               target="right">${'>'+s.name}</a></li>
                    </#list>
                </#if>
            </#list>
            </ul>
        </div>
    </div>

</div>
<script>
    $(function () {
        $(".left ul li a").click(function () {
            $(this).addClass("red").parent("li").siblings("li").find("a").removeClass("red");
        })
    })
</script>
</body>
</html>