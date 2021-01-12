package com.rhm.demo.contollers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MainController {


    @GetMapping("/your_server")
    public String home(HttpSession session){
        if(session.getAttribute("count") == null) {
            session.setAttribute("count",  0);
        }
        else {
            Integer count = (Integer) session.getAttribute("count");
            session.setAttribute("count",  count + 1);
        }

        return "index";
    }



    @GetMapping("/your_server/counter")
    public String counter(Model model, HttpSession session){
        Integer count = (Integer) session.getAttribute("count");
        model.addAttribute("c", count);
        return "counter";
    }



}