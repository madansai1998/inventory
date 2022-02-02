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
@RequestMapping(path="/unit") 
public class UnitController {
	
	@Autowired
	private UnitRepository unitrep;
	
	@RequestMapping("/addunit")
    public String addjps(Model model) {
        
        return "addunit";
    
    }
    @PostMapping(path="/add") 
    public @ResponseBody String addNewUser (@RequestParam String name,Model model) {
    
    unit vend = new unit();

    vend.setUnit_name(name);
   
    unitrep.save(vend);
   
    return "redirect:/unit/all";
    }
    
    @GetMapping(path="/allview")
    public @ResponseBody Iterable<unit> getAllUsers() {
    System.out.println("inside all");
    return unitrep.findAll();
    }
    
    
    @RequestMapping("/all")
    public String displaytable(Model model) {
        model.addAttribute("units", unitrep.findAll());
        return "unit";
    }

}
