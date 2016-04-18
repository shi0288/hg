<#include "header.ftl">
<#include "title.ftl">

<script>

    jQuery(function ($) {
        var order = localStorage.getItem("order");
        if (!order) {
            var str = '<p style="text-align: center">购物车里是空的，请去挑选<a style="color: #003399;text-decoration: underline" href="main.html">需要的商品</a>吧！</p>';
            //没有内容
            $("#proList").append(str);
        } else {
            order = order.split(";");
            for (var i = 0; i < order.length; i++) {
                var o = order[i];
                o = JSON.parse(o);
                var str = '<li class="proOne">' +
                        '<input  type="hidden"  name="proId"  value="' + o.proId + '"  />' +
                        '<table><tr>' +
                        '<td width="15%"><img  src="../../upload/img/' + o.fileName + '" width="52" height="44"></td>' +
                        '<td width="65%" id="_content">' +
                        '<p>' + o.name + '</p>' +
                        '<p><span class="lse">￥' + o.price + '</span>' +
                        '<span class="pl15">数量：<div class="Spinner" id="' + o.proId + '" style="margin-top:8px"></div></span></p>' +
                        '</td>' +
                        '<td width="10%" valign="middle"><a href="#" data-id="' + o.proId + '" class="del">删除</a></td>' +
                        '<td width="10%" id="_check"> <input data-role="none" type="checkbox" class="checkbox checked"  name="check_item" id="check_item"></td>' +
                        '</tr></table></li>'
                $("#proList").append(str);
                $("#" + o.proId).Spinner({value: o.numbers, min: 1, len: 4, max: 1000});
            }
        }
        dealPrice();
        //单独选择某一个
        $("input[name='check_item']").click(function () {
            if ($(this).attr("class") != "checkbox") {
                $(this).removeClass("checked");
                $("#box_all").removeClass("checked");
            } else {
                $(this).addClass("checked");
                var is = true;
                $("input[name='check_item']").each(function (index) {
                    if ($(this).attr("class") == "checkbox") {
                        is = false;
                        return false;
                    }
                });
                if (is) {
                    $("#box_all").addClass("checked");
                }
            }
            dealPrice();
        });
        $(".del").click(function () {
            var proId = $(this).attr("data-id");
            removeStorage(proId);
            $(this).parents('.proOne').remove();
            var num = parseInt($("#header-cart-num").html()) - 1;
            $("b[name='header-cart-num']").each(function (index) {
                $(this).html(num);
            });
            var is = true;
            $("input[name='check_item']").each(function (index) {
                if ($(this).attr("class") == "checkbox") {
                    is = false;
                    return false;
                }
            });
            if (is) {
                $("#box_all").addClass("checked");
            }
            dealPrice();
        });
        //全选
        $("#check_all,#box_all").click(function () {
            if ($(this).attr("class") != "checkbox") {
                $("input[name='check_item'],#check_all,#box_all").removeClass("checked");
            } else {
                $("input[name='check_item'],#check_all,#box_all").addClass("checked");
            }
            dealPrice();
        });

    });


</script>

<div data-role="content">

    <div class="page-role container-fluid good-page" style="margin-top:15px">
        <div class="page-title">
            <a data-rel="back" class="return">返 回</a>
            商品详情
            <a href="#" onclick="removeAll()">全部清空<i></i></a>
        </div>
        <div class="well cart" style="padding: 10px;">
            <ul id="proList">
            </ul>
        </div>

        <div class="cart_bg">
            <table width="100%" border="0">
                <tbody>
                <tr>
                    <td width="3%"></td>
                    <td width="25%"><input data-role="none" type="checkbox" class="checkbox checked" id="box_all">
                        全选
                    </td>
                    <td width="49%">
                        <p><span class="pl15">金额合计：</span><span class="ff6">￥0.00</span><br/>
                            <span class="pl15"> <span id="ff7"  style="display: none">(含外送费)</span><span id="ff8" style="display: none;color: red">(免外送费)</span></span>
                        </p>
                    </td>
                    <td width="20%">
                        <button onclick="toConform()" data-role="none"
                                class="submit">结算
                        </button>
                    </td>
                    <td width="3%"></td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>
    <!-- /content -->
</div>

</body>
</html>