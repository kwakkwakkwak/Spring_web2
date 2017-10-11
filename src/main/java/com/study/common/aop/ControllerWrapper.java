package com.study.common.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Aspect
@Component
public class ControllerWrapper {
    @Pointcut("execution(public * com.study.controller..*(..))")
    public void profileTarget(){}

    @Around("profileTarget() && args(model,req,res)")
    public Object trace(ProceedingJoinPoint joinPoint, Model model,
                        HttpServletRequest req, HttpServletResponse res) throws Throwable{
        String signatureString = joinPoint.getSignature().toShortString();
        System.out.println(signatureString + "시작");
        long start = System.currentTimeMillis();

        try {
            Object result = joinPoint.proceed();
            model.addAttribute("sserver",System.getProperty("spring.profiles.active"));
            return result;
        }finally {
            long finish = System.currentTimeMillis();
            System.out.println(signatureString + "종료");
            System.out.println(signatureString + "실행 시간 :" + (finish - start) + "ms");
        }
    }
}
