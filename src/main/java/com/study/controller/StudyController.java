package com.study.controller;

import com.study.common.util.CommonUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Controller
public class StudyController {

    @RequestMapping("/study/showMessage.html")
    public String showMessage(Model model, HttpServletRequest req, HttpServletResponse res) {
        model.addAttribute("message","Hello! Spring Web Programming");
        model.addAttribute("combo", CommonUtil.getSelect());
        return "showMessage";
    }

    @RequestMapping("/study/getMessage.html")
    public ModelAndView getMessage(){
        Map map = new HashMap();
        map.put("result","비동기 통신 결과");
        map.put("item","비동기 통신 아이템");
        return new ModelAndView("jsonView",map);
    }
}
