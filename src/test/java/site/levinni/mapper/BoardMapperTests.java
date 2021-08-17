package site.levinni.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import site.levinni.domain.BoardVO;
import site.levinni.domain.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class BoardMapperTests {
	@Autowired
	private BoardMapper mapper;
	
	@Test
	public void testGetTotalCount() {
		Criteria criteria = new Criteria();
		criteria.setType("TCW");
		criteria.setKeyword("의");
		log.info(criteria);
	}
	@Test
	public void testGetList() {
		mapper.getList().forEach(log::info);
	}
	@Test
	public void testGetListWithPaging() {
		mapper.getListWithPaging(new Criteria(1, 20)).forEach(log::info);
	}
	
/*	@Test
	public void testInsert() {
		BoardVO boardVO = new BoardVO();
		boardVO.setCategory("노안");
		boardVO.setTitle("노안 궁금증");
		boardVO.setContent("노안에 대한 궁금증");
		boardVO.setWriter("이순재");
		
		mapper.insert(boardVO);
		log.info(boardVO);
	}*/

	@Test
	public void testInsertSelectKey() {
		BoardVO boardVO = new BoardVO();
		boardVO.setCategory("노안");
		boardVO.setTitle("노안 궁금증");
		boardVO.setContent("노안에 대한 궁금증");
		boardVO.setWriter("이순재");
		
		mapper.insertSelectKey(boardVO);
		log.info(boardVO);
	}

	
	@Test
	public void testRead() {
		log.info(mapper.read(14L));
	}
	@Test
	public void testHitCount() {
		log.warn(mapper.updateHitCount(9L));
	}

	@Test
	public void testUpdate() {
		BoardVO boardVO = new BoardVO();
		boardVO.setTitle("노안 질문 수정");
		boardVO.setContent("노안 궁금증 수정 부분");
		boardVO.setWriter("이순재");
		boardVO.setBno(11L);
		boardVO.setSecret(true);
		
		log.info(mapper.update(boardVO));
	}
	
	@Test
	public void testDelete() {
		log.info(mapper.delete(12L));
	}
	
/*	@Test
	public void testSearch() {
		Criteria criteria = new Criteria();
		criteria.setType("TCW");
		criteria.setKeyword("'UNION (SELECT NULL, NULL, NULL,NULL,NULL,NULL FROM TBL_BOARD --");
		
		mapper.getListWithPaging(criteria);
		log.info(criteria);
	}*/
}
