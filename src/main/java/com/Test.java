package com;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {
    public static void main(String[] args)
    {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//定义格式，不显示毫秒
        Timestamp now = new Timestamp(System.currentTimeMillis());
//获取系统当前时间
        String str = df.format(now);

    }

}
