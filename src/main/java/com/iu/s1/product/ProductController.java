package com.iu.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/product/*")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "list")
	public String getProductList() throws Exception{
		System.out.println("Product List");
		
		List<ProductDTO> ar = productService.getProductList();
		System.out.println(ar.size() > 0);
		
		return "product/productList";
	}
	
	//getProductDetail
	@RequestMapping(value = "detail")
	public String getProductDetail() {
		System.out.println("Product Detail");
		return "product/productDetail";
	}
	
	@RequestMapping(value = "productAdd")
	public void getProductAdd() {
		System.out.println("Product Add");
	}
	
	@RequestMapping(value = "update")
	public ModelAndView getProductUpdate() {
		System.out.println("Product Update");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/productUpdate");
		return mv;
	}
	
}
