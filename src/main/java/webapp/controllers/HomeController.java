package webapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

    @RequestMapping("/sign-up")
    public String getSignUpPage(){
        return "sign-up";
    }

    @RequestMapping("/")
    public String getSignInPage(){
        return "sign-in";
    }

    @RequestMapping("/customer-home")
    public String goToCustomerHome(){
        return "customer-home";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("user");
        return "redirect:/";
    }
}
