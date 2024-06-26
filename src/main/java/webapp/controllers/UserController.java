package webapp.controllers;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import webapp.models.User;
import webapp.services.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String crateUser(@ModelAttribute("user") User user){
        userService.addUser(user);
        return "redirect:/";
    }

    @RequestMapping(value = "/loginUser", method = RequestMethod.POST)
    public String loginUser(@ModelAttribute("user") User user, HttpSession session){
        User userByEmailAndPassword = userService.getUserByEmailAndPassword(user);
        if(userByEmailAndPassword!=null){
            session.setAttribute("user", userByEmailAndPassword);
            return "redirect:/customer-home";
        }
        return "redirect:/";
    }

}
