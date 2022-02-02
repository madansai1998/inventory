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
@RequestMapping(path = "/cart")
public class CartController {
	
	
@Autowired
private CartRepository cartRepo;

@Autowired
private CartServices service;


@GetMapping ("/data")
public String displayTable(Model cart) {
	cart.addAttribute("CartItems", cartRepo.findAll());
	return "cart";
	
	}
//private Customer cust = new Customer();
@PostMapping(path="/add") 
public String addNewUser (@RequestParam Integer pid, @RequestParam String pname, @RequestParam Integer pprice,
		@RequestParam Integer quantity, Model model) {

cart_items cart = new cart_items();

cart.setPid(pid);

cart.setPname(pname);
cart.setPprice(pprice);

cart.setQuantity(quantity);

//cart.setTotal_price(total);

cartRepo.save(cart);


return "redirect:/cart/data";
}


//
//@GetMapping ("/item")
//public String showTable(Model item) {
//	item.addAttribute("Item", cartRepo.findAll());
//	return "item";
//	
//	}

@GetMapping(path="/all")
public @ResponseBody Iterable<cart_items> getAllUsers() {
System.out.println("inside all");
return cartRepo.findAll();



}

@PostMapping("/getprice")
public  String editpass(@RequestParam("id")  Integer id, Model model) {
  
  service.upadateepass(id);

  return"redirect:/cart/data";
   
}

}