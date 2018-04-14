package com.scut.psd.provider;

import lombok.extern.java.Log;
import org.springframework.context.support.ClassPathXmlApplicationContext;

@Log
public class ServiceLauncher{

    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
                "classpath:config/spring-service.xml");
        context.start();

        log.info("psd-dubbo-service module launcher success!");

        synchronized (ServiceLauncher.class) {
            while (true){
                try {
                    ServiceLauncher.class.wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
