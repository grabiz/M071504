/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.springmvcuser.controller;

import com.mycompany.springmvcuser.entities.UserEntity;
import com.mycompany.springmvcuser.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author iviettech
 */
@Controller
public class UserController {
    
    @Autowired
    private UserService userService;
    
    
    @RequestMapping(value="/home")
    public ModelAndView ShowAllUser(){
        ModelAndView mv = new ModelAndView();
        mv.addObject("listUser", userService.findAllUser());
        mv.addObject("user", new UserEntity());
        mv.setViewName("home");
        return mv;
    }
    
    @RequestMapping(value="/updateForm",method =RequestMethod.POST)
    public ModelAndView showUpdateForm(UserEntity user){
      ModelAndView mv = new ModelAndView();
      mv.addObject("user",user);
      mv.setViewName("updateForm");
      return mv;
    }
    
    @RequestMapping(value="update", method = RequestMethod.POST)
    public String updateUser (UserEntity user,Model model)
    {  
       String nameView="updateForm"; 
       UserEntity result = userService.insertAndUpdate(user);
       if(result!=null)
       {
           nameView="redirect:/home";
           return nameView; 
        }
       else{
          model.addAttribute("message","update user error.");
          return nameView;
       }
    }
}
