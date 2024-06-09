package springmvccrud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import springmvccrud.dao.ProductDao;
import springmvccrud.model.Product;

@Controller
public class MyController {
	@Autowired
	private ProductDao productDao;
	@RequestMapping("/home")
	public String home(Model m) {
		List<Product> products = productDao.getProducts();
		m.addAttribute("products",products);
		return "index";
	}
	@RequestMapping("/addproducts")
	public String addProduct(Model m) {
		m.addAttribute("title","Add Product");		
		return "addProductForm";
	}
	@RequestMapping("/handleproduct")
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
	}
	@RequestMapping("/delproduct/{id}")
	public RedirectView delProduct(@ModelAttribute Product product,HttpServletRequest request,@PathVariable("id") int p) {
		productDao.delProduct(p);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
	}
	@RequestMapping("/upproduct/{id}")
	public String upProduct(@ModelAttribute Product product,HttpServletRequest request,@PathVariable("id") int p,Model m) {
		Product product1 = this.productDao.getSingleProduct(p);
		m.addAttribute(product1);
		return "updateForm";
	}
}
