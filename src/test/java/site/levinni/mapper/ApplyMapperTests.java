package site.levinni.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import site.levinni.domain.ApplyVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class ApplyMapperTests {
	@Autowired
	private ApplyMapper mapper;
	
	@Test
	public void insertAppTests() { // 예약 신청
		ApplyVO applyVO = new ApplyVO();
		applyVO.setId("kimbo");
		applyVO.setName("홍길동");
		applyVO.setEmail("kimbo@example.com");
		applyVO.setTel("0102223333");
		applyVO.setWishDate("20210810");
		applyVO.setSubject("기타");
		mapper.insert(applyVO);
		log.info(applyVO);
	}
	
	@Test
	public void getMyAppTests() {
		
	}
	
}
