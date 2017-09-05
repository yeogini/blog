package com.yedam.blog.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class LogAdvice {
	@Pointcut("execution(* com.yedam.blog.biz..*Impl.*(..))")
	public void allPointcut(){}
	@Pointcut("execution(* com.yedam.blog.biz..*Impl.get*(..))")
	public void getPointcut() {}
	
	@Before("allPointcut()")
	public void printLog(JoinPoint jp){
		String method = jp.getSignature().getName();
		System.out.println("로그" +method);
	}
}
