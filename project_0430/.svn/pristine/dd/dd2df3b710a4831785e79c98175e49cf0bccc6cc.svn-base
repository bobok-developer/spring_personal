package site.levinni.mapper;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import site.levinni.domain.BoardVO;
import site.levinni.domain.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberMapperTests {
	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void test() {
		log.info(mapper);
	}
	
	@Test
	public void testRead() {
		String userid = "admin99";
		log.info(mapper.read(userid));
	}
	
	@Test
	public void testRegister() {
		MemberVO vo = new MemberVO();
		vo.setUserid("test08");
		vo.setUserpw("pw08");
		vo.setUserName("권한테");
		vo.setEmail("test08@example.com");
		vo.setTel("0102223333");
		mapper.register(vo);
		mapper.authorize(vo);
		log.info(vo);
	}
	
	@Test
	public void testUpdate() {
		MemberVO memberVO = new MemberVO();
		memberVO.setUserpw("admin99");
		memberVO.setUserName("킴스안과수정");
		memberVO.setEmail("eye@example.com");
		memberVO.setTel("0415555555");
		memberVO.setUserid("admin99");
		mapper.modify(memberVO);
		log.info(memberVO);
	}
	
	@Test
	public void testRemove() {
		MemberVO vo = new MemberVO();
		vo.setUserid("test04");
		mapper.remove(vo);
		log.info("회원remove test....");
	}
}
