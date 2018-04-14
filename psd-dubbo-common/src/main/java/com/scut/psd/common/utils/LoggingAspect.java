package com.scut.psd.common.utils;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoggingAspect {

	@Pointcut("execution(public * com.scut.psd.api.service.*.*(..))")
	public void log(){}

	 @Before(value = "log()")
	 public void beforeAllMethod(JoinPoint joinPoint) {
//		 String methodName = joinPoint.getSignature().getName();
//		 log.info("The method " + methodName + " begin!");
	 }

	 @After(value = "log()")
	 public void afterAllMethod(JoinPoint joinPoint){
//		 String methodName = joinPoint.getSignature().getName();
//		 log.info("The method " + methodName + " end!");
	 }
}
