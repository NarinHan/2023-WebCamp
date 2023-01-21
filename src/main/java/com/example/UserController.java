package com.example;

import com.example.DTO.UserDTO;
import com.example.Service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    UserServiceImpl userService;

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    /** 로그인 계정 체크 **/
    @RequestMapping(value = "/logincheck", method = RequestMethod.POST)
    public String loginCheck(HttpSession session, UserDTO dto) {
        String returnURL = "";
        if(session.getAttribute("login") != null) {
            session.removeAttribute("login");
        }
        UserDTO logindto = userService.getUser(dto);
        if(logindto != null) {
            System.out.println("로그인 성공");
            returnURL = "redirect:/board";
        } else {
            System.out.println("로그인 실패");
            returnURL = "redirect:/";
        }
        return returnURL;
    }

    /** 로그아웃 **/
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    /** 로그인 페이지에서 "Sign In" 클릭 시 이동하는 회원가입 페이지 **/
    @RequestMapping(value = "/signinform")
    public String signInRequest() {
        return "signinform";
    }

    /** 회원가입 : signinform 페이지에서 작동하는 form action **/
    @RequestMapping(value = "/signin", method = RequestMethod.POST)
    public String signIn(UserDTO dto) {
        if(userService.insertUser(dto) == 0) {
            System.out.println("회원가입 실패");
        } else {
            System.out.println("회원가입 성공");
        }
        return "login";
    }

}