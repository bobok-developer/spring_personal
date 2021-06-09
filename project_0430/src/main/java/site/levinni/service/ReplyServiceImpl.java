package site.levinni.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import site.levinni.domain.Criteria;
import site.levinni.domain.ReplyPageDTO;
import site.levinni.domain.ReplyVO;
import site.levinni.mapper.BoardMapper;
import site.levinni.mapper.ReplyMapper;

@Service
@AllArgsConstructor
@Log4j
@Transactional
public class ReplyServiceImpl implements ReplyService{
	private BoardMapper boardMapper;
	private ReplyMapper replymapper;
	@Override
	public int register(ReplyVO vo) {
		log.info("register :: " + vo);
		boardMapper.updateReplyCnt(vo.getBno(), 1);
		return replymapper.insert(vo);
	}

	@Override
	public ReplyVO get(Long rno) {
		// TODO Auto-generated method stub
		log.info("get :: " + rno);
		return replymapper.read(rno);
	}

	@Override
	public int modify(ReplyVO vo) {
		// TODO Auto-generated method stub
		log.info("modify :: " + vo);
		return replymapper.update(vo);
	}

	@Override
	public int remove(Long rno) {
		// TODO Auto-generated method stub
		log.info("remove :: " + rno);
		boardMapper.updateReplyCnt(get(rno).getBno(), -1);
		return replymapper.delete(rno);
	}

	@Override
	public List<ReplyVO> getList(Criteria cri, Long bno) {
		// TODO Auto-generated method stub
		log.info("getList :: " + cri + " :: " + bno);
		return replymapper.getListWithPaging(cri, bno);
	}

	@Override
	public ReplyPageDTO getListPage(Criteria cri, Long bno) {
		// TODO Auto-generated method stub
		return new ReplyPageDTO(cri, 
				replymapper.getTotalCount(cri, bno),
				replymapper.getListWithPaging(cri, bno));
		
	}

	@Override
	public List<ReplyVO> getListMore(Long rno, Long bno) {
		// TODO Auto-generated method stub
		return replymapper.getListWithShowMore(rno, bno);
	}
	

}
