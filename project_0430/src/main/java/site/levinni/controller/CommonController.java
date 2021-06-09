package site.levinni.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.log4j.Log4j;
import site.levinni.service.MemberService;

@Controller
@Log4j
public class CommonController {
	@Autowired @Qualifier("BCryptPasswordEncoder")
	private PasswordEncoder encoder;
	
	@GetMapping("accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("accessDenied..." + "auth:: " +auth);
		
		model.addAttribute("msg", "Access Denied(접근 거부)");
	}
	
	@GetMapping("member/customLogin")
	public void loginInput(String error, String logout, Model model) {
		log.info("error :: " + error);
		log.info("logout :: " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}
		if(logout != null) {
			model.addAttribute("logout", "Logout!");
		}
	}

	@GetMapping("customLogout")
	public void logoutGet() {
		log.info("custom logout");
	}
	@PostMapping("customLogout")
	public void logoutPost(HttpServletRequest req) {
		log.info("post custom logout");
		log.info(req.getHeader("referer"));
	}
}
