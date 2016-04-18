
package com.mcp.myself.constant;


/**
 * 系统常量
 *
 * @author w44
 */
public class WeiXinConstant {


    public static final String APPID = "wx19cb3495b8f011cc";
    public static final String APPSECRET = "aaa395525e4720e3cbad7ebfc5873887";


    public static final String MCH_ID = "1331736001";
    public static final String DEVICE_INFO = "WEB";
    public static final String NOTIFY_URL = "http://www.mcp8.net/laundry/weixin/dealWeiPay";
    public static final String TRADE_TYPE = "JSAPI";

    public static final String API_SECRET = "&key=b1eea7f5a3c44e528554b530d9ff96be";
    public static final String XIA_DAN = "https://api.mch.weixin.qq.com/pay/unifiedorder";


    public static final String MESSAGE_PAY_ID = "bIXt4NR6RhfGULLgFdAqRUj76rstQzyHyVwlHIE0UAg";
    public static final String MESSAGE_FINISH_ID = "bN1wHaYkmf7fsvnDJGvY2xc7j8uhebw3gJEqTFQOfIU";
    public static final String MESSAGE_CANCEL_ID = "-6-kYKAg_uVWE4UE7AO-7Sb70NSP54TSHx4uOwoSSZ4";


    public static final String QUERY_TOKEN_URL = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + APPID + "&secret=" + APPSECRET;
    public static final String QUERY_USEINFO_URL = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=%ACCESS_TOKEN%&openid=%OPENID%&lang=zh_CN";

}
