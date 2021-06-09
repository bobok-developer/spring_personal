package site.levinni.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import site.levinni.domain.Criteria;
import site.levinni.domain.ReplyPageDTO;
import site.levinni.domain.ReplyVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyServiceTests {
	@Autowired
	private ReplyService service;
	
	@Test
	public void testRegister() {
		ReplyVO vo = new ReplyVO();
		vo.setBno(163878L);
		vo.setReply("서비스작성댓");
		vo.setReplyer("서비스작성자");
		log.info("register :: " + service.register(vo));
	}
	
	@Test
	public void testGet() {
		// TODO Auto-generated method stub
		Long rno = 61L;
		log.info("get :: " + service.get(rno));
	}

	@Test
	public void testModify() {
		ReplyVO vo = new ReplyVO();
		vo.setRno(71L);
		vo.setReply("서비스작성댓d");
		log.info("modify :: " + service.modify(vo));
	}

	@Test
	public void testRemove() {
		Long rno = 66L;
		log.info("remove :: " + service.remove(rno));
	}

	@Test
	public void testGetList() {
		Long bno = 163878L;
		service.getList(new Criteria(), bno).forEach(log::info);
	}
	
	@Test
	public void testGetListPage() {
		ReplyPageDTO dto = service.getListPage(new Criteria(11,10), 163878L);
		log.info(dto);
		log.info(dto.getCri());
		log.info(dto.getStartPage());
		log.info(dto.getTotal());
		log.info(dto.isPrev());
		log.info(dto.isNext());
		dto.getList().forEach(log::info);
	}
}
