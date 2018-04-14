package com.scut.psd.common.utils;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class ArithUtils {

    /**
     * 加法运算
     * @param value1
     * @param value2
     * @return
     */
    public static double add(double value1,double value2){
        BigDecimal b1 = new BigDecimal(value1);
        BigDecimal b2 = new BigDecimal(value2);
        return b1.add(b2).doubleValue();
    }

    /**
     * 减法运算
     * @param value1
     * @param value2
     * @return
     */
    public static double subtract(double value1, double value2){
        BigDecimal b1 = new BigDecimal(value1);
        BigDecimal b2 = new BigDecimal(value2);
        return b1.subtract(b2).doubleValue();
    }

    /**
     * 乘法运算
     * @param value1
     * @param value2
     * @return
     */
    public static double multiply(double value1, double value2){
        BigDecimal b1 = new BigDecimal(value1);
        BigDecimal b2 = new BigDecimal(value2);
        return b1.multiply(b2).doubleValue();
    }

    /**
     * 除法运算
     * @param value1
     * @param value2
     * @param scale
     * @return
     * @throws IllegalAccessException
     */
    public static double divide(double value1, double value2, int scale, RoundingMode roundingMode) throws IllegalAccessException{
        //如果精确范围小于0，抛出异常信息
        if(scale<0){
            throw new IllegalAccessException("精确度不能小于0");
        }
        BigDecimal b1 = new BigDecimal(value1);
        BigDecimal b2 = new BigDecimal(value2);
        return b1.divide(b2, scale, roundingMode).doubleValue();
    }

}
