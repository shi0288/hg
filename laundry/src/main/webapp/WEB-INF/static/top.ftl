<#include "header.ftl">
<body>
<div data-role="page" data-dom-cache="false" data-fullscreen="false">
    <div data-role="header" data-position="fixed">
        <div class="com-header-area">
            <a  href="javascript:void(0)" onclick="window.parent.location='main.html'"  class="com-header-logo"></a>
            <dfn name="schoolName" id="schoolName" style="float: left; margin: 12px 0 8px 0px;font-size: 15px;font-style: normal;"></dfn>

            <a href="javascript:void(0)" style="float: left; margin: 12px 0 8px 0px;font-size: 15px;color: #AF4141;" onclick="window.parent.location='school.html'" >[切换]</a>
            <p>
                <a href="javascript:toAmount()" class="com-header-user ">
                    <del></del>
                </a>
                <i></i>
                <a href="javascript:void(0)"  onclick="window.parent.location='cart.html'" class="com-header-cart"><b name="header-cart-num" id="header-cart-num"></b>
                    <del></del>
                </a>
            </p>
            <div class="clear"></div>
        </div>
    </div>
</body>