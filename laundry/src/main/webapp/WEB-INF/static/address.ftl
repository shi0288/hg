<#include "header.ftl">
<#include "title.ftl">

<script>

    jQuery(function ($) {

        var name = localStorage.getItem("name");
        if (name) {
            $.ajax({
                type: "POST",
                url: "manage/addressList.json?timestamp=" + new Date().getTime(),
                dataType: "json",
                cache: false,
                data: {
                    name: name
                },
                success: function (rst) {
                    if (rst.result) {
                        $.each(rst['datas'], function (key, val) {
                            var obj = JSON.parse(val);
                            var checkStr = '';
                            if (obj.status == 0) {
                                checkStr = '<div class="ia-l"></div>';
                            }
                            var subFun = "selectAddress('" + obj._id.$oid + "')";
                            var subAccountFun = "selectAccountAddress('" + obj._id.$oid + "',this)";
                            var stackObj = document.referrer;
                            var isAcount = localStorage.getItem("acount");
                            if (stackObj.indexOf("acount.html") != -1) {
                                localStorage.setItem("acount", "000");
                                subFun = subAccountFun;
                            } else if (isAcount != null || isAcount != undefined) {
                                subFun = subAccountFun;
                            }
                            var str = '<div class="item-addr bdb-1px">' + checkStr +
                                    '<div class="ia-m m ia-m78" onclick=' + subFun + '>' +
                                    '<div class="mt_new">' + '<span>' + obj.userName + '</span>&nbsp&nbsp&nbsp' + '<strong>' + obj.mobile + '</strong></div><div class="mc">' +
                                    '<p>' + obj.provice + obj.where + '</p> </div></div><a class="ia-r" href="updateAddress.html?id=' + obj._id.$oid + '"><span class="iar-icon"></span> </a></div>';
                            $(".address").append(str);
                        });
                    } else {
                        alert("获取收货地址失败，请重试");
                    }
                },
                error: function () {
                    alert('请求出错');
                }
            });
        } else {
            window.location.href='login.html';
        }
    })

</script>

<div data-role="content">
    <div class="page-role container-fluid good-page" style="margin-top:15px;">
        <div class="page-title">
            <a data-rel="back" class="return">返 回</a>
            地址列表
        </div>
        <div class="well address">

        </div>
        <div class="pay-btn" style="background:#f8f8f8;">
            <a href="editAddress.html" style="color: #fff;" class="btn1 tip-btn"><i class="plus">+</i>新建地址</a>
        </div>
    </div>
    <!-- /content -->
</div>

</body>
</html>