package com.sprint.ProjectIM;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping(path="/product") 
public class ProductController {
	
	@Autowired
	private ProductRepository prorep;
	@RequestMapping("/pro")
    public String home(Model model) {
         model.addAttribute("product", prorep.findAll());
         return "products";
    }
	
	
	@RequestMapping("/addpro")
    public String addjps(Model model) {
        
        return "addpro";
    
    }
	
	@PostMapping("/added")
	public String inserted( @RequestParam Integer qpro ,  @RequestParam String pdesc,
			@RequestParam String pname, @RequestParam Integer pprice, Model model) {
		Product pro = new Product();
	
	
		pro.setPdesc(pdesc);
		pro.setPname(pname);
		pro.setPprice(pprice);
		pro.setQpro(qpro);
		prorep.save(pro);
		
		return "redirect:/product/pro";
	}

}
