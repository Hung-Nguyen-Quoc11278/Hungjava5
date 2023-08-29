package com.ps21477.controller.site;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps21477.dao.AccountDAO;
import com.ps21477.dao.ProductDAO;
import com.ps21477.entity.Product;
import com.ps21477.service.CookieService;
import com.ps21477.service.ParamService;
import com.ps21477.service.SessionService;



@Controller
@RequestMapping("home")
public class ShopController {
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;
	@Autowired
	ProductDAO proDAO;

	// filter sản phẩm
//	@RequestMapping("shop")
//	public String shop(Model model, @RequestParam("field2") Optional<String> field2) {
//		Sort sort = Sort.by(Direction.DESC, field2.orElse("price"));
//		List<Product> list = proDAO.findAll(sort);
//		model.addAttribute("items", list);
//		return "home/shop";
//	}

	@RequestMapping("shop")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {

		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = proDAO.findAll(pageable);
		int currentPage = 1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		return "shop";
	}

	// Submit lọc theo hãng
	@RequestMapping("brand")
	public String locBrand(Model model, @RequestParam("field1") Optional<String> field1,
			@RequestParam("p") Optional<Integer> p) {
		String field = field1.orElse(sessionService.get("field1"));
		sessionService.set("field1", field);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = proDAO.findByCategory(field, pageable);
		model.addAttribute("page", page);
		return "home/brandshop";
	}

	// Submit theo khoang gia
	@RequestMapping("price")
	public String searchGia(Model model, 
			@RequestParam("max") Optional<Integer> max, @RequestParam("p") Optional<Integer> p) {
		Integer minPrice = 0;
		Integer maxPrice = max.orElse(Integer.MAX_VALUE);
		sessionService.set("max", maxPrice);
		sessionService.set("min", minPrice);
		Pageable pageable = PageRequest.of(p.orElse(0), 999);
		Page<Product> page = proDAO.findByPrice(minPrice, maxPrice, pageable);
		model.addAttribute("page", page);
		return "shop";

	}

	@RequestMapping("search")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(sessionService.get("keywords"));
		sessionService.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 9);
		Page<Product> page = proDAO.findByKeywords("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "shop";
	}
}
