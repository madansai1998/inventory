package com.sprint.ProjectIM;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping(path="/employ") 
public class EmployeeController {
	
	@Autowired
	EmployeeRepository emprep;

    @RequestMapping("/emp")
    public String displaytable(Model model) {
        model.addAttribute("employees", emprep.findAll());
        return "emp";
    }
    
    @GetMapping(path="/all")
    public @ResponseBody Iterable<employee> getAllUsers() {
    System.out.println("inside all");
    return emprep.findAll();


    }
    
    @RequestMapping("/addemp")
    public String addjps(Model model) {
        
        return "addemp";
    
    }
    @PostMapping(path="/add") 
    public String addNewUser (@RequestParam String ename, @RequestParam String erole,@RequestParam String eemail,
    		@RequestParam String eaddress,@RequestParam String euserid,@RequestParam String epass,Model model) {
    
    employee empob = new employee();

    empob.setEname(ename);
    empob.setErole(erole);
    empob.setEemail(eemail);
    empob.setEaddress(eaddress);
    empob.setEuserid(euserid);
    empob.setEpass(epass);
    emprep.save(empob);
   
    return "redirect:/index";
    }
    
    
    
    
    @Autowired
    private EmployeeServices service;
    @PostMapping("/search")
    public  String viewHomePage( @RequestParam("keyword") String keyword, Model model) {
      
      model.addAttribute("employees", service.listAll(keyword));
  
      return "emp";
       
    }
    
    
    @PostMapping("/searchid")
    public  String viewHomePage1( @RequestParam("id") Integer id, Model model) {
      
      model.addAttribute("employees", service.listAll(id));
  
      return "emp";
       
    }
    
    
   
    
    
    @PostMapping("/editname")
    public  String editname(@RequestParam("id")  Integer id, @RequestParam("name") String name, Model model) {
      
      service.upadateename(name,id);
  
      return"redirect:/employ/emp";
       
    }
    
   
    
    @PostMapping("/editrole")
    public  String editrole(@RequestParam("id")  Integer id, @RequestParam("role") String role, Model model) {
      
      service.upadateerole(role,id);
  
      return"redirect:/employ/emp";
       
    }
    
 
    
    @PostMapping("/editemail")
    public  String editemail(@RequestParam("id")  Integer id, @RequestParam("email") String email, Model model) {
      
      service.upadateeemail(email,id);
  
      return"redirect:/employ/emp";       
    }
    
    
    
    @PostMapping("/editaddress")
    public  String editaddress(@RequestParam("id")  Integer id, @RequestParam("address") String address, Model model) {
      
      service.upadateeaddress(address,id);
  
      return"redirect:/employ/emp";
       
    }
    
    @PostMapping("/edituserid")
    public  String edituid(@RequestParam("id")  Integer id, @RequestParam("userid") String userid, Model model) {
      
      service.upadateeuserid(userid,id);
  
      return"redirect:/employ/emp";
       
    }
    @PostMapping("/editpass")
    public  String editpass(@RequestParam("id")  Integer id, @RequestParam("pass") String pass, Model model) {
      
      service.upadateepass(pass,id);
  
      return"redirect:/employ/emp";
       
    }
    
    @PostMapping(path="/delete")
    public String deleteUsers(@RequestParam String id ) {
    int ids = Integer.parseInt(id);
    
    emprep.deleteById(ids);
    return"redirect:/employ/emp";
    }
    
    @RequestMapping("/home")
public String home(Model model) {
        
        return "home";
    
    }
    
    @RequestMapping("/emplogin")
public String login(Model model) {
        
        return "login";
    
    }
    
    @RequestMapping("/failed")
    public String failed(Model model) {
            
            return "failed";
        
        }
    
    
    
    
    @PostMapping("/login")
    public  String getuser( @RequestParam String userid,@RequestParam String password) {
    	
    	if(service.get(userid)==null) {
    		return "failed";
    	}
    	else {
    		if(service.get(userid).getEpass().equals(password)) {
    			return "redirect:/employ/empdash";
    		}
    		else {
    			return "failed";
    		}
    	}
      
      
           
    }
    
    @RequestMapping("/empdash")
    public String dash(Model model) {
            
            return "empdash";
        
        }

}
