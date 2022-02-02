package com.sprint.ProjectIM;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path="/admin") 
public class AdminController {
	@Autowired
	AdminRepository adrep;
	
	@Autowired
	AdminServices service;
	
	  @RequestMapping("/adminlogin")
	  public String login(Model model) {
	          
	          return "adminlogin";
	      
	      }
	      
	  
	  @RequestMapping("/adminfail")
	  public String fail(Model model) {
	          
	          return "adminfail";
	      
	      }
	      
	      
	      @PostMapping("/login")
	      public String getuser( @RequestParam String userid,@RequestParam String password) {
	      	
	      	if(service.get(userid)==null) {
	      		return "adminfail";
	      	}
	      	else {
	      		if(service.get(userid).getApassword().equals(password)) {
	      			return "home";
	      		}
	      		else {
	      			return "adminfail";
	      		}
	      	}
	        
	        
	             
	      }
	      
	      
	      @RequestMapping("/addadmin")
	      public String addjps(Model model) {
	          
	          return "addad";
	      
	      }
	      @PostMapping(path="/add") 
	      public @ResponseBody String addNewUser (@RequestParam String name, @RequestParam String email,@RequestParam String userid,
	      		@RequestParam String password) {
	      
	      admin empob = new admin();

	      empob.setAname(name);
	      empob.setAemail(email);
	      empob.setAuserid(userid);
	      empob.setApassword(password);
	     
	      adrep.save(empob);
	     
	      return "redirect:/employ/emp";
	      }

	

}
