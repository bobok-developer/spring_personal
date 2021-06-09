package site.levinni.mapper;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;
import site.levinni.domain.Criteria;
import site.levinni.domain.ReplyVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {
	@Autowired
	private ReplyMapper replyMapper;
	
	@Test
	public void testExist() {
		log.info(replyMapper);
	}
	
	@Test
	public void testInsert() {
		IntStream.range(1, 21).forEach(i-> {
			ReplyVO vo = new ReplyVO();
			vo.setBno(163878L);
			vo.setReply("jUnit에서 작성한 댓글 :: " + i);
			vo.setReplyer(i + "번째 댓글러");
			
			replyMapper.insert(vo);
		});
	}

	@Test
	public void testGetList() {
		replyMapper.getListWithPaging(new Criteria(2, 10), 163878L).forEach(log::info);
	}
	
	@Test
	public void testGetList2() {
		replyMapper.getListWithPaging(new Criteria(), 163878L).forEach(log::info);
	}
	
	@Test
	public void testGetListShowMore() {
		replyMapper.getListWithShowMore(null, 163938L).forEach(log::info);
	}
	@Test
	public void testUpdate() {
		ReplyVO vo = new ReplyVO();
		vo.setBno(163878L);
		vo.setReply("jUnit에서 수정한 댓글");
		vo.setReplyer("댓글러");
		vo.setRno(63L);
		log.info(replyMapper.update(vo));
	}
	@Test
	public void testRead() {
		log.info(replyMapper.read(61L));
	}
	@Test
	public void testDelete() {
		log.info(replyMapper.delete(70L));
	}
}
