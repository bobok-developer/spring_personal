package site.levinni.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import site.levinni.domain.BoardVO;
import site.levinni.domain.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Autowired
	private BoardService service;
	
	@Test
	public void testExist() {
		assertNotNull(service);
		log.info(service);
	}
	
	@Test
	public void testRegister() {
		BoardVO boardVO = new BoardVO();
		boardVO.setCategory("백내장");
		boardVO.setTitle("백내장에 대해서");
		boardVO.setContent("질문합니다.");
		boardVO.setWriter("김옥경");

		service.register(boardVO);
		log.info(boardVO);
	}
	
	@Test
	public void testGetList() {
		service.getList(new Criteria()).forEach(log::info);
	}

	
	@Test
	public void testModify() {
		BoardVO boardVO = new BoardVO();
		boardVO.setTitle("드림렌즈 가격 궁금해요(수정)");
		boardVO.setContent("궁금");
		boardVO.setWriter("김이랑");
		boardVO.setSecret(false);
		boardVO.setBno(9L);
		
		log.info(service.modify(boardVO));
	}
	
	@Test
	public void testGet() {
		log.info(service.get(9L));
	}
	
	@Test
	public void testRemove() {
		log.info(service.remove(13L));
	}
	
	@Test
	public void testGetTotal() {
		log.info(service.getTotal(new Criteria()));
	}
}
