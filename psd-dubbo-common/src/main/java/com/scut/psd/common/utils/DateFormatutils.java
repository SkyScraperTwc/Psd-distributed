package com.scut.psd.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatutils {
    public static String transform(Date date){
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return formatter.format(date);
    }
}
