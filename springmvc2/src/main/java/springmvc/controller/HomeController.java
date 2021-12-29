package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedCaseInsensitiveMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import springmvc.dao.EmployeeDao;
import springmvc.pojo.Employee;

@Controller
public class HomeController {
	
	@RequestMapping("/dash")
	public ModelAndView dashboard(HttpServletRequest request) {
		if(request.getSession().getAttribute("isLogin")!=null) {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("dashboard");
			return mv;
		}
		else {
			return new ModelAndView("redirect:" + "login");
		}
	}
	
	
	@RequestMapping(path="/signup")
	public String signUp() {
		return "register";
	}
	
	@RequestMapping(path="/login")
	public ModelAndView login(HttpServletRequest request) {
		
		if(request.getSession().getAttribute("isLogin")!=null) {
			return new ModelAndView("redirect:" + "dash");
		}
		else {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("login");
			return mv;
		}
	}
	
	@RequestMapping(path="/logout")
	public ModelAndView logout(HttpServletRequest request) {
		request.getSession().removeAttribute("sessionEmail");
		request.getSession().removeAttribute("isLogin");
		return new ModelAndView("redirect:" + "login");
	}
	
	@RequestMapping(path="/processlogin")
	public ModelAndView processLogin(@RequestParam("email") String email,
		@RequestParam("password") String password, HttpServletRequest request) {
		System.out.println("email : "+email);
		System.out.println("password : "+password);
//		model.addAttribute("name", "Yogendra Rajput G");
		//return "dashboard";
		request.getSession().setAttribute("sessionEmail", email);
		request.getSession().setAttribute("isLogin", "yes");
		
		ApplicationContext ctx=new ClassPathXmlApplicationContext("config.xml");  
		EmployeeDao dao=(EmployeeDao)ctx.getBean("edao");
		Employee e = new Employee();
		e.setEmail(email);
		ArrayList<?> map = (ArrayList<?>) dao.getLoginDetails(e);
		ModelAndView mv = new ModelAndView();
		for(int i=0;i<map.size();i++){
			LinkedCaseInsensitiveMap<?> l = (LinkedCaseInsensitiveMap<?>) map.get(i);
			System.out.println("firstName"+l.get("first_name")+", LastName:"+l.get("last_name")+", contact:"+l.get("contact")+", password:"+l.get("password"));
			if(l.get("password").equals(password)) {
				mv.addObject("firstName", l.get("first_name"));
				mv.addObject("lastName", l.get("last_name"));
				mv.addObject("email", email);
				mv.addObject("contact", l.get("contact"));
				mv.addObject("password", password);
				mv.setViewName("dashboard");
				return mv;
			}
		}

		mv.setViewName("login"); //when no match found
		return mv;
	}
	
	@RequestMapping(path="/processsignup")
	public ModelAndView processSignUp(@RequestParam("firstName") String firstName,
			@RequestParam("lastName") String lastName,
			@RequestParam("email") String email,
			@RequestParam("contact") String contact,
			@RequestParam("password") String password, HttpServletRequest request) {
		System.out.println("FirstName : "+firstName);
		System.out.println("LastName : "+lastName);
		System.out.println("email : "+email);
		System.out.println("contact : "+contact);
		System.out.println("password : "+password);
//		model.addAttribute("name", "Yogendra Rajput G");
		//return "dashboard";
		request.getSession().setAttribute("sessionEmail", email);
		request.getSession().setAttribute("isLogin", "yes");
		
		ApplicationContext ctx=new ClassPathXmlApplicationContext("config.xml");  
		EmployeeDao dao=(EmployeeDao)ctx.getBean("edao");
		int status1=dao.saveEmployee(new Employee(firstName,lastName,email,contact,password));
		
	//	ModelAndView mv = new ModelAndView("redirect:" + "dash");
		ModelAndView mv = new ModelAndView();
		mv.addObject("firstName", firstName);
		mv.addObject("lastName", lastName);
		mv.addObject("email", email);
		mv.addObject("contact", contact);
		mv.addObject("password", password);
		mv.setViewName("dashboard");
		return mv;
	}
	
}
