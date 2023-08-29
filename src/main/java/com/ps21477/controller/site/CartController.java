package com.ps21477.controller.site;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps21477.service.ParamService;
import com.ps21477.service.ShoppingCartService;



@Controller
@RequestMapping("home")
public class CartController {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	ParamService param;
	
	@RequestMapping("cart")
	public String index(Model model) {
		model.addAttribute("cart", cart);
		return "cart";
	}
	

	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		return "cart";
	}
	
	@RequestMapping("/cart/sub/{id}")
	public String sub(@PathVariable("id") Integer id) {
		cart.sub(id);
		return "cart";
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "cart";
	}

	@RequestMapping("/cart/update")
	public String update() {
		Integer id = param.getInt("id", 0);
		int qty = param.getInt("qty", 0);
		cart.update(id, qty);
		return "cart";
	}

	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "cart";
	}
}