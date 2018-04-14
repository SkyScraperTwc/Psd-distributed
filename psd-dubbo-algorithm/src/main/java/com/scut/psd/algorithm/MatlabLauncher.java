package com.scut.psd.algorithm;

import lombok.extern.java.Log;
import org.springframework.context.support.ClassPathXmlApplicationContext;

@Log
public class MatlabLauncher {

    public static void main(String[] args) {

        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
                "classpath:config/spring-algorithm.xml");
        context.start();

        log.info("psd-dubbo-algorithm module launcher success!");

        synchronized (MatlabLauncher.class) {
            while (true){
                try {
                    MatlabLauncher.class.wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
