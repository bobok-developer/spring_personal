package site.levinni.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import site.levinni.domain.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberServiceTests {
	@Autowired
	private MemberService service;
	
	@Test
	public void testJoin() {
		MemberVO memberVO = new MemberVO();
		
		memberVO.setUserid("test09");
		memberVO.setUserpw("pw09");
		memberVO.setUserName("테스트구");
		memberVO.setEmail("test09@example.com");
		memberVO.setTel("0103334444");
		
		service.join(memberVO);
		log.info("testJoin with 권한..." + memberVO);
	}
	
	@Test
	public void testModify() {
		MemberVO memberVO = new MemberVO();
		
		memberVO.setUserpw("admin99");
		memberVO.setUserName("킴스안과입니다");
		memberVO.setEmail("eyes@example.com");
		memberVO.setTel("0411112222");
		memberVO.setUserid("admin99");
		
		service.modify(memberVO);
		log.info("정보수정test..." + memberVO);
	}
	
	@Test
	public void testRemove() {
		MemberVO memberVO = new MemberVO();
		
		memberVO.setUserid("test01");
		
		service.remove(memberVO);
		log.info("회원탈퇴 test..");
	}
	
	@Test
	public void testRead() {
		service.read("admin99");
	}
}
