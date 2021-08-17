package site.levinni.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sun.org.apache.xpath.internal.operations.Mod;

import lombok.extern.log4j.Log4j;
import site.levinni.domain.MemberVO;
import site.levinni.security.domain.CustomUser;
import site.levinni.service.MemberService;

@Controller
@Log4j
@RequestMapping("/member/*")
public class MemberController {
	@Autowired
	private MemberService service;
	@Autowired @Qualifier("BCryptPasswordEncoder")
	private PasswordEncoder encoder;
	
	@GetMapping("signUp")
	public void signUpGet() {
		log.info("회원가입get");
	}
	
	@PostMapping("signUp")
	public String signUpPost(MemberVO memberVO) throws IOException {
		log.info("회원가입 post...." + memberVO);
		service.join(memberVO);
		return "redirect:/member/customLogin";
	}
	
	
	@GetMapping("prevModify")
	public void getPrevModify(Authentication auth) {
		log.info("prev 정보수정 get..auth:: " + auth);
		CustomUser user = (CustomUser) auth.getPrincipal();
//		user.getAuthorities()
		log.info(user.getAuthorities());
		
	}


	@PostMapping("prevModify")
	public String postPrevModify(Authentication auth, @RequestParam("userpw") String pw, RedirectAttributes rttr) {
		CustomUser user = (CustomUser) auth.getPrincipal();
		String userpw = user.getVo().getUserpw();
		if(encoder.matches(pw, userpw)) {
			log.info("pw 재확인 완료..");
			return "redirect:/member/modify";
		}
		else {
			rttr.addFlashAttribute("msg", "비밀번호를 다시 확인해 주세요.");
			return "redirect:/member/prevModify";
		}
	}
	
	
	@GetMapping("modify")
	public void modifyGet() {
		log.info("수정페이지 get..");
	}

	@PostMapping("modify")
	public String modifyPost(MemberVO memberVO, HttpServletRequest req) {
		log.info("정보수정 post..." + memberVO);
		service.modify(memberVO);
		req.getSession().invalidate();
		return "redirect:/";
	}
	
	@PostMapping("remove")
	public String remove(MemberVO memberVO, HttpServletRequest req) {
		service.remove(memberVO);
		req.getSession().invalidate();
		return "redirect:/";
	}
	
}
