package site.levinni.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"
	})
@Log4j
public class MemberControllerTests {
	@Autowired
	private WebApplicationContext ctx;
	private MockMvc mvc;
	@Autowired @Qualifier("BCryptPasswordEncoder")
	private PasswordEncoder encoder;
	
	@Before
	public void setup() {
		mvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void testSignUp() throws Exception {
		log.info(mvc.perform(MockMvcRequestBuilders.post("/member/signUp")
				.param("userid", "testcon")
				.param("userpw", "1234")
				.param("userName", "자바컨테")
				.param("email", "controll@example.com")
				.param("tel", "0102223333")
				)
				.andReturn()
				.getModelAndView()
				.getViewName());
	}
	
	@Test
	public void testModify() throws Exception {
		log.info(mvc.perform(MockMvcRequestBuilders.post("/member/modify")
				.param("userid", "testcon")
				.param("userpw", "12345")
				.param("userName", "자바컨테수정")
				.param("email", "controll@example.com")
				.param("tel", "0102223333")
				)
				.andReturn()
				.getModelAndView()
				.getViewName());
	}
	
	@Test
	public void testRemove() throws Exception {
		log.info(mvc.perform(MockMvcRequestBuilders.post("/member/remove")
				.param("userid", "testcon")
				)
				.andReturn()
				.getModelAndView()
				.getViewName());
	}
}
