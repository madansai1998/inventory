package com.sprint.ProjectIM;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping(path="/vendor") 
public class VendorController {
	
	@Autowired
    VendorRepository vendrep;

    @RequestMapping("/vend")
    public String displaytable(Model model) {
        model.addAttribute("Vendors", vendrep.findAll());
        return "vendor";
    }
    
    @GetMapping(path="/all")
    public @ResponseBody Iterable<Vendor> getAllUsers() {
    System.out.println("inside all");
    return vendrep.findAll();


    }
    
    @RequestMapping("/addinto")
    public String addjps(Model model) {
        
        return "addinto";
    
    }
    @PostMapping(path="/add") 
    public String addNewUser (@RequestParam String vname, @RequestParam String vtype,@RequestParam String vemail,
    		@RequestParam String address,Model model) {
    
    Vendor vend = new Vendor();

    vend.setVname(vname);
    vend.setVtype(vtype);
    vend.setVemail(vemail);
    vend.setAddress(address);
    vendrep.save(vend);
   
    return "redirect:/vendor/vend";
    }
    
    @Autowired
    private VendorService service;
    @PostMapping("/search")
    public  String viewHomePage( @RequestParam("keyword") String keyword, Model model) {
      
      model.addAttribute("Vendors", service.listAll(keyword));
  
      return "vendor";
       
    }
    
    
    @PostMapping("/searchid")
    public  String viewHomePage1( @RequestParam("id") Integer id, Model model) {
      
      model.addAttribute("Vendors", service.listAll(id));
  
      return "vendor";
       
    }
    
    
   
    
    
    @PostMapping("/editname")
    public  String editname(@RequestParam("id")  Integer id, @RequestParam("name") String name, Model model) {
      
      service.upadatevname(name,id);
  
      return"redirect:/vendor/vend";
       
    }
    
   
    
    @PostMapping("/edittype")
    public  String edittype(@RequestParam("id")  Integer id, @RequestParam("type") String type, Model model) {
      
      service.upadatevtype(type,id);
  
      return"redirect:/vendor/vend";
       
    }
    
 
    
    @PostMapping("/editemail")
    public  String editemail(@RequestParam("id")  Integer id, @RequestParam("email") String email, Model model) {
      
      service.upadatevemail(email,id);
  
      return"redirect:/vendor/vend";
       
    }
    
    
    
    @PostMapping("/editaddress")
    public  String editaddress(@RequestParam("id")  Integer id, @RequestParam("address") String address, Model model) {
      
      service.upadatevaddress(address,id);
  
      return"redirect:/vendor/vend";
       
    }
    
    @PostMapping(path="/delete")
    public String deleteUsers(@RequestParam String id ) {
    int ids = Integer.parseInt(id);
    
    vendrep.deleteById(ids);
    return"redirect:/vendor/vend";
    }
    
   

}
