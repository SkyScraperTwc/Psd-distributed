package com.scut.psd.algorithm.matlab;

import com.scut.psd.common.utils.ArithUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ComputeService {

    public Map<String,List<String>> getComputeResult(int scale){

        List<String> dataA = new ArrayList<>();
        List<String> dataB = new ArrayList<>();
        List<String> dataC = new ArrayList<>();
        List<String> dataD = new ArrayList<>();

        //设置数据体量为100
        for (int i = 0; i < 100; i++) {
            /**运算工具类ArithUtils*/
            dataA.add(String.valueOf(ArithUtils.multiply(Math.random(), scale)).substring(0,8));
            dataB.add(String.valueOf(ArithUtils.multiply(Math.random(), scale)).substring(0,8));
            dataC.add(String.valueOf(ArithUtils.multiply(Math.random(), scale)).substring(0,8));
            dataD.add(String.valueOf(ArithUtils.multiply(Math.random(), scale)).substring(0,8));
        }

        Map<String,List<String>> resultMap = new HashMap<>();
        resultMap.put("dataA",dataA);
        resultMap.put("dataB",dataB);
        resultMap.put("dataC",dataC);
        resultMap.put("dataD",dataD);

        return resultMap;
    }

}
