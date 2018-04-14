package com.scut.psd.algorithm.matlab.impl;

import com.scut.psd.algorithm.design.strategy.Context;
import com.scut.psd.algorithm.matlab.DrawThread;
import com.scut.psd.api.algorithm.MatlabComputeService;
import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("matlabComputeService")
public class MatlabComputeServiceImpl implements MatlabComputeService {

    @Autowired
    private ThreadPoolTaskExecutor poolTaskExecutor;

    @Override
    public Map<String, List<String>> compute(LaunchSignal launchSignal, Algorithm algorithm) {
        //启动一条画图线程
        poolTaskExecutor.execute(new DrawThread(launchSignal, algorithm));

        //工厂模式
//        AlgorithmProduct algorithmProduct = AlgorithmFactory.createAlgorithmProduct(algorithm);
//        return algorithmProduct.getCalculateResult(launchSignal, algorithm);

        //策略模式
        Context context = new Context();
        return context.executeOperation(launchSignal, algorithm);
    }
}
