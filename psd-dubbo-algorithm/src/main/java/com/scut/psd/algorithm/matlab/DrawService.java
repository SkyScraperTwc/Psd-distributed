package com.scut.psd.algorithm.matlab;

import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;
import lombok.extern.java.Log;

import java.io.IOException;

@Log
public class DrawService {
    /**
     * 根据传入的参数画图
     */
    public void draw(LaunchSignal launchSignal, Algorithm algorithm) {
        String threadName = Thread.currentThread().getName();
        log.info("线程:"+threadName+"开始画图：");
        try {
            //睡眠两秒钟以模拟画图功能
            Thread.sleep(2000);
            log.info("画图ing...画图ing...");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        log.info("线程:"+threadName+"结束画图！");
    }

    /**
     * 模拟线程阻塞
     */
    public void waitForFigures() {
        String threadName = Thread.currentThread().getName();
        log.info("线程:"+threadName+"阻塞开始：");
        try {
            System.in.read();
        } catch (IOException e) {
            e.printStackTrace();
        }
        log.info("线程:"+threadName+"释放！");
    }
}

