package rikkei.academy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = {"/"})
public class CaculatorController {
    @GetMapping
    public ModelAndView showIndex(){
        return new ModelAndView("index");
    }
    @PostMapping
    public ModelAndView Calculator(@RequestParam(name="action", required = false) String action,
                             @RequestParam(name="num1") int num1,
                             @RequestParam(name= "num2")int num2, Model model ) {
        ModelAndView modelAndView = new ModelAndView("index");
        String result = "";
        System.out.println(action);
        System.out.println(num1);
        System.out.println(num2);
        switch (action){
            case "add":
                result = String.valueOf(num1 + num2);
                break;
            case "sub":
                result = String.valueOf(num1 -num2);
                break;
            case "mul":
                result = String.valueOf(num1 * num2);
                break;
            case "div":
                if (num2 == 0) {
                    result = "null";
                    break;
                }else {
                    result = String.valueOf(num1/num2);
                    break;
                }
        }
        model.addAttribute("result", result);
        return modelAndView;

    }

}
